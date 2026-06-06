import { useState } from "react";
import { useNavigate } from "react-router";
import { Plus, X, ArrowRight, Search, Check, HelpCircle, ChevronDown, ChevronUp } from "lucide-react";
import { ProductSelectionModal } from "./ProductSelectionModal";
import { InputHelpModal } from "./InputHelpModal";
import { useShoppingLists } from "../context/ShoppingListContext";
import { toast } from "sonner";

interface DetailedItem {
  id: string;
  name: string;
  brand: string;
  variant: string;
  quantity: number;
  weight?: number;
}

export function ShoppingListScreen() {
  const navigate = useNavigate();
  const { baseLists } = useShoppingLists();
  const [items, setItems] = useState<DetailedItem[]>([]);
  const [inputValue, setInputValue] = useState("");
  const [selectedProduct, setSelectedProduct] = useState<string | null>(null);
  const [showHelpModal, setShowHelpModal] = useState(false);
  const [productQueue, setProductQueue] = useState<string[]>([]);
  const [baseListsExpanded, setBaseListsExpanded] = useState(false);
  const [popularProductsExpanded, setPopularProductsExpanded] = useState(true);

  const suggestedProducts = [
    "גבינת קוטג'",
    "ממרח שוקולד",
    "חלב",
    "ביצים",
    "לחם",
    "חומוס",
    "טחינה",
    "יוגורט",
    "גבינה צהובה",
    "עגבניות",
  ];

  const parseMultipleProducts = (input: string): string[] => {
    // Split by newlines, commas, or semicolons
    const products = input
      .split(/[\n,;]+/)
      .map(p => p.trim())
      .filter(p => p.length > 0);

    return products;
  };

  const handleProductClick = (productName: string) => {
    setSelectedProduct(productName);
    setInputValue("");
  };

  const handleSubmitInput = () => {
    if (!inputValue.trim()) return;

    const products = parseMultipleProducts(inputValue);

    if (products.length === 0) return;

    if (products.length === 1) {
      // Single product - open modal immediately
      handleProductClick(products[0]);
    } else {
      // Multiple products - process the queue
      toast.success(`זיהינו ${products.length} מוצרים`, {
        description: "נתחיל להוסיף את המוצרים אחד אחד",
        duration: 2000,
      });

      setProductQueue(products);
      setInputValue("");

      // Open first product modal
      if (products[0]) {
        setSelectedProduct(products[0]);
      }
    }
  };

  const handleAddProduct = (details: {
    name: string;
    brand: string;
    variant: string;
    quantity: number;
    weight?: number;
  }) => {
    const newItem: DetailedItem = {
      id: Date.now().toString(),
      ...details,
    };
    setItems([...items, newItem]);

    // If there are more products in the queue, open the next one
    if (productQueue.length > 0) {
      const [nextProduct, ...remainingQueue] = productQueue;
      setProductQueue(remainingQueue);

      // Small delay before opening next modal
      setTimeout(() => {
        setSelectedProduct(nextProduct);
      }, 300);
    }
  };

  const handleRemoveItem = (id: string) => {
    setItems(items.filter((item) => item.id !== id));
  };

  const formatItemTitle = (item: DetailedItem) => {
    // Build complete product identity: name + brand + variant (if not "רגיל")
    const parts = [item.name];

    // Only add brand if it's not "כללי"
    if (item.brand && item.brand !== "כללי") {
      parts.push(item.brand);
    }

    if (item.variant && item.variant !== "רגיל") {
      parts.push(item.variant);
    }

    return parts.join(' ');
  };

  const formatItemMetadata = (item: DetailedItem) => {
    // Only show quantity or weight information
    if (item.weight) {
      return `משקל: ${item.weight} ק״ג`;
    } else {
      if (item.quantity === 1) {
        return `כמות: 1 יחידה`;
      } else {
        return `כמות: ${item.quantity} יחידות`;
      }
    }
  };

  const isProductAdded = (productName: string) => {
    return items.some(item => item.name === productName);
  };

  const handleAddBaseList = (baseListId: string) => {
    const baseList = baseLists.find(list => list.id === baseListId);
    if (!baseList) return;

    // Convert base list products to DetailedItem format
    const newItems: DetailedItem[] = baseList.products.map(product => {
      let weightValue: number | undefined = undefined;

      // Parse weight string if present
      if (product.weight) {
        const weightMatch = product.weight.match(/[\d.]+/);
        if (weightMatch) {
          weightValue = parseFloat(weightMatch[0]);
        }
      }

      return {
        id: `${Date.now()}-${Math.random()}`,
        name: product.name,
        brand: product.brand || "ללא מותג",
        variant: product.variant || "רגיל",
        quantity: product.quantity || 1,
        weight: weightValue,
      };
    });

    setItems(prev => [...prev, ...newItems]);

    toast.success(`נוספו ${newItems.length} מוצרים מ"${baseList.name}"`, {
      duration: 2000,
    });
  };

  return (
    <div className="min-h-screen bg-gray-50 flex flex-col" dir="rtl">
      <div className="bg-white px-6 py-4 shadow-sm flex items-center gap-4">
        <button onClick={() => navigate(-1)} className="p-2 hover:bg-gray-100 rounded-full">
          <ArrowRight className="w-5 h-5 text-gray-700" />
        </button>
        <h1 className="text-xl text-gray-900">יצירת רשימת קניות</h1>
      </div>

      <div className="flex-1 overflow-auto pb-24">
        <div className="p-6 space-y-6">
          <div className="bg-white rounded-2xl p-4 shadow-sm">
            <div className="flex items-center gap-3">
              <Search className="w-5 h-5 text-gray-400 shrink-0" />
              <textarea
                value={inputValue}
                onChange={(e) => setInputValue(e.target.value)}
                onKeyDown={(e) => {
                  if (e.key === "Enter" && !e.shiftKey && inputValue.trim()) {
                    e.preventDefault();
                    handleSubmitInput();
                  }
                }}
                placeholder="הוסיפו מוצר או רשימת מוצרים..."
                className="flex-1 outline-none text-right placeholder:text-gray-400 resize-none min-h-[24px] max-h-[120px]"
                rows={1}
                style={{ lineHeight: '24px' }}
              />
              <button
                onClick={() => setShowHelpModal(true)}
                className="text-gray-400 hover:text-emerald-500 transition-colors shrink-0"
              >
                <HelpCircle className="w-5 h-5" />
              </button>
              <button
                onClick={handleSubmitInput}
                disabled={!inputValue.trim()}
                className="bg-emerald-500 hover:bg-emerald-600 disabled:bg-gray-300 rounded-full p-2 transition-colors shrink-0"
              >
                <Plus className="w-4 h-4 text-white" />
              </button>
            </div>
          </div>

          {baseLists.length > 0 && (
            <div className="space-y-3">
              <button
                onClick={() => setBaseListsExpanded(!baseListsExpanded)}
                className="flex items-center gap-2 text-sm text-gray-500 hover:text-gray-700 transition-colors"
              >
                {baseListsExpanded ? (
                  <ChevronUp className="w-4 h-4" />
                ) : (
                  <ChevronDown className="w-4 h-4" />
                )}
                <span>רשימות בסיס</span>
              </button>

              {baseListsExpanded && (
                <div className="flex flex-wrap gap-2">
                  {baseLists.map((baseList) => (
                    <button
                      key={baseList.id}
                      onClick={() => handleAddBaseList(baseList.id)}
                      className="bg-white hover:bg-emerald-50 rounded-full px-4 py-2 text-sm shadow-sm transition-all flex items-center gap-2"
                    >
                      <span className="text-lg">{baseList.icon}</span>
                      <span className="text-gray-700">{baseList.name}</span>
                      <span className="text-xs text-gray-500">({baseList.products.length})</span>
                    </button>
                  ))}
                </div>
              )}
            </div>
          )}

          <div className="space-y-3">
            <button
              onClick={() => setPopularProductsExpanded(!popularProductsExpanded)}
              className="flex items-center gap-2 text-sm text-gray-500 hover:text-gray-700 transition-colors"
            >
              {popularProductsExpanded ? (
                <ChevronUp className="w-4 h-4" />
              ) : (
                <ChevronDown className="w-4 h-4" />
              )}
              <span>מוצרים פופולריים</span>
            </button>

            {popularProductsExpanded && (
              <div className="flex flex-wrap gap-2">
                {suggestedProducts.map((product) => {
                  const isAdded = isProductAdded(product);
                  return (
                    <button
                      key={product}
                      onClick={() => handleProductClick(product)}
                      className={`px-4 py-2 rounded-full text-sm shadow-sm transition-all flex items-center gap-2 ${
                        isAdded
                          ? "bg-emerald-50 text-emerald-700 border-2 border-emerald-200 hover:bg-emerald-100"
                          : "bg-white text-gray-700 hover:bg-emerald-50"
                      }`}
                    >
                      <span>{product}</span>
                      {isAdded && (
                        <Check className="w-4 h-4 text-emerald-600" strokeWidth={2.5} />
                      )}
                    </button>
                  );
                })}
              </div>
            )}
          </div>

          {items.length > 0 && (
            <div className="space-y-3">
              <h2 className="text-sm text-gray-500">המוצרים שלי ({items.length})</h2>
              {items.map((item) => (
                <div
                  key={item.id}
                  className="bg-white rounded-xl p-4 shadow-sm flex items-start gap-3"
                >
                  <div className="text-right flex-1 min-w-0">
                    <div className="text-gray-900 mb-1">{formatItemTitle(item)}</div>
                    <div className="text-sm text-gray-500">{formatItemMetadata(item)}</div>
                  </div>
                  <button
                    onClick={() => handleRemoveItem(item.id)}
                    className="p-1 hover:bg-gray-100 rounded-full shrink-0"
                  >
                    <X className="w-4 h-4 text-gray-400" />
                  </button>
                </div>
              ))}
            </div>
          )}
        </div>
      </div>

      <div className="fixed bottom-0 left-0 right-0 bg-white border-t border-gray-200 p-6">
        <button
          onClick={() => navigate("/comparison-results")}
          disabled={items.length === 0}
          className="w-full bg-emerald-500 hover:bg-emerald-600 disabled:bg-gray-300 text-white rounded-full py-4 shadow-lg transition-colors"
        >
          המשך להשוואת מחירים ({items.length} פריטים)
        </button>
      </div>

      {selectedProduct && (
        <ProductSelectionModal
          productName={selectedProduct}
          onClose={() => {
            setSelectedProduct(null);
            setProductQueue([]); // Clear queue if user cancels
          }}
          onAdd={handleAddProduct}
        />
      )}

      {showHelpModal && (
        <InputHelpModal onClose={() => setShowHelpModal(false)} />
      )}
    </div>
  );
}

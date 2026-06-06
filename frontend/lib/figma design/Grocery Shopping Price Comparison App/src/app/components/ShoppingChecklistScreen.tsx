import { useState } from "react";
import { useNavigate } from "react-router";
import { ArrowRight, CheckCircle2, Circle, Store, MapPin, Plus, X } from "lucide-react";
import { toast } from "sonner";
import { useShoppingLists } from "../context/ShoppingListContext";

interface ChecklistItem {
  id: string;
  name: string;
  brand: string;
  variant: string;
  quantity?: number;
  weight?: number;
  price: number;
  collected: boolean;
  category: string;
}

export function ShoppingChecklistScreen() {
  const navigate = useNavigate();
  const { savedLists, updateList } = useShoppingLists();
  const [items, setItems] = useState<ChecklistItem[]>([
    { id: "1", name: "גבינת קוטג'", brand: "תנובה", variant: "5% שומן", quantity: 2, price: 12.90, collected: false, category: "מוצרי חלב" },
    { id: "2", name: "ממרח שוקולד", brand: "השוקולדן", variant: "400 גרם", quantity: 1, price: 18.50, collected: false, category: "מתוקים" },
    { id: "3", name: "חלב", brand: "תנובה", variant: "3% שומן", quantity: 2, price: 6.90, collected: false, category: "מוצרי חלב" },
    { id: "4", name: "ביצים", brand: "משק יצחק", variant: "מידה M", quantity: 1, price: 16.90, collected: false, category: "ביצים ומוצרי חלב" },
    { id: "5", name: "לחם", brand: "ברמן", variant: "פרוס", quantity: 1, price: 8.50, collected: false, category: "מאפים" },
    { id: "6", name: "עגבניות", brand: "מקומי", variant: "עגבניות שרי", weight: 1.5, price: 12.00, collected: false, category: "ירקות" },
  ]);
  const [showAddInput, setShowAddInput] = useState(false);
  const [newProductInput, setNewProductInput] = useState("");

  const toggleItem = (id: string) => {
    setItems(items.map(item =>
      item.id === id ? { ...item, collected: !item.collected } : item
    ));
  };

  const removeItem = (id: string, e: React.MouseEvent) => {
    e.stopPropagation(); // Prevent toggling checkbox when clicking remove
    const itemToRemove = items.find(item => item.id === id);
    setItems(items.filter(item => item.id !== id));

    if (itemToRemove) {
      toast.success("המוצר הוסר", {
        description: `${itemToRemove.name} הוסר מהרשימה`,
        duration: 2000,
      });
    }
  };

  const handleAddProduct = () => {
    if (!newProductInput.trim()) return;

    // Simple add - in a real app, this would open the product selection modal
    const newItem: ChecklistItem = {
      id: Date.now().toString(),
      name: newProductInput.trim(),
      brand: "כללי",
      variant: "",
      quantity: 1,
      price: 0,
      collected: false,
      category: "אחר"
    };

    setItems([...items, newItem]);
    setNewProductInput("");
    setShowAddInput(false);

    toast.success("המוצר נוסף", {
      description: `${newProductInput.trim()} נוסף לרשימה`,
      duration: 2000,
    });
  };

  const collectedCount = items.filter(item => item.collected).length;
  const totalItems = items.length;
  const progress = (collectedCount / totalItems) * 100;
  const totalPrice = items.reduce((sum, item) => sum + (item.price * (item.quantity || 1)), 0);
  const collectedPrice = items.filter(item => item.collected).reduce((sum, item) => sum + (item.price * (item.quantity || 1)), 0);

  const handleCompleteList = () => {
    // In a real app, we'd get the actual list ID from route params
    // For now, mark the first uncompleted list as completed
    const currentList = savedLists.find(list => !list.completed);

    if (currentList) {
      updateList(currentList.id, { completed: true });

      toast.success("הרשימה הושלמה!", {
        description: "הקניות הסתיימו בהצלחה",
        duration: 3000,
      });

      setTimeout(() => {
        navigate("/my-list");
      }, 500);
    } else {
      // Fallback if no list found
      navigate("/my-list");
    }
  };

  const formatItemTitle = (item: ChecklistItem) => {
    // Only show brand if it's not "כללי"
    if (item.brand && item.brand !== "כללי") {
      return `${item.name} ${item.brand}`;
    }
    return item.name;
  };

  const formatItemQuantityBadge = (item: ChecklistItem) => {
    if (item.weight) {
      return `${item.weight} ק״ג`;
    } else if (item.quantity === 1) {
      return `×1`;
    } else {
      return `×${item.quantity}`;
    }
  };

  return (
    <div className="min-h-screen bg-amber-50" dir="rtl" style={{ backgroundImage: 'repeating-linear-gradient(transparent, transparent 31px, #e5e7eb 31px, #e5e7eb 32px)' }}>
      <div className="bg-emerald-500 text-white px-6 pt-12 pb-6 shadow-md">
        <button
          onClick={() => navigate(-1)}
          className="p-2 hover:bg-emerald-600 rounded-full mb-4"
        >
          <ArrowRight className="w-5 h-5" />
        </button>
        <h1 className="text-2xl mb-3">רשימת קניות</h1>

        <div className="bg-white/20 backdrop-blur-sm rounded-xl p-4 space-y-3">
          <div className="flex items-center justify-between text-sm">
            <div className="flex items-center gap-2">
              <Store className="w-4 h-4" />
              <span>רמי לוי - תל אביב</span>
            </div>
            <div className="flex items-center gap-2">
              <MapPin className="w-4 h-4" />
              <span>דיזנגוף 123</span>
            </div>
          </div>

          <div className="space-y-2">
            <div className="flex justify-between text-sm">
              <span>התקדמות</span>
              <span className="font-semibold">{collectedCount} מתוך {totalItems}</span>
            </div>
            <div className="bg-white/30 rounded-full h-2 overflow-hidden">
              <div
                className="bg-white h-full transition-all duration-300 ease-out rounded-full"
                style={{ width: `${progress}%` }}
              />
            </div>
          </div>
        </div>
      </div>

      <div className="px-6 pt-4">
        <button
          onClick={() => setShowAddInput(!showAddInput)}
          className="bg-white hover:bg-gray-50 rounded-xl px-4 py-3 shadow-sm flex items-center gap-2 transition-colors w-full border border-gray-200"
        >
          <span className="text-gray-700 text-sm flex-1 text-right">הוסף מוצר</span>
          <Plus className="w-4 h-4 text-emerald-600" />
        </button>

        {showAddInput && (
          <div className="mt-3 bg-white rounded-xl p-3 shadow-sm border border-gray-200">
            <div className="flex items-center gap-2">
              <input
                type="text"
                value={newProductInput}
                onChange={(e) => setNewProductInput(e.target.value)}
                onKeyDown={(e) => {
                  if (e.key === "Enter") {
                    handleAddProduct();
                  }
                }}
                placeholder="שם המוצר..."
                className="flex-1 bg-gray-50 border border-gray-200 rounded-lg px-3 py-2 text-gray-900 text-sm outline-none focus:border-emerald-500 text-right transition-colors"
                autoFocus
              />
              <button
                onClick={handleAddProduct}
                disabled={!newProductInput.trim()}
                className="bg-emerald-500 hover:bg-emerald-600 disabled:bg-gray-300 text-white rounded-lg px-4 py-2 text-sm transition-colors"
              >
                הוסף
              </button>
            </div>
          </div>
        )}
      </div>

      <div className="px-6 pt-4 pb-40 space-y-2">
        {items.length === 0 ? (
          <div className="text-center py-12">
            <p className="text-gray-500 mb-4">הרשימה ריקה</p>
            <button
              onClick={() => setShowAddInput(true)}
              className="text-emerald-600 hover:text-emerald-700 text-sm"
            >
              הוסף מוצר ראשון
            </button>
          </div>
        ) : (
          items.map((item) => (
            <div
              key={item.id}
              className={`bg-white rounded-lg p-3 shadow-sm border-r-4 transition-all ${
                item.collected
                  ? 'border-emerald-500 opacity-60'
                  : 'border-amber-400 hover:shadow-md'
              }`}
              style={{ marginTop: '8px' }}
            >
              <div className="flex items-center gap-3">
                {/* Main clickable area - CENTER */}
                <div
                  onClick={() => toggleItem(item.id)}
                  className="flex items-center gap-3 flex-1 cursor-pointer min-w-0"
                >
                  {/* Checkbox - LEFT SIDE */}
                  {item.collected ? (
                    <CheckCircle2 className="w-5 h-5 text-emerald-500 shrink-0" />
                  ) : (
                    <Circle className="w-5 h-5 text-gray-300 shrink-0" />
                  )}

                  {/* Product details - CENTER */}
                  <div className="flex-1 min-w-0 text-right">
                    <div className={`transition-all ${item.collected ? 'line-through text-gray-400' : 'text-gray-900'}`}>
                      {formatItemTitle(item)}
                    </div>
                    {!item.collected && item.price > 0 && (
                      <div className="text-xs text-gray-400 mt-0.5">
                        ₪{(item.price * (item.quantity || 1)).toFixed(2)}
                      </div>
                    )}
                  </div>

                  {/* Quantity badge - RIGHT of product name */}
                  <div className={`text-xs px-2 py-1 rounded-md shrink-0 ${
                    item.collected
                      ? 'bg-gray-100 text-gray-400'
                      : 'bg-emerald-100 text-emerald-700 font-medium'
                  }`}>
                    {formatItemQuantityBadge(item)}
                  </div>
                </div>

                {/* Remove X button - RIGHT SIDE */}
                <button
                  onClick={(e) => removeItem(item.id, e)}
                  className="p-1.5 hover:bg-red-50 rounded-full transition-colors shrink-0"
                >
                  <X className="w-4 h-4 text-gray-400 hover:text-red-500" />
                </button>
              </div>
            </div>
          ))
        )}
      </div>

      <div className="fixed bottom-0 left-0 right-0 bg-white border-t border-gray-200 shadow-lg">
        <div className="px-6 py-4">
          <div className="flex justify-between items-center mb-4">
            <div className="text-left">
              <div className="text-sm text-gray-500">נאספו</div>
              <div className="text-lg text-emerald-600 font-semibold">
                {collectedCount} / {totalItems} פריטים
              </div>
            </div>
            <div className="text-right">
              <div className="text-sm text-gray-500">סה"כ משוער</div>
              <div className="text-2xl text-gray-900 font-semibold">₪{totalPrice.toFixed(2)}</div>
            </div>
          </div>

          {collectedCount === totalItems ? (
            <button
              onClick={handleCompleteList}
              className="w-full bg-emerald-500 hover:bg-emerald-600 text-white rounded-full py-4 shadow-lg transition-colors flex items-center justify-center gap-2"
            >
              <CheckCircle2 className="w-5 h-5" />
              <span>סיימתי קניות - לסיכום</span>
            </button>
          ) : (
            <div className="text-center text-gray-500 text-sm py-3">
              סמנו את כל הפריטים שאספתם
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

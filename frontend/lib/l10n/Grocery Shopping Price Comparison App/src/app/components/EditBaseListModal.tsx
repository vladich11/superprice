import { useState, useEffect } from "react";
import { X, Plus, Check, Trash2 } from "lucide-react";
import { useShoppingLists } from "../context/ShoppingListContext";
import type { ProductItem } from "../context/ShoppingListContext";
import { ProductSelectionModal } from "./ProductSelectionModal";
import { toast } from "sonner";

interface EditBaseListModalProps {
  baseListId: string;
  onClose: () => void;
}

const EMOJI_OPTIONS = ["🥛", "🧼", "🍗", "🍞", "🥗", "🍎", "🧃", "🍕", "🥫", "🧊"];

export function EditBaseListModal({ baseListId, onClose }: EditBaseListModalProps) {
  const { baseLists, updateBaseList, removeBaseList } = useShoppingLists();
  const baseList = baseLists.find(list => list.id === baseListId);

  const [listName, setListName] = useState(baseList?.name || "");
  const [selectedIcon, setSelectedIcon] = useState(baseList?.icon || EMOJI_OPTIONS[0]);
  const [products, setProducts] = useState<ProductItem[]>(baseList?.products || []);
  const [productInput, setProductInput] = useState("");
  const [showProductModal, setShowProductModal] = useState(false);
  const [currentProductName, setCurrentProductName] = useState("");

  useEffect(() => {
    if (baseList) {
      setListName(baseList.name);
      setSelectedIcon(baseList.icon || EMOJI_OPTIONS[0]);
      setProducts(baseList.products);
    }
  }, [baseList]);

  if (!baseList) {
    onClose();
    return null;
  }

  const handleAddProduct = () => {
    if (!productInput.trim()) return;

    setCurrentProductName(productInput.trim());
    setShowProductModal(true);
  };

  const handleProductSelected = (productDetails: {
    name: string;
    brand: string;
    variant: string;
    quantity: number;
    weight?: number;
  }) => {
    const newProduct: ProductItem = {
      id: Date.now().toString(),
      name: productDetails.name,
      brand: productDetails.brand,
      variant: productDetails.variant,
      quantity: productDetails.quantity,
      weight: productDetails.weight ? `${productDetails.weight} ק״ג` : undefined,
    };
    setProducts((prev) => [...prev, newProduct]);
    setProductInput("");
    setShowProductModal(false);
  };

  const handleRemoveProduct = (id: string) => {
    setProducts((prev) => prev.filter((p) => p.id !== id));
  };

  const handleSave = () => {
    if (!listName.trim()) {
      toast.error("נא להזין שם לרשימת הבסיס");
      return;
    }

    if (products.length === 0) {
      toast.error("נא להוסיף לפחות מוצר אחד");
      return;
    }

    updateBaseList(baseListId, {
      name: listName,
      icon: selectedIcon,
      products,
    });

    toast.success("רשימת הבסיס עודכנה בהצלחה!", {
      description: `"${listName}" עם ${products.length} מוצרים`,
    });

    onClose();
  };

  const handleDelete = () => {
    if (confirm(`האם למחוק את רשימת הבסיס "${listName}"?`)) {
      removeBaseList(baseListId);
      toast.success("רשימת הבסיס נמחקה");
      onClose();
    }
  };

  return (
    <div className="fixed inset-0 bg-black/50 flex items-end justify-center z-50" onClick={onClose} dir="rtl">
      <div
        className="bg-white rounded-t-3xl w-full max-w-md max-h-[85vh] overflow-y-auto pb-8 animate-slide-up"
        onClick={(e) => e.stopPropagation()}
      >
        <div className="sticky top-0 bg-white border-b border-gray-200 px-6 py-4 flex items-center justify-between z-10">
          <button onClick={onClose} className="p-1 hover:bg-gray-100 rounded-full transition-colors">
            <X className="w-5 h-5 text-gray-400" />
          </button>
          <h2 className="text-lg text-gray-900">ערוך רשימת בסיס</h2>
          <button
            onClick={handleDelete}
            className="p-1 hover:bg-red-50 rounded-full transition-colors"
          >
            <Trash2 className="w-5 h-5 text-red-500" />
          </button>
        </div>

        <div className="px-6 py-6 space-y-6">
          <div>
            <label className="block text-right text-gray-700 mb-2">שם רשימת הבסיס</label>
            <input
              type="text"
              value={listName}
              onChange={(e) => setListName(e.target.value)}
              placeholder='לדוגמה: "מוצרי חלב", "מוצרי ניקיון"'
              className="w-full px-4 py-3 border border-gray-300 rounded-xl text-right focus:outline-none focus:ring-2 focus:ring-emerald-500"
            />
          </div>

          <div>
            <label className="block text-right text-gray-700 mb-3">בחר אייקון</label>
            <div className="grid grid-cols-5 gap-3">
              {EMOJI_OPTIONS.map((emoji) => (
                <button
                  key={emoji}
                  onClick={() => setSelectedIcon(emoji)}
                  className={`text-3xl p-3 rounded-xl border-2 transition-all ${
                    selectedIcon === emoji
                      ? "border-emerald-500 bg-emerald-50"
                      : "border-gray-200 hover:border-gray-300"
                  }`}
                >
                  {emoji}
                </button>
              ))}
            </div>
          </div>

          <div>
            <label className="block text-right text-gray-700 mb-2">הוסף מוצרים</label>
            <div className="flex gap-2">
              <button
                onClick={handleAddProduct}
                disabled={!productInput.trim()}
                className="bg-emerald-500 hover:bg-emerald-600 disabled:bg-gray-300 text-white rounded-full p-3 transition-colors"
              >
                <Plus className="w-5 h-5" />
              </button>
              <input
                type="text"
                value={productInput}
                onChange={(e) => setProductInput(e.target.value)}
                onKeyDown={(e) => {
                  if (e.key === "Enter") handleAddProduct();
                }}
                placeholder="הקלד שם מוצר"
                className="flex-1 px-4 py-3 border border-gray-300 rounded-xl text-right focus:outline-none focus:ring-2 focus:ring-emerald-500"
              />
            </div>
          </div>

          {products.length > 0 && (
            <div className="space-y-2">
              <h4 className="text-sm text-gray-600 text-right">מוצרים ברשימה ({products.length}):</h4>
              {products.map((product) => (
                <div
                  key={product.id}
                  className="bg-gray-50 rounded-xl p-3 flex items-center justify-between gap-3"
                >
                  <button
                    onClick={() => handleRemoveProduct(product.id)}
                    className="p-1 hover:bg-gray-200 rounded-full transition-colors"
                  >
                    <X className="w-4 h-4 text-gray-500" />
                  </button>
                  <div className="flex-1 text-right">
                    <div className="text-gray-900">
                      {product.brand && `${product.brand} - `}
                      {product.name}
                      {product.variant && ` ${product.variant}`}
                    </div>
                    {(product.quantity || product.weight) && (
                      <div className="text-xs text-gray-500 mt-0.5">
                        {product.quantity && `×${product.quantity}`}
                        {product.weight && product.weight}
                      </div>
                    )}
                  </div>
                </div>
              ))}
            </div>
          )}

          <button
            onClick={handleSave}
            disabled={!listName.trim() || products.length === 0}
            className="w-full bg-emerald-500 hover:bg-emerald-600 disabled:bg-gray-300 text-white rounded-full py-3 transition-colors flex items-center justify-center gap-2"
          >
            <Check className="w-5 h-5" />
            <span>שמור שינויים</span>
          </button>
        </div>
      </div>

      {showProductModal && (
        <ProductSelectionModal
          productName={currentProductName}
          onClose={() => setShowProductModal(false)}
          onAdd={handleProductSelected}
        />
      )}
    </div>
  );
}

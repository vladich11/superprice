import { useState } from "react";
import { X, ChevronLeft, Plus, ListChecks } from "lucide-react";
import { toast } from "sonner";
import { useNavigate } from "react-router";
import { useShoppingLists } from "../context/ShoppingListContext";

interface SaveToListModalProps {
  supermarketName: string;
  itemCount: number;
  totalPrice: number;
  onClose: () => void;
}

const supermarketIcons: Record<string, string> = {
  "רמי לוי": "🛒",
  "שופרסל": "🏪",
  "יינות בירן": "🛍️",
  "טיב טעם": "🏬",
};

export function SaveToListModal({ supermarketName, itemCount, totalPrice, onClose }: SaveToListModalProps) {
  const navigate = useNavigate();
  const { savedLists, addList } = useShoppingLists();

  // If no saved lists exist, skip choice and go directly to "new"
  const hasExistingLists = savedLists.length > 0;
  const initialStep = hasExistingLists ? "choice" : "new";

  const [step, setStep] = useState<"choice" | "existing" | "new">(initialStep);
  const [newListName, setNewListName] = useState("");

  const handleAddToExisting = (listId: string) => {
    const list = savedLists.find(l => l.id === listId);

    // In a real app, merge items into existing list
    // For now, just show success message
    toast.success("הסל נוסף לרשימה", {
      description: `${itemCount} מוצרים נוספו ל"${list?.title}"`,
      duration: 3000,
    });

    onClose();
    setTimeout(() => {
      navigate("/my-list");
    }, 500);
  };

  const handleCreateNew = () => {
    if (!newListName.trim()) {
      toast.error("נא להזין שם לרשימה");
      return;
    }

    saveListWithName(newListName.trim());
  };

  const handleContinueWithoutName = () => {
    // Generate default name
    const defaultName = `קניות ב־${supermarketName}`;
    saveListWithName(defaultName);
  };

  const saveListWithName = (listName: string) => {
    // Add new list to saved lists
    addList({
      title: listName,
      supermarket: supermarketName,
      itemCount,
      totalPrice,
      icon: supermarketIcons[supermarketName] || "🛒",
    });

    toast.success("הרשימה נשמרה בהצלחה", {
      description: `"${listName}" נוצרה עם ${itemCount} מוצרים`,
      duration: 3000,
    });

    onClose();
    setTimeout(() => {
      navigate("/my-list");
    }, 500);
  };

  return (
    <div className="fixed inset-0 bg-black/50 flex items-end justify-center z-50" onClick={onClose} dir="rtl">
      <div
        className="bg-white rounded-t-3xl w-full max-w-md max-h-[80vh] overflow-y-auto pb-8 animate-slide-up"
        onClick={(e) => e.stopPropagation()}
      >
        {/* Header */}
        <div className="sticky top-0 bg-white border-b border-gray-200 px-6 py-4 flex items-center justify-between">
          {step !== "choice" && hasExistingLists ? (
            <button
              onClick={() => setStep("choice")}
              className="p-1 hover:bg-gray-100 rounded-full transition-colors"
            >
              <ChevronLeft className="w-5 h-5 text-gray-400 rotate-180" />
            </button>
          ) : (
            <button onClick={onClose} className="p-1 hover:bg-gray-100 rounded-full transition-colors">
              <X className="w-5 h-5 text-gray-400" />
            </button>
          )}
          <h2 className="text-lg text-gray-900">שמירת הרשימה</h2>
          <div className="w-7"></div>
        </div>

        {/* Supermarket info */}
        <div className="px-6 pt-4 pb-5 bg-emerald-50 border-b border-emerald-100">
          <div className="flex items-center justify-between text-sm">
            <div className="text-emerald-900 font-medium">{supermarketName}</div>
            <div className="text-emerald-700">{itemCount} מוצרים</div>
          </div>
          <div className="text-2xl text-emerald-900 font-semibold mt-2">₪{totalPrice.toFixed(2)}</div>
        </div>

        {/* Choice step */}
        {step === "choice" && (
          <div className="px-6 py-6 space-y-3">
            <button
              onClick={() => setStep("existing")}
              className="w-full bg-white border-2 border-gray-200 hover:border-emerald-500 rounded-xl p-5 transition-colors text-right flex items-center gap-4"
            >
              <div className="flex-1">
                <h3 className="text-gray-900 font-medium mb-1">הוסף לרשימה קיימת</h3>
                <p className="text-sm text-gray-500">בחר רשימה מהרשימות השמורות שלך</p>
              </div>
              <div className="bg-emerald-100 rounded-full p-3">
                <ListChecks className="w-5 h-5 text-emerald-600" />
              </div>
            </button>

            <button
              onClick={() => setStep("new")}
              className="w-full bg-white border-2 border-gray-200 hover:border-emerald-500 rounded-xl p-5 transition-colors text-right flex items-center gap-4"
            >
              <div className="flex-1">
                <h3 className="text-gray-900 font-medium mb-1">צור רשימה חדשה</h3>
                <p className="text-sm text-gray-500">שמור את הסל כרשימת קניות חדשה</p>
              </div>
              <div className="bg-emerald-100 rounded-full p-3">
                <Plus className="w-5 h-5 text-emerald-600" />
              </div>
            </button>
          </div>
        )}

        {/* Add to existing list step */}
        {step === "existing" && (
          <div className="px-6 py-6 space-y-3">
            <h3 className="text-sm text-gray-600 mb-3">בחר רשימה</h3>
            {savedLists.length === 0 ? (
              <div className="text-center py-8">
                <p className="text-gray-500 mb-4">אין לך רשימות שמורות</p>
                <button
                  onClick={() => setStep("new")}
                  className="text-emerald-600 hover:text-emerald-700"
                >
                  צור רשימה חדשה
                </button>
              </div>
            ) : (
              savedLists.map((list) => (
                <button
                  key={list.id}
                  onClick={() => handleAddToExisting(list.id)}
                  className="w-full bg-white border-2 border-gray-200 hover:border-emerald-500 rounded-xl p-4 transition-colors text-right"
                >
                  <div className="flex items-center justify-between mb-2">
                    <h4 className="text-gray-900 font-medium">{list.title}</h4>
                    <ChevronLeft className="w-5 h-5 text-gray-400 rotate-180" />
                  </div>
                  <div className="flex items-center gap-3 text-sm text-gray-500">
                    <span>{list.itemCount} פריטים</span>
                    <span>•</span>
                    <span>{list.createdDate}</span>
                  </div>
                </button>
              ))
            )}
          </div>
        )}

        {/* Create new list step */}
        {step === "new" && (
          <div className="px-6 py-6 space-y-5">
            {!hasExistingLists && (
              <div className="text-right mb-4">
                <p className="text-gray-600 text-sm leading-relaxed">
                  עדיין אין לך רשימות שמורות. אפשר ליצור רשימה חדשה ולשמור אליה את הסל.
                </p>
              </div>
            )}

            <div className="space-y-3">
              <label className="text-sm text-gray-600">שם הרשימה</label>
              <input
                type="text"
                value={newListName}
                onChange={(e) => setNewListName(e.target.value)}
                placeholder="לדוגמה: קניות שבועיות"
                className="w-full bg-white border-2 border-gray-200 focus:border-emerald-500 rounded-xl px-4 py-3 text-right outline-none transition-colors"
                autoFocus
              />
            </div>

            <div className="bg-gray-50 rounded-xl p-4 space-y-2 text-sm">
              <div className="flex justify-between">
                <span className="text-gray-900">{supermarketName}</span>
                <span className="text-gray-600">סופרמרקט</span>
              </div>
              <div className="flex justify-between">
                <span className="text-gray-900">{itemCount}</span>
                <span className="text-gray-600">מספר מוצרים</span>
              </div>
              <div className="flex justify-between">
                <span className="text-gray-900">₪{totalPrice.toFixed(2)}</span>
                <span className="text-gray-600">סכום משוער</span>
              </div>
            </div>

            <div className="space-y-3">
              <button
                onClick={handleCreateNew}
                disabled={!newListName.trim()}
                className="w-full bg-emerald-500 hover:bg-emerald-600 disabled:bg-gray-300 text-white rounded-full py-4 shadow-lg transition-colors"
              >
                שמור רשימה
              </button>

              <button
                onClick={handleContinueWithoutName}
                className="w-full bg-white border-2 border-gray-200 text-gray-700 hover:bg-gray-50 rounded-full py-3 transition-colors"
              >
                המשך בלי שם
              </button>

              <button
                onClick={onClose}
                className="w-full text-gray-500 hover:text-gray-700 py-2 transition-colors text-sm"
              >
                ביטול
              </button>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}

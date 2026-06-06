import { useState } from "react";
import { X, CheckCircle, Circle } from "lucide-react";
import { toast } from "sonner";
import { useNavigate } from "react-router";
import { useShoppingLists, SavedShoppingList } from "../context/ShoppingListContext";

interface MergeListsModalProps {
  onClose: () => void;
}

export function MergeListsModal({ onClose }: MergeListsModalProps) {
  const navigate = useNavigate();
  const { savedLists, addList } = useShoppingLists();
  const [selectedLists, setSelectedLists] = useState<Set<string>>(new Set());
  const [step, setStep] = useState<"select" | "name">("select");
  const [mergedListName, setMergedListName] = useState("");

  const activeLists = savedLists.filter(list => !list.completed);

  const toggleList = (id: string) => {
    const newSelected = new Set(selectedLists);
    if (newSelected.has(id)) {
      newSelected.delete(id);
    } else {
      newSelected.add(id);
    }
    setSelectedLists(newSelected);
  };

  const handleContinue = () => {
    if (selectedLists.size < 2) {
      toast.error("יש לבחור לפחות 2 רשימות למיזוג");
      return;
    }
    setStep("name");
  };

  const handleMerge = () => {
    if (!mergedListName.trim()) {
      toast.error("נא להזין שם לרשימה");
      return;
    }

    // Get selected lists
    const listsToMerge = savedLists.filter(list => selectedLists.has(list.id));

    // Calculate merged totals (simplified - in real app would merge actual products)
    const totalItems = listsToMerge.reduce((sum, list) => sum + list.itemCount, 0);
    const totalPrice = listsToMerge.reduce((sum, list) => sum + list.totalPrice, 0);

    // Use the most common supermarket
    const supermarketCounts: Record<string, number> = {};
    listsToMerge.forEach(list => {
      supermarketCounts[list.supermarket] = (supermarketCounts[list.supermarket] || 0) + 1;
    });
    const mostCommonSupermarket = Object.entries(supermarketCounts).sort((a, b) => b[1] - a[1])[0][0];

    // Create merged list
    addList({
      title: mergedListName.trim(),
      supermarket: mostCommonSupermarket,
      itemCount: totalItems,
      totalPrice,
      icon: "🛒",
    });

    toast.success("הרשימות אוחדו בהצלחה", {
      description: `${selectedLists.size} רשימות אוחדו ל"${mergedListName}"`,
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
        className="bg-white rounded-t-3xl w-full max-w-md max-h-[85vh] overflow-y-auto pb-8 animate-slide-up"
        onClick={(e) => e.stopPropagation()}
      >
        <div className="sticky top-0 bg-white border-b border-gray-200 px-6 py-4 flex items-center justify-between">
          <button onClick={onClose} className="p-1 hover:bg-gray-100 rounded-full transition-colors">
            <X className="w-5 h-5 text-gray-400" />
          </button>
          <h2 className="text-lg text-gray-900">
            {step === "select" ? "מזג רשימות" : "שם הרשימה המאוחדת"}
          </h2>
          <div className="w-7"></div>
        </div>

        {step === "select" ? (
          <div className="px-6 py-6 space-y-5">
            <p className="text-gray-600 text-sm text-right">
              בחר לפחות 2 רשימות לאיחוד. כל המוצרים יאוחדו לרשימה אחת.
            </p>

            <div className="space-y-3">
              {activeLists.map((list) => {
                const isSelected = selectedLists.has(list.id);
                return (
                  <button
                    key={list.id}
                    onClick={() => toggleList(list.id)}
                    className={`w-full bg-white border-2 rounded-xl p-4 transition-all text-right ${
                      isSelected ? "border-emerald-500 bg-emerald-50" : "border-gray-200 hover:border-gray-300"
                    }`}
                  >
                    <div className="flex items-center justify-between mb-2">
                      <div className="text-right flex-1">
                        <h3 className={`font-medium ${isSelected ? "text-emerald-700" : "text-gray-900"}`}>
                          {list.title}
                        </h3>
                        <div className="text-sm text-gray-500 mt-1">
                          {list.supermarket} • {list.itemCount} פריטים
                        </div>
                      </div>
                      {isSelected ? (
                        <CheckCircle className="w-5 h-5 text-emerald-500 shrink-0" />
                      ) : (
                        <Circle className="w-5 h-5 text-gray-300 shrink-0" />
                      )}
                    </div>
                  </button>
                );
              })}
            </div>

            <button
              onClick={handleContinue}
              disabled={selectedLists.size < 2}
              className="w-full bg-emerald-500 hover:bg-emerald-600 disabled:bg-gray-300 text-white rounded-full py-4 shadow-lg transition-colors"
            >
              המשך ({selectedLists.size} נבחרו)
            </button>
          </div>
        ) : (
          <div className="px-6 py-6 space-y-5">
            <div className="bg-emerald-50 rounded-xl p-4 border border-emerald-100">
              <p className="text-emerald-800 text-sm text-right">
                {selectedLists.size} רשימות נבחרו למיזוג
              </p>
            </div>

            <div className="space-y-3">
              <label className="text-sm text-gray-600">שם הרשימה המאוחדת</label>
              <input
                type="text"
                value={mergedListName}
                onChange={(e) => setMergedListName(e.target.value)}
                placeholder="לדוגמה: קניות משולבות"
                className="w-full bg-white border-2 border-gray-200 focus:border-emerald-500 rounded-xl px-4 py-3 text-right outline-none transition-colors"
                autoFocus
              />
            </div>

            <div className="space-y-3">
              <button
                onClick={handleMerge}
                disabled={!mergedListName.trim()}
                className="w-full bg-emerald-500 hover:bg-emerald-600 disabled:bg-gray-300 text-white rounded-full py-4 shadow-lg transition-colors"
              >
                שמור רשימה מאוחדת
              </button>

              <button
                onClick={() => setStep("select")}
                className="w-full text-gray-500 hover:text-gray-700 py-2 transition-colors text-sm"
              >
                חזרה
              </button>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}

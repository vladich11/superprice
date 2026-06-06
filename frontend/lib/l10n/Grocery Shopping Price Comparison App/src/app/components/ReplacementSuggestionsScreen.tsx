import { useState } from "react";
import { useNavigate } from "react-router";
import { ArrowRight, Check, TrendingDown, X } from "lucide-react";
import { toast } from "sonner";

export function ReplacementSuggestionsScreen() {
  const navigate = useNavigate();
  const [accepted, setAccepted] = useState<Set<string>>(new Set());
  const [showUpdateModal, setShowUpdateModal] = useState(false);
  const [pendingReplacementId, setPendingReplacementId] = useState<string | null>(null);

  const suggestions = [
    {
      id: "1",
      original: "נוטלה",
      originalPrice: 28.90,
      replacement: "השוקולדן",
      replacementPrice: 18.50,
      savings: 10.40,
      category: "ממרח שוקולד",
    },
    {
      id: "2",
      original: "תנובה - גבינת קוטג' 5%",
      originalPrice: 12.90,
      replacement: "תנובה - גבינת קוטג' 3%",
      replacementPrice: 10.90,
      savings: 2.00,
      category: "גבינת קוטג'",
    },
    {
      id: "3",
      original: "משק יצחק - ביצים L",
      originalPrice: 19.90,
      replacement: "משק יצחק - ביצים M",
      replacementPrice: 16.90,
      savings: 3.00,
      category: "ביצים",
    },
  ];

  const handleToggle = (id: string) => {
    const newAccepted = new Set(accepted);
    if (newAccepted.has(id)) {
      // If unchecking, just remove it
      newAccepted.delete(id);
    } else {
      // If checking, add it to pending replacements
      newAccepted.add(id);
    }
    setAccepted(newAccepted);
  };

  const handleBackToSummary = () => {
    if (accepted.size > 0) {
      // Show confirmation modal only if there are pending changes
      setShowUpdateModal(true);
    } else {
      // No changes, just navigate back
      navigate(-1);
    }
  };

  const handleUpdateAllStores = () => {
    setShowUpdateModal(false);

    // Show success message
    toast.success("המוצרים הוחלפו בהצלחה", {
      description: `${accepted.size} החלפות עודכנו בכל הסופרים`,
      duration: 3000,
    });

    // Navigate back to comparison results with updated data
    setTimeout(() => {
      navigate("/comparison-results");
    }, 500);
  };

  const handleUpdateCurrentStoreOnly = () => {
    setShowUpdateModal(false);

    // Show success message
    toast.success("המוצרים הוחלפו בהצלחה", {
      description: `${accepted.size} החלפות עודכנו בסופר הנוכחי`,
      duration: 3000,
    });

    // Navigate back to previous screen
    setTimeout(() => {
      navigate(-1);
    }, 500);
  };

  const handleCancelUpdate = () => {
    setShowUpdateModal(false);
  };

  const totalSavings = suggestions
    .filter((s) => accepted.has(s.id))
    .reduce((sum, s) => sum + s.savings, 0);

  return (
    <div className="min-h-screen bg-gray-50 flex flex-col" dir="rtl">
      <div className="bg-white px-6 py-4 shadow-sm flex items-center gap-4">
        <button
          onClick={() => navigate(-1)}
          className="p-2 hover:bg-gray-100 rounded-full"
        >
          <ArrowRight className="w-5 h-5 text-gray-700" />
        </button>
        <div>
          <h1 className="text-xl text-gray-900">הצעות לחיסכון</h1>
          <p className="text-sm text-gray-500">מוצרים חלופיים במחיר נמוך יותר</p>
        </div>
      </div>

      <div className="flex-1 overflow-auto p-6 pb-32 space-y-4">
        {suggestions.map((suggestion) => {
          const isAccepted = accepted.has(suggestion.id);
          return (
            <div
              key={suggestion.id}
              className={`bg-white rounded-2xl p-5 shadow-sm border-2 transition-all ${
                isAccepted ? "border-emerald-500" : "border-transparent"
              }`}
            >
              <div className="flex items-start justify-between mb-3">
                <span className="text-xs text-gray-500">{suggestion.category}</span>
                <div className="bg-emerald-100 text-emerald-700 px-3 py-1 rounded-full text-sm">
                  חסכון ₪{suggestion.savings.toFixed(2)}
                </div>
              </div>

              <div className="space-y-3">
                <div className="bg-gray-50 rounded-xl p-3">
                  <div className="text-xs text-gray-500 mb-1 text-right">מוצר נוכחי</div>
                  <div className="flex justify-between items-center">
                    <span className="text-gray-900">{suggestion.original}</span>
                    <span className="text-gray-400 line-through">₪{suggestion.originalPrice.toFixed(2)}</span>
                  </div>
                </div>

                <div className="flex justify-center">
                  <div className="bg-emerald-500 rounded-full p-1">
                    <TrendingDown className="w-4 h-4 text-white" />
                  </div>
                </div>

                <div className="bg-emerald-50 rounded-xl p-3 border-2 border-emerald-200">
                  <div className="text-xs text-emerald-700 mb-1 text-right">מוצר מוצע</div>
                  <div className="flex justify-between items-center">
                    <span className="text-gray-900">{suggestion.replacement}</span>
                    <span className="text-emerald-700 font-semibold">₪{suggestion.replacementPrice.toFixed(2)}</span>
                  </div>
                </div>
              </div>

              <button
                onClick={() => handleToggle(suggestion.id)}
                className={`w-full mt-4 rounded-xl py-3 transition-colors ${
                  isAccepted
                    ? "bg-emerald-500 text-white"
                    : "bg-gray-100 text-gray-700 hover:bg-gray-200"
                }`}
              >
                {isAccepted ? (
                  <div className="flex items-center justify-center gap-2">
                    <Check className="w-5 h-5" />
                    <span>נבחר להחלפה</span>
                  </div>
                ) : (
                  "החלף מוצר"
                )}
              </button>
            </div>
          );
        })}
      </div>

      <div className="fixed bottom-0 left-0 right-0 bg-white border-t border-gray-200 p-6">
        {accepted.size > 0 && (
          <div className="mb-3 text-center">
            <span className="text-sm text-gray-500">חיסכון פוטנציאלי: </span>
            <span className="text-xl text-emerald-600 font-semibold">₪{totalSavings.toFixed(2)}</span>
          </div>
        )}
        <button
          onClick={handleBackToSummary}
          className="w-full bg-emerald-500 hover:bg-emerald-600 text-white rounded-full py-4 shadow-lg transition-colors"
        >
          {accepted.size > 0 ? `חזרה לסיכום (${accepted.size} שינויים)` : 'חזרה'}
        </button>
      </div>

      {showUpdateModal && (
        <div className="fixed inset-0 bg-black/50 flex items-end justify-center z-50" onClick={handleCancelUpdate}>
          <div
            className="bg-white rounded-t-3xl w-full max-w-md p-6 pb-8 space-y-5 animate-slide-up"
            onClick={(e) => e.stopPropagation()}
          >
            <div className="flex items-start justify-between">
              <button
                onClick={handleCancelUpdate}
                className="p-1 hover:bg-gray-100 rounded-full transition-colors"
              >
                <X className="w-5 h-5 text-gray-400" />
              </button>
              <div className="text-center flex-1 -mt-1">
                <div className="flex justify-center mb-3">
                  <div className="bg-emerald-100 rounded-full p-3">
                    <TrendingDown className="w-6 h-6 text-emerald-600" />
                  </div>
                </div>
                <h2 className="text-lg text-gray-900 mb-2">החלפת מוצרים</h2>
                <p className="text-sm text-gray-600 leading-relaxed">
                  בחרת {accepted.size} החלפות מוצרים. אפשר לעדכן את כולן בכל הסופרים ולהריץ השוואה מחדש, או לעדכן אותן רק בסופר הנוכחי.
                </p>
              </div>
              <div className="w-7"></div>
            </div>

            <div className="space-y-3">
              <button
                onClick={handleUpdateAllStores}
                className="w-full bg-emerald-500 hover:bg-emerald-600 text-white rounded-xl py-4 transition-colors"
              >
                <div className="text-center">
                  <div className="font-medium">עדכן בכל הסופרים</div>
                  <div className="text-xs text-emerald-100 mt-1">השוואה מחדש עם המוצר החדש</div>
                </div>
              </button>

              <button
                onClick={handleUpdateCurrentStoreOnly}
                className="w-full bg-white border-2 border-emerald-500 text-emerald-600 hover:bg-emerald-50 rounded-xl py-4 transition-colors"
              >
                <div className="text-center">
                  <div className="font-medium">עדכן רק בסופר הזה</div>
                  <div className="text-xs text-emerald-600/70 mt-1">שינוי מקומי בלבד</div>
                </div>
              </button>

              <button
                onClick={handleCancelUpdate}
                className="w-full bg-gray-100 hover:bg-gray-200 text-gray-700 rounded-xl py-3 transition-colors"
              >
                ביטול
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}

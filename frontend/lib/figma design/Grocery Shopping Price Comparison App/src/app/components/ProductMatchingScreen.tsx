import { useState } from "react";
import { useNavigate } from "react-router";
import { ArrowRight, Check } from "lucide-react";

export function ProductMatchingScreen() {
  const navigate = useNavigate();

  const [selections, setSelections] = useState<Record<string, string>>({
    "גבינת קוטג'": "תנובה",
    "ממרח שוקולד": "נוטלה",
    חלב: "תנובה",
    ביצים: "משק יצחק",
    לחם: "ברמן",
  });

  const products = [
    {
      name: "גבינת קוטג'",
      options: ["תנובה", "שטראוס", "יטבתה", "תנובתה"],
    },
    {
      name: "ממרח שוקולד",
      options: ["נוטלה", "השוקולדן", "מאסטר שף", "קליק"],
    },
    {
      name: "חלב",
      options: ["תנובה", "שטראוס", "יטבתה", "גד"],
    },
    {
      name: "ביצים",
      options: ["משק יצחק", "עין הבקר", "קיבוץ יד מרדכי", "חוות הראל"],
    },
    {
      name: "לחם",
      options: ["ברמן", "אנג'ל", "שופרסל", "מאפה בית"],
    },
  ];

  const handleSelect = (product: string, brand: string) => {
    setSelections({ ...selections, [product]: brand });
  };

  return (
    <div className="min-h-screen bg-gray-50 flex flex-col" dir="rtl">
      <div className="bg-white px-6 py-4 shadow-sm flex items-center gap-4">
        <button onClick={() => navigate(-1)} className="p-2 hover:bg-gray-100 rounded-full">
          <ArrowRight className="w-5 h-5 text-gray-700" />
        </button>
        <div>
          <h1 className="text-xl text-gray-900">התאמת מוצרים</h1>
          <p className="text-sm text-gray-500">בחרו את המותגים המועדפים עליכם</p>
        </div>
      </div>

      <div className="flex-1 overflow-auto pb-24 p-6 space-y-4">
        {products.map((product) => (
          <div key={product.name} className="bg-white rounded-2xl p-4 shadow-sm">
            <h3 className="text-gray-900 mb-3">{product.name}</h3>
            <div className="grid grid-cols-2 gap-2">
              {product.options.map((option) => {
                const isSelected = selections[product.name] === option;
                return (
                  <button
                    key={option}
                    onClick={() => handleSelect(product.name, option)}
                    className={`p-3 rounded-xl border-2 transition-all ${
                      isSelected
                        ? "border-emerald-500 bg-emerald-50"
                        : "border-gray-200 bg-white hover:border-gray-300"
                    }`}
                  >
                    <div className="flex items-center justify-between">
                      {isSelected && (
                        <div className="bg-emerald-500 rounded-full p-0.5">
                          <Check className="w-3 h-3 text-white" />
                        </div>
                      )}
                      <span className={isSelected ? "text-emerald-700" : "text-gray-700"}>
                        {option}
                      </span>
                    </div>
                  </button>
                );
              })}
            </div>
          </div>
        ))}
      </div>

      <div className="fixed bottom-0 left-0 right-0 bg-white border-t border-gray-200 p-6">
        <button
          onClick={() => navigate("/comparison-results")}
          className="w-full bg-emerald-500 hover:bg-emerald-600 text-white rounded-full py-4 shadow-lg transition-colors"
        >
          השוו מחירים
        </button>
      </div>
    </div>
  );
}

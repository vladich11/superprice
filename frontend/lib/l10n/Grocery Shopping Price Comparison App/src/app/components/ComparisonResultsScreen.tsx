import { useNavigate } from "react-router";
import { ArrowRight, TrendingDown, Store, ChevronLeft, Package } from "lucide-react";

export function ComparisonResultsScreen() {
  const navigate = useNavigate();

  const results = [
    {
      name: "רמי לוי",
      logo: "🛒",
      total: 245.50,
      savings: 0,
      badge: "הכי זול",
      color: "emerald",
    },
    {
      name: "שופרסל",
      logo: "🏪",
      total: 267.80,
      savings: 22.30,
      color: "blue",
    },
    {
      name: "יינות בירן",
      logo: "🛍️",
      total: 283.20,
      savings: 37.70,
      color: "purple",
    },
    {
      name: "טיב טעם",
      logo: "🏬",
      total: 298.90,
      savings: 53.40,
      color: "orange",
    },
  ];

  return (
    <div className="min-h-screen bg-gray-50 flex flex-col" dir="rtl">
      <div className="bg-emerald-500 text-white px-6 pt-12 pb-8">
        <button
          onClick={() => navigate(-1)}
          className="p-2 hover:bg-emerald-600 rounded-full mb-4"
        >
          <ArrowRight className="w-5 h-5" />
        </button>
        <div className="flex items-start gap-3 mb-3">
          <div className="flex-1">
            <h1 className="text-2xl mb-2">תוצאות ההשוואה</h1>
            <div className="flex items-center gap-2 text-emerald-100">
              <Package className="w-4 h-4" />
              <span>5 מוצרים בסל הקניות</span>
            </div>
          </div>
        </div>
      </div>

      <div className="flex-1 overflow-auto px-6 -mt-4 pb-6">
        <div className="space-y-3">
          {results.map((store, index) => (
            <div
              key={store.name}
              className="bg-white rounded-2xl p-5 shadow-md hover:shadow-lg active:scale-[0.98] transition-all cursor-pointer"
              onClick={() => navigate("/cart-summary")}
            >
              <div className="flex items-center justify-between mb-3">
                <div className="bg-gray-100 rounded-full p-2">
                  <ChevronLeft className="w-4 h-4 text-gray-500 rotate-180" />
                </div>
                <div className="flex items-center gap-3">
                  <div className="text-right">
                    <h3 className="text-lg text-gray-900">{store.name}</h3>
                    {index === 0 && (
                      <div className="flex items-center gap-1 text-emerald-600 text-sm justify-end">
                        <span>{store.badge}</span>
                        <TrendingDown className="w-4 h-4" />
                      </div>
                    )}
                  </div>
                  <div className="text-3xl">{store.logo}</div>
                </div>
              </div>

              <div className="flex items-baseline justify-between">
                <div className="text-3xl text-gray-900">
                  ₪{store.total.toFixed(2)}
                </div>
                <div className="text-right">
                  {store.savings > 0 && (
                    <div className="text-sm text-red-500">+₪{store.savings.toFixed(2)}</div>
                  )}
                </div>
              </div>

              <div className="mt-3 pt-3 border-t border-gray-100">
                <button
                  onClick={(e) => {
                    e.stopPropagation();
                    navigate("/replacement-suggestions");
                  }}
                  className="w-full text-emerald-600 text-sm flex items-center justify-center gap-1 hover:text-emerald-700 transition-colors"
                >
                  <span>ראו הצעות לחיסכון נוסף</span>
                </button>
              </div>
            </div>
          ))}
        </div>

        <div className="mt-6 bg-emerald-50 rounded-2xl p-4">
          <div className="flex items-start gap-3">
            <div className="text-right text-sm flex-1">
              <p className="text-emerald-900">
                בקניה ברמי לוי תחסכו עד <span className="font-semibold">₪53.40</span> לעומת החנות היקרה ביותר!
              </p>
            </div>
            <div className="bg-emerald-500 rounded-full p-2 shrink-0">
              <TrendingDown className="w-4 h-4 text-white" />
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

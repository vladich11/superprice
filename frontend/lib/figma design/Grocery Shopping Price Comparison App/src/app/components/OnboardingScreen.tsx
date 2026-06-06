import { useNavigate } from "react-router";
import { ShoppingCart, TrendingDown, Search } from "lucide-react";

export function OnboardingScreen() {
  const navigate = useNavigate();

  return (
    <div className="min-h-screen bg-gradient-to-b from-emerald-50 to-white flex flex-col items-center justify-center p-6" dir="rtl">
      <div className="max-w-md w-full space-y-8">
        <div className="text-center space-y-4">
          <div className="flex justify-center">
            <div className="bg-emerald-500 rounded-full p-6 shadow-lg">
              <ShoppingCart className="w-16 h-16 text-white" />
            </div>
          </div>
          <h1 className="text-3xl text-emerald-900">השוואת מחירים חכמה</h1>
          <p className="text-lg text-gray-600">חסכו בקניות השבועיות שלכם</p>
        </div>

        <div className="space-y-6">
          <div className="bg-white rounded-2xl p-6 shadow-md">
            <div className="flex items-start gap-4">
              <div className="bg-emerald-100 rounded-full p-3 shrink-0">
                <Search className="w-6 h-6 text-emerald-600" />
              </div>
              <div className="text-right">
                <h3 className="font-semibold text-gray-900 mb-1">הוסיפו מוצרים</h3>
                <p className="text-sm text-gray-600">צרו רשימת קניות</p>
              </div>
            </div>
          </div>

          <div className="bg-white rounded-2xl p-6 shadow-md">
            <div className="flex items-start gap-4">
              <div className="bg-emerald-100 rounded-full p-3 shrink-0">
                <TrendingDown className="w-6 h-6 text-emerald-600" />
              </div>
              <div className="text-right">
                <h3 className="font-semibold text-gray-900 mb-1">השוו מחירים</h3>
                <p className="text-sm text-gray-600">קבלו השוואה בין כל הרשתות</p>
              </div>
            </div>
          </div>

          <div className="bg-white rounded-2xl p-6 shadow-md">
            <div className="flex items-start gap-4">
              <div className="bg-emerald-100 rounded-full p-3 shrink-0">
                <ShoppingCart className="w-6 h-6 text-emerald-600" />
              </div>
              <div className="text-right">
                <h3 className="font-semibold text-gray-900 mb-1">חסכו כסף</h3>
                <p className="text-sm text-gray-600">בחרו את הסופרמרקט הזול ביותר</p>
              </div>
            </div>
          </div>
        </div>

        <button
          onClick={() => navigate("/home")}
          className="w-full bg-emerald-500 hover:bg-emerald-600 text-white rounded-full py-4 shadow-lg transition-colors"
        >
          בואו נתחיל
        </button>
      </div>
    </div>
  );
}

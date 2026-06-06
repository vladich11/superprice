import { useState } from "react";
import { useNavigate } from "react-router";
import { ArrowRight, Store, MapPin, Share2, ShoppingBag, ListPlus } from "lucide-react";
import { SaveToListModal } from "./SaveToListModal";

export function CartSummaryScreen() {
  const navigate = useNavigate();
  const [showSaveToListModal, setShowSaveToListModal] = useState(false);

  const cartItems = [
    { name: "גבינת קוטג' - תנובה", price: 12.90, quantity: 1 },
    { name: "השוקולדן - ממרח", price: 18.50, quantity: 2 },
    { name: "חלב 3% - תנובה", price: 6.90, quantity: 2 },
    { name: "ביצים M - משק יצחק", price: 16.90, quantity: 1 },
    { name: "לחם - ברמן", price: 8.50, quantity: 1 },
  ];

  const subtotal = cartItems.reduce((sum, item) => sum + item.price * item.quantity, 0);
  const savings = 15.80;
  const total = subtotal;

  return (
    <div className="min-h-screen bg-gray-50 flex flex-col" dir="rtl">
      <div className="bg-emerald-500 text-white px-6 pt-12 pb-6">
        <button
          onClick={() => navigate(-1)}
          className="p-2 hover:bg-emerald-600 rounded-full mb-4"
        >
          <ArrowRight className="w-5 h-5" />
        </button>
        <h1 className="text-2xl mb-2">סיכום הקנייה</h1>
        <div className="flex items-center gap-2">
          <Store className="w-5 h-5 text-emerald-200" />
          <span className="text-emerald-100">רמי לוי - הכי זול</span>
        </div>
      </div>

      <div className="flex-1 overflow-auto pb-24 px-6 -mt-3">
        <div className="bg-white rounded-2xl p-5 shadow-md mb-4">
          <div className="flex items-start gap-3 mb-4">
            <div className="flex-1 text-right">
              <h3 className="text-gray-900 mb-1">רמי לוי - תל אביב</h3>
              <p className="text-sm text-gray-500">רח׳ דיזנגוף 123, תל אביב</p>
              <p className="text-xs text-emerald-600 mt-1">פתוח היום עד 22:00</p>
            </div>
            <MapPin className="w-5 h-5 text-emerald-500 mt-1 shrink-0" />
          </div>
        </div>

        <div className="bg-white rounded-2xl p-5 shadow-md mb-4">
          <h2 className="text-lg text-gray-900 mb-4">פריטים בסל ({cartItems.length})</h2>
          <div className="space-y-3">
            {cartItems.map((item, index) => (
              <div key={index} className="flex justify-between items-center">
                <div className="text-right">
                  <div className="text-gray-900">{item.name}</div>
                  {item.quantity > 1 && (
                    <div className="text-xs text-gray-500">כמות: {item.quantity}</div>
                  )}
                </div>
                <div className="text-left">
                  <div className="text-gray-900">₪{(item.price * item.quantity).toFixed(2)}</div>
                  {item.quantity > 1 && (
                    <div className="text-xs text-gray-400">₪{item.price.toFixed(2)} × {item.quantity}</div>
                  )}
                </div>
              </div>
            ))}
          </div>
        </div>

        <div className="bg-white rounded-2xl p-5 shadow-md">
          <div className="space-y-3">
            <div className="flex justify-between text-gray-600">
              <span>סכום ביניים</span>
              <span>₪{subtotal.toFixed(2)}</span>
            </div>
            <div className="flex justify-between text-emerald-600">
              <span>חיסכון</span>
              <span>-₪{savings.toFixed(2)}</span>
            </div>
            <div className="border-t border-gray-200 pt-3 flex justify-between text-xl">
              <span className="text-gray-900 font-semibold">סה״כ</span>
              <span className="text-gray-900 font-semibold">₪{total.toFixed(2)}</span>
            </div>
          </div>
        </div>

        <div className="mt-4 bg-emerald-50 rounded-2xl p-4">
          <div className="text-center text-sm text-emerald-800">
            <p className="font-semibold mb-1">🎉 מזל טוב!</p>
            <p>חסכתם ₪{savings.toFixed(2)} בהשוואה לחנויות אחרות</p>
          </div>
        </div>
      </div>

      <div className="fixed bottom-0 left-0 right-0 bg-white border-t border-gray-200 p-6 space-y-3">
        <button
          onClick={() => setShowSaveToListModal(true)}
          className="w-full bg-emerald-500 hover:bg-emerald-600 text-white rounded-full py-4 shadow-lg transition-colors flex items-center justify-center gap-2"
        >
          <ListPlus className="w-5 h-5" />
          <span>הוסף לרשימות שלי</span>
        </button>

        <div className="flex gap-3">
          <button
            onClick={() => navigate("/shopping-checklist")}
            className="flex-1 bg-white border-2 border-gray-200 text-gray-700 rounded-full py-3 flex items-center justify-center gap-2 hover:bg-gray-50 transition-colors"
          >
            <ShoppingBag className="w-5 h-5" />
            <span>קנה עכשיו</span>
          </button>
          <button className="flex-1 bg-white border-2 border-gray-200 text-gray-700 rounded-full py-3 flex items-center justify-center gap-2 hover:bg-gray-50 transition-colors">
            <Share2 className="w-5 h-5" />
            <span>שתף</span>
          </button>
        </div>
      </div>

      {showSaveToListModal && (
        <SaveToListModal
          supermarketName="רמי לוי"
          itemCount={cartItems.length}
          totalPrice={total}
          onClose={() => setShowSaveToListModal(false)}
        />
      )}
    </div>
  );
}

import { X, Info } from "lucide-react";

interface InputHelpModalProps {
  onClose: () => void;
}

export function InputHelpModal({ onClose }: InputHelpModalProps) {
  return (
    <div className="fixed inset-0 bg-black/50 flex items-end justify-center z-50" onClick={onClose} dir="rtl">
      <div
        className="bg-white rounded-t-3xl w-full max-w-md pb-8 animate-slide-up"
        onClick={(e) => e.stopPropagation()}
      >
        <div className="sticky top-0 bg-white border-b border-gray-200 px-6 py-4 flex items-center justify-between">
          <button onClick={onClose} className="p-1 hover:bg-gray-100 rounded-full transition-colors">
            <X className="w-5 h-5 text-gray-400" />
          </button>
          <h2 className="text-lg text-gray-900">איך להוסיף מוצרים?</h2>
          <div className="w-7"></div>
        </div>

        <div className="px-6 py-6 space-y-6">
          <div className="text-right">
            <p className="text-gray-600 leading-relaxed mb-6">
              אפשר להוסיף מוצר אחד או להדביק רשימה שלמה. הפרידו בין מוצרים עם פסיק או ירידת שורה.
            </p>

            <div className="bg-gray-50 rounded-xl p-4">
              <div className="text-xs text-gray-500 mb-2">דוגמה:</div>
              <div className="text-gray-900">
                חלב, לחם, קוטג׳ 2 יחידות, עגבניות 1.5 ק״ג
              </div>
            </div>
          </div>

          <div className="bg-emerald-50 rounded-xl p-4 border border-emerald-100">
            <p className="text-emerald-800 text-sm text-right">
              המערכת תזהה אוטומטית מותגים, כמויות ומשקלים מהרשימה שלך.
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}

import { useState } from "react";
import { X, Plus, Minus, Check } from "lucide-react";

interface ProductOption {
  brand?: string[];
  variants?: string[];
  isWeightBased?: boolean;
}

interface ProductSelectionModalProps {
  productName: string;
  onClose: () => void;
  onAdd: (details: {
    name: string;
    brand: string;
    variant: string;
    quantity: number;
    weight?: number;
  }) => void;
}

const productOptions: Record<string, ProductOption> = {
  "גבינת קוטג'": {
    brand: ["תנובה", "שטראוס", "טרה", "יטבתה"],
    variants: ["5% שומן", "3% שומן", "9% שומן", "0% שומן"],
  },
  "ממרח שוקולד": {
    brand: ["נוטלה", "השוקולדן", "עלית", "השחר"],
    variants: ["400 גרם", "750 גרם", "1 ק״ג"],
  },
  חלב: {
    brand: ["תנובה", "טרה", "יטבתה", "גד"],
    variants: ["3% שומן", "1% שומן", "0% שומן", "3.8% שומן"],
  },
  ביצים: {
    brand: ["משק יצחק", "עין הבקר", "יד מרדכי", "חוות הראל"],
    variants: ["מידה L", "מידה M", "מידה XL"],
  },
  לחם: {
    brand: ["ברמן", "אנג'ל", "שופרסל", "בית לחם"],
    variants: ["פרוס", "שלם", "חיטה מלאה"],
  },
  יוגורט: {
    brand: ["דנונה", "יופלה", "מולר", "תנובה"],
    variants: ["טבעי", "תות", "אוכמניות", "אפרסק"],
  },
  חומוס: {
    brand: ["אסם", "אחלה", "בר שקד", "סוגת"],
    variants: ["500 גרם", "750 גרם", "1 ק״ג"],
  },
  טחינה: {
    brand: ["אל ארז", "אחווה", "בר שקד", "עלאדין"],
    variants: ["500 גרם", "1 ק״ג"],
  },
  "גבינה צהובה": {
    brand: ["תנובה", "עמק", "גד", "שטראוס"],
    variants: ["פרוסה", "גוש 200 גרם", "גוש 500 גרם"],
  },
  עגבניות: {
    brand: ["מקומי", "מיובא"],
    variants: ["עגבניות שרי", "עגבניות רגילות", "עגבניות שזיף"],
    isWeightBased: true,
  },
};

const defaultOptions: ProductOption = {
  brand: ["כללי"],
  variants: ["רגיל"],
};

export function ProductSelectionModal({ productName, onClose, onAdd }: ProductSelectionModalProps) {
  const options = productOptions[productName] || defaultOptions;

  const [selectedBrand, setSelectedBrand] = useState(options.brand?.[0] || "כללי");
  const [selectedVariant, setSelectedVariant] = useState(options.variants?.[0] || "רגיל");
  const [quantity, setQuantity] = useState(1);
  const [weight, setWeight] = useState(1);
  const [weightMode, setWeightMode] = useState<"preset" | "custom">("preset");

  const presetWeights = [0.5, 1, 1.5, 2, 3];

  const handleAdd = () => {
    onAdd({
      name: productName,
      brand: selectedBrand,
      variant: selectedVariant,
      quantity: options.isWeightBased ? 1 : quantity,
      weight: options.isWeightBased ? weight : undefined,
    });
    onClose();
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
          <h2 className="text-lg text-gray-900">{productName}</h2>
          <div className="w-7"></div>
        </div>

        <div className="px-6 py-5 space-y-6">
          {/* Brand selection */}
          <div className="space-y-3">
            <h3 className="text-sm text-gray-600">בחר מותג</h3>
            <div className="grid grid-cols-2 gap-2">
              {options.brand?.map((brand) => (
                <button
                  key={brand}
                  onClick={() => setSelectedBrand(brand)}
                  className={`p-3 rounded-xl border-2 transition-all ${
                    selectedBrand === brand
                      ? "border-emerald-500 bg-emerald-50"
                      : "border-gray-200 hover:border-gray-300"
                  }`}
                >
                  <div className="flex items-center justify-between">
                    <span className={selectedBrand === brand ? "text-emerald-700" : "text-gray-700"}>
                      {brand}
                    </span>
                    {selectedBrand === brand && (
                      <div className="bg-emerald-500 rounded-full p-0.5">
                        <Check className="w-3 h-3 text-white" />
                      </div>
                    )}
                  </div>
                </button>
              ))}
            </div>
          </div>

          {/* Variant selection */}
          <div className="space-y-3">
            <h3 className="text-sm text-gray-600">בחר סוג</h3>
            <div className="grid grid-cols-2 gap-2">
              {options.variants?.map((variant) => (
                <button
                  key={variant}
                  onClick={() => setSelectedVariant(variant)}
                  className={`p-3 rounded-xl border-2 transition-all ${
                    selectedVariant === variant
                      ? "border-emerald-500 bg-emerald-50"
                      : "border-gray-200 hover:border-gray-300"
                  }`}
                >
                  <div className="flex items-center justify-between">
                    <span className={`text-sm ${selectedVariant === variant ? "text-emerald-700" : "text-gray-700"}`}>
                      {variant}
                    </span>
                    {selectedVariant === variant && (
                      <div className="bg-emerald-500 rounded-full p-0.5">
                        <Check className="w-3 h-3 text-white" />
                      </div>
                    )}
                  </div>
                </button>
              ))}
            </div>
          </div>

          {/* Quantity or Weight selection */}
          {options.isWeightBased ? (
            <div className="space-y-3">
              <h3 className="text-sm text-gray-600">כמות (משקל)</h3>

              <div className="flex gap-2 mb-3">
                <button
                  onClick={() => setWeightMode("preset")}
                  className={`flex-1 py-2 px-4 rounded-lg transition-colors ${
                    weightMode === "preset"
                      ? "bg-emerald-500 text-white"
                      : "bg-gray-100 text-gray-700"
                  }`}
                >
                  בחירה מהירה
                </button>
                <button
                  onClick={() => setWeightMode("custom")}
                  className={`flex-1 py-2 px-4 rounded-lg transition-colors ${
                    weightMode === "custom"
                      ? "bg-emerald-500 text-white"
                      : "bg-gray-100 text-gray-700"
                  }`}
                >
                  הזנה ידנית
                </button>
              </div>

              {weightMode === "preset" ? (
                <div className="grid grid-cols-3 gap-2">
                  {presetWeights.map((w) => (
                    <button
                      key={w}
                      onClick={() => setWeight(w)}
                      className={`p-3 rounded-xl border-2 transition-all ${
                        weight === w
                          ? "border-emerald-500 bg-emerald-50"
                          : "border-gray-200 hover:border-gray-300"
                      }`}
                    >
                      <span className={weight === w ? "text-emerald-700" : "text-gray-700"}>
                        {w} ק״ג
                      </span>
                    </button>
                  ))}
                </div>
              ) : (
                <div className="flex items-center gap-3 bg-gray-50 rounded-xl p-4">
                  <span className="text-gray-600">ק״ג</span>
                  <input
                    type="number"
                    step="0.1"
                    min="0.1"
                    value={weight}
                    onChange={(e) => setWeight(parseFloat(e.target.value) || 0.1)}
                    className="flex-1 bg-white border-2 border-gray-200 rounded-lg px-4 py-2 text-center outline-none focus:border-emerald-500"
                  />
                </div>
              )}
            </div>
          ) : (
            <div className="space-y-3">
              <h3 className="text-sm text-gray-600">כמות (יחידות)</h3>
              <div className="flex items-center justify-center gap-4 bg-gray-50 rounded-xl p-4">
                <button
                  onClick={() => setQuantity(Math.max(1, quantity - 1))}
                  className="bg-white border-2 border-gray-200 hover:border-emerald-500 rounded-full p-2 transition-colors"
                >
                  <Minus className="w-5 h-5 text-gray-600" />
                </button>
                <span className="text-2xl text-gray-900 font-semibold min-w-[60px] text-center">
                  {quantity}
                </span>
                <button
                  onClick={() => setQuantity(quantity + 1)}
                  className="bg-white border-2 border-gray-200 hover:border-emerald-500 rounded-full p-2 transition-colors"
                >
                  <Plus className="w-5 h-5 text-gray-600" />
                </button>
              </div>
            </div>
          )}
        </div>

        <div className="px-6 pt-4">
          <button
            onClick={handleAdd}
            className="w-full bg-emerald-500 hover:bg-emerald-600 text-white rounded-full py-4 shadow-lg transition-colors"
          >
            הוסף לרשימה
          </button>
        </div>
      </div>
    </div>
  );
}

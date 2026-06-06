import { MapPin, Navigation, Store } from "lucide-react";
import { BottomNavigation } from "./BottomNavigation";

export function MapScreen() {
  const supermarkets = [
    { id: 1, name: "רמי לוי", address: "רח' דיזנגוף 123, תל אביב", distance: "0.3 ק״מ", icon: "🛒" },
    { id: 2, name: "שופרסל", address: "רח' אלנבי 45, תל אביב", distance: "0.7 ק״מ", icon: "🏪" },
    { id: 3, name: "יינות בירן", address: "רח' בן יהודה 78, תל אביב", distance: "1.2 ק״מ", icon: "🛍️" },
    { id: 4, name: "טיב טעם", address: "רח' ארלוזורוב 234, תל אביב", distance: "1.5 ק״מ", icon: "🏬" },
  ];

  return (
    <div className="min-h-screen bg-gray-50 pb-20" dir="rtl">
      <div className="bg-emerald-500 text-white px-6 pt-12 pb-6">
        <h1 className="text-2xl mb-2">סופרמרקטים בקרבתך</h1>
        <div className="flex items-center gap-2 text-sm text-emerald-100">
          <Navigation className="w-4 h-4" />
          <span>תל אביב, ישראל</span>
        </div>
      </div>

      {/* Map placeholder */}
      <div className="mx-6 mt-6 bg-gray-200 rounded-2xl overflow-hidden shadow-md" style={{ height: '300px' }}>
        <div className="w-full h-full flex items-center justify-center bg-gradient-to-br from-emerald-100 to-blue-100 relative">
          <div className="absolute inset-0 flex items-center justify-center">
            <div className="text-center">
              <MapPin className="w-16 h-16 text-emerald-600 mx-auto mb-2" />
              <p className="text-gray-600 text-sm">מפה אינטראקטיבית</p>
            </div>
          </div>

          {/* Simulated map markers */}
          <div className="absolute top-1/4 right-1/3 bg-red-500 w-3 h-3 rounded-full border-2 border-white shadow-lg animate-pulse"></div>
          <div className="absolute top-1/2 right-1/2 bg-emerald-500 w-4 h-4 rounded-full border-2 border-white shadow-lg"></div>
          <div className="absolute bottom-1/3 left-1/3 bg-red-500 w-3 h-3 rounded-full border-2 border-white shadow-lg"></div>
          <div className="absolute top-1/3 left-1/4 bg-red-500 w-3 h-3 rounded-full border-2 border-white shadow-lg"></div>
        </div>
      </div>

      {/* Supermarket list */}
      <div className="px-6 mt-6 pb-6">
        <h2 className="text-lg text-gray-900 mb-4 flex items-center gap-2">
          <Store className="w-5 h-5 text-emerald-600" />
          <span>סופרמרקטים קרובים</span>
        </h2>

        <div className="space-y-3">
          {supermarkets.map((store) => (
            <div
              key={store.id}
              className="bg-white rounded-xl p-4 shadow-sm hover:shadow-md transition-shadow"
            >
              <div className="flex items-start gap-3">
                <div className="text-3xl">{store.icon}</div>
                <div className="flex-1 text-right">
                  <h3 className="text-gray-900 font-medium mb-1">{store.name}</h3>
                  <p className="text-sm text-gray-500 mb-2">{store.address}</p>
                  <div className="flex items-center gap-2 justify-end">
                    <span className="text-xs text-emerald-600 bg-emerald-50 px-2 py-1 rounded-full">
                      {store.distance}
                    </span>
                    <Navigation className="w-3 h-3 text-gray-400" />
                  </div>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>

      <BottomNavigation />
    </div>
  );
}

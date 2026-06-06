import { useNavigate, useLocation } from "react-router";
import { TrendingDown, ClipboardList, MapPin } from "lucide-react";

export function BottomNavigation() {
  const navigate = useNavigate();
  const location = useLocation();

  const tabs = [
    { id: "my-list", label: "הרשימות שלי", icon: ClipboardList, path: "/my-list" },
    { id: "comparison", label: "השוואת מחירים", icon: TrendingDown, path: "/home" },
    { id: "map", label: "מפה", icon: MapPin, path: "/map" },
  ];

  // Determine active tab based on current path
  const getActiveTab = () => {
    if (location.pathname === "/my-list") return "my-list";
    if (location.pathname === "/map") return "map";
    return "comparison";
  };

  const activeTab = getActiveTab();

  return (
    <div className="fixed bottom-0 left-0 right-0 bg-white border-t border-gray-200 safe-area-bottom z-40" dir="rtl">
      <div className="flex items-center justify-around px-1 py-2">
        {tabs.map((tab) => {
          const Icon = tab.icon;
          const isActive = activeTab === tab.id;
          const isCenterTab = tab.id === "comparison";
          return (
            <button
              key={tab.id}
              onClick={() => navigate(tab.path)}
              className={`flex-1 flex flex-col items-center gap-1 py-2 px-1 rounded-xl transition-colors ${
                isActive ? "text-emerald-600" : "text-gray-500 hover:text-gray-700"
              } ${isCenterTab ? "max-w-[140px]" : ""}`}
            >
              <Icon className={`w-6 h-6 ${isActive ? "stroke-[2.5]" : "stroke-2"}`} />
              <span className={`text-[11px] leading-tight text-center ${isActive ? "font-semibold" : "font-normal"}`}>
                {tab.label}
              </span>
            </button>
          );
        })}
      </div>
    </div>
  );
}

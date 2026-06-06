import { useState } from "react";
import { useNavigate } from "react-router";
import { Plus, ListChecks, ClipboardList } from "lucide-react";
import { BottomNavigation } from "./BottomNavigation";
import { CreateBaseListModal } from "./CreateBaseListModal";
import { EditBaseListModal } from "./EditBaseListModal";
import { useShoppingLists } from "../context/ShoppingListContext";

export function HomeScreen() {
  const navigate = useNavigate();
  const { baseLists } = useShoppingLists();
  const [showCreateBaseListModal, setShowCreateBaseListModal] = useState(false);
  const [editingBaseListId, setEditingBaseListId] = useState<string | null>(null);

  const handleBaseListClick = (baseListId: string) => {
    setEditingBaseListId(baseListId);
  };

  return (
    <div className="min-h-screen bg-gray-50 pb-20" dir="rtl">
      <div className="bg-emerald-500 text-white px-6 pt-12 pb-6">
        <h1 className="text-2xl mb-2">שלום!</h1>
        <p className="text-emerald-100">בואו נמצא את המחירים הטובים ביותר</p>
      </div>

      <div className="px-6 pt-6 mb-8">
        <button
          onClick={() => navigate("/shopping-list")}
          className="w-full bg-gradient-to-br from-white to-emerald-50/30 hover:from-gray-50 hover:to-emerald-50/50 rounded-3xl p-7 shadow-xl hover:shadow-2xl transition-all duration-300 flex items-center gap-5 border border-emerald-100/50"
        >
          <div className="flex-1 text-right space-y-2">
            <div className="text-2xl text-gray-900 font-medium">רשימת קניות חדשה</div>
            <div className="text-sm text-emerald-700 leading-relaxed">
              כל הקניות שלכם במקום אחד, עם המחירים הטובים ביותר
            </div>
          </div>
          <div className="bg-gradient-to-br from-emerald-500 to-emerald-600 rounded-full p-4 shadow-lg">
            <Plus className="w-7 h-7 text-white" strokeWidth={2.5} />
          </div>
        </button>
      </div>

      <div className="px-6">
        <div className="flex items-center gap-2 mb-3">
          <ClipboardList className="w-4 h-4 text-gray-400" />
          <h2 className="text-sm text-gray-600">רשימות בסיס</h2>
        </div>

{baseLists.length === 0 ? (
          <div className="bg-white/60 rounded-xl p-5 text-center space-y-3.5 border border-gray-200/50 shadow-sm">
            <div className="bg-emerald-50 rounded-full p-3 w-14 h-14 mx-auto flex items-center justify-center">
              <ClipboardList className="w-6 h-6 text-emerald-600" />
            </div>
            <div className="space-y-1.5">
              <h3 className="text-base text-gray-900">מה זה בעצם רשימת בסיס?</h3>
              <p className="text-gray-600 text-sm leading-relaxed">המוצרים הקבועים שלכם, מוכנים לקנייה.</p>
            </div>
            <button
              onClick={() => setShowCreateBaseListModal(true)}
              className="w-full bg-emerald-500 hover:bg-emerald-600 text-white rounded-full py-3.5 transition-colors text-sm shadow-sm"
            >
              יאללה, בואו ניצור את רשימת הבסיס הראשונה שלכם
            </button>
          </div>
        ) : (
          <div className="space-y-1.5">
            {baseLists.map((list) => (
              <div
                key={list.id}
                onClick={() => handleBaseListClick(list.id)}
                className="bg-white/80 rounded-lg p-2.5 shadow-sm hover:shadow-md hover:bg-white transition-all cursor-pointer"
              >
                <div className="flex items-center gap-2.5">
                  <div className="text-xl">{list.icon}</div>
                  <div className="text-right flex-1">
                    <h3 className="text-gray-900 text-xs mb-0.5">{list.name}</h3>
                    <div className="flex items-center gap-1 text-xs text-gray-400 justify-end">
                      <span>{list.products.length} מוצרים</span>
                      <ListChecks className="w-2.5 h-2.5" />
                    </div>
                  </div>
                </div>
              </div>
            ))}

            <button
              onClick={() => setShowCreateBaseListModal(true)}
              className="w-full bg-white/50 hover:bg-white text-emerald-600 rounded-lg p-2.5 transition-colors flex items-center justify-center gap-2 border border-dashed border-emerald-200 text-xs"
            >
              <Plus className="w-3.5 h-3.5" />
              <span>צור רשימת בסיס חדשה</span>
            </button>
          </div>
        )}
      </div>

      {showCreateBaseListModal && (
        <CreateBaseListModal onClose={() => setShowCreateBaseListModal(false)} />
      )}

      {editingBaseListId && (
        <EditBaseListModal
          baseListId={editingBaseListId}
          onClose={() => setEditingBaseListId(null)}
        />
      )}

      <BottomNavigation />
    </div>
  );
}

import { useState } from "react";
import { useNavigate } from "react-router";
import { Plus, Store, ShoppingCart, Calendar, ChevronLeft, CheckCircle, TrendingDown, GitMerge, RefreshCw } from "lucide-react";
import { BottomNavigation } from "./BottomNavigation";
import { useShoppingLists } from "../context/ShoppingListContext";
import { MergeListsModal } from "./MergeListsModal";
import { toast } from "sonner";

export function MyListScreen() {
  const navigate = useNavigate();
  const { savedLists } = useShoppingLists();
  const [showMergeModal, setShowMergeModal] = useState(false);

  // Separate active and completed lists
  const activeLists = savedLists.filter(list => !list.completed);
  const completedLists = savedLists.filter(list => list.completed);

  // Sort: active lists first, then completed
  const sortedLists = [...activeLists, ...completedLists];

  const hasLists = savedLists.length > 0;

  const handleUpdateComparison = (list: typeof savedLists[0], e: React.MouseEvent) => {
    e.stopPropagation();

    toast.success("מריץ השוואה מחודשת", {
      description: `מעדכן מחירים עבור "${list.title}"`,
      duration: 2000,
    });

    // Navigate to comparison results
    setTimeout(() => {
      navigate("/comparison-results");
    }, 500);
  };

  return (
    <div className="min-h-screen bg-gray-50 pb-20" dir="rtl">
      <div className="bg-emerald-500 text-white px-6 pt-12 pb-6">
        <h1 className="text-2xl mb-2">הרשימות שלי</h1>
        <p className="text-emerald-100 text-sm">
          {hasLists ? `${savedLists.length} רשימות שמורות` : 'עדיין אין לך רשימות שמורות'}
        </p>
      </div>

      {!hasLists ? (
        // Empty state
        <div className="px-6 py-12 text-center">
          <div className="bg-white rounded-3xl p-8 shadow-sm max-w-sm mx-auto">
            <div className="bg-emerald-100 rounded-full p-6 w-24 h-24 mx-auto mb-6 flex items-center justify-center">
              <ShoppingCart className="w-12 h-12 text-emerald-600" />
            </div>
            <h2 className="text-xl text-gray-900 mb-3">אין לך רשימות עדיין</h2>
            <p className="text-gray-600 mb-8">
              צור רשימת קניות חדשה והשווה מחירים בין הסופרמרקטים
            </p>
            <button
              onClick={() => navigate("/shopping-list")}
              className="w-full bg-emerald-500 hover:bg-emerald-600 text-white rounded-full py-4 shadow-lg transition-colors flex items-center justify-center gap-2"
            >
              <Plus className="w-5 h-5" />
              <span>בוא ניצור רשימה חדשה</span>
            </button>
          </div>
        </div>
      ) : (
        // Lists state
        <div className="px-6 py-6 space-y-4">
          <div className="flex items-center gap-3 mb-2">
            <button
              onClick={() => setShowMergeModal(true)}
              disabled={activeLists.length < 2}
              className="bg-white hover:bg-gray-50 disabled:bg-gray-100 disabled:text-gray-400 text-gray-700 border border-gray-200 rounded-full px-4 py-2 text-sm shadow-sm transition-colors flex items-center gap-2"
            >
              <GitMerge className="w-4 h-4" />
              <span>מזג רשימות</span>
            </button>

            <button
              onClick={() => navigate("/shopping-list")}
              className="flex-1 bg-emerald-500 hover:bg-emerald-600 text-white rounded-full px-5 py-2 text-sm shadow-md transition-colors flex items-center justify-center gap-2"
            >
              <Plus className="w-4 h-4" />
              <span>רשימה חדשה</span>
            </button>
          </div>

          {sortedLists.map((list) => (
            <div
              key={list.id}
              className={`bg-white rounded-2xl p-5 shadow-md hover:shadow-lg transition-all ${
                list.completed ? 'opacity-75' : ''
              }`}
            >
              <div className="flex items-start justify-between mb-4">
                <button
                  onClick={() => navigate("/shopping-checklist")}
                  className="bg-gray-100 rounded-full p-2 hover:bg-gray-200 transition-colors"
                >
                  <ChevronLeft className="w-4 h-4 text-gray-500 rotate-180" />
                </button>

                <div
                  onClick={() => navigate("/shopping-checklist")}
                  className="flex items-center gap-3 cursor-pointer"
                >
                  <div className="text-right">
                    <div className="flex items-center gap-2 justify-end mb-1">
                      {list.completed && (
                        <div className="bg-emerald-100 text-emerald-700 px-2 py-0.5 rounded-full text-xs flex items-center gap-1">
                          <CheckCircle className="w-3 h-3" />
                          <span>הושלמה</span>
                        </div>
                      )}
                      <h3 className={`text-lg font-medium ${list.completed ? 'text-gray-600' : 'text-gray-900'}`}>
                        {list.title}
                      </h3>
                    </div>
                    <div className="flex items-center gap-2 text-sm text-gray-500">
                      <span>{list.supermarket}</span>
                      <Store className="w-4 h-4" />
                    </div>
                  </div>
                  <div className="text-3xl">{list.icon}</div>
                </div>
              </div>

              <div className="space-y-3">
                <button
                  onClick={(e) => handleUpdateComparison(list, e)}
                  className="w-full bg-emerald-50 hover:bg-emerald-100 text-emerald-700 rounded-xl px-4 py-2.5 text-sm transition-colors flex items-center justify-center gap-2"
                >
                  <RefreshCw className="w-4 h-4" />
                  <span>השוואה עדכנית</span>
                </button>

                <div
                  onClick={() => navigate("/shopping-checklist")}
                  className="flex items-center justify-between pt-2 border-t border-gray-100 cursor-pointer"
                >
                  <div className="flex items-center gap-4 text-sm">
                    <div className="flex items-center gap-1 text-gray-500">
                      <Calendar className="w-4 h-4" />
                      <span>{list.createdDate}</span>
                    </div>
                    <div className="text-gray-500">
                      {list.itemCount} פריטים
                    </div>
                  </div>
                  <div className={`text-xl font-semibold ${list.completed ? 'text-gray-500' : 'text-emerald-600'}`}>
                    ₪{list.totalPrice.toFixed(2)}
                  </div>
                </div>
              </div>
            </div>
          ))}
        </div>
      )}

      {showMergeModal && (
        <MergeListsModal onClose={() => setShowMergeModal(false)} />
      )}

      <BottomNavigation />
    </div>
  );
}

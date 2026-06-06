import { createContext, useContext, useState, ReactNode } from "react";

export interface SavedShoppingList {
  id: string;
  title: string;
  supermarket: string;
  itemCount: number;
  totalPrice: number;
  createdDate: string;
  icon: string;
  completed?: boolean;
}

export interface ProductItem {
  id: string;
  name: string;
  brand?: string;
  variant?: string;
  quantity?: number;
  weight?: string;
}

export interface BaseList {
  id: string;
  name: string;
  products: ProductItem[];
  icon?: string;
}

interface ShoppingListContextType {
  savedLists: SavedShoppingList[];
  addList: (list: Omit<SavedShoppingList, "id" | "createdDate">) => void;
  removeList: (id: string) => void;
  updateList: (id: string, updates: Partial<SavedShoppingList>) => void;
  baseLists: BaseList[];
  addBaseList: (list: Omit<BaseList, "id">) => void;
  removeBaseList: (id: string) => void;
  updateBaseList: (id: string, updates: Partial<BaseList>) => void;
}

const ShoppingListContext = createContext<ShoppingListContextType | undefined>(undefined);

export function ShoppingListProvider({ children }: { children: ReactNode }) {
  const [savedLists, setSavedLists] = useState<SavedShoppingList[]>([]);
  const [baseLists, setBaseLists] = useState<BaseList[]>([]);

  const addList = (list: Omit<SavedShoppingList, "id" | "createdDate">) => {
    const newList: SavedShoppingList = {
      ...list,
      id: Date.now().toString(),
      createdDate: new Date().toLocaleDateString('he-IL', {
        day: 'numeric',
        month: 'long',
        year: 'numeric'
      }),
    };
    setSavedLists(prev => [newList, ...prev]);
  };

  const removeList = (id: string) => {
    setSavedLists(prev => prev.filter(list => list.id !== id));
  };

  const updateList = (id: string, updates: Partial<SavedShoppingList>) => {
    setSavedLists(prev =>
      prev.map(list => (list.id === id ? { ...list, ...updates } : list))
    );
  };

  const addBaseList = (list: Omit<BaseList, "id">) => {
    const newBaseList: BaseList = {
      ...list,
      id: Date.now().toString(),
    };
    setBaseLists(prev => [newBaseList, ...prev]);
  };

  const removeBaseList = (id: string) => {
    setBaseLists(prev => prev.filter(list => list.id !== id));
  };

  const updateBaseList = (id: string, updates: Partial<BaseList>) => {
    setBaseLists(prev =>
      prev.map(list => (list.id === id ? { ...list, ...updates } : list))
    );
  };

  return (
    <ShoppingListContext.Provider
      value={{
        savedLists,
        addList,
        removeList,
        updateList,
        baseLists,
        addBaseList,
        removeBaseList,
        updateBaseList,
      }}
    >
      {children}
    </ShoppingListContext.Provider>
  );
}

export function useShoppingLists() {
  const context = useContext(ShoppingListContext);
  if (context === undefined) {
    throw new Error("useShoppingLists must be used within a ShoppingListProvider");
  }
  return context;
}

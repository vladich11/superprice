import { RouterProvider } from "react-router";
import { Toaster } from "sonner";
import { router } from "./routes";
import { ShoppingListProvider } from "./context/ShoppingListContext";

export default function App() {
  return (
    <ShoppingListProvider>
      <RouterProvider router={router} />
      <Toaster position="top-center" richColors dir="rtl" />
    </ShoppingListProvider>
  );
}
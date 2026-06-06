import { createBrowserRouter } from "react-router";
import { OnboardingScreen } from "./components/OnboardingScreen";
import { HomeScreen } from "./components/HomeScreen";
import { ShoppingListScreen } from "./components/ShoppingListScreen";
import { ProductMatchingScreen } from "./components/ProductMatchingScreen";
import { ComparisonResultsScreen } from "./components/ComparisonResultsScreen";
import { ReplacementSuggestionsScreen } from "./components/ReplacementSuggestionsScreen";
import { CartSummaryScreen } from "./components/CartSummaryScreen";
import { ShoppingChecklistScreen } from "./components/ShoppingChecklistScreen";
import { MyListScreen } from "./components/MyListScreen";
import { MapScreen } from "./components/MapScreen";

export const router = createBrowserRouter([
  {
    path: "/",
    Component: OnboardingScreen,
  },
  {
    path: "/home",
    Component: HomeScreen,
  },
  {
    path: "/shopping-list",
    Component: ShoppingListScreen,
  },
  {
    path: "/product-matching",
    Component: ProductMatchingScreen,
  },
  {
    path: "/comparison-results",
    Component: ComparisonResultsScreen,
  },
  {
    path: "/replacement-suggestions",
    Component: ReplacementSuggestionsScreen,
  },
  {
    path: "/cart-summary",
    Component: CartSummaryScreen,
  },
  {
    path: "/shopping-checklist",
    Component: ShoppingChecklistScreen,
  },
  {
    path: "/my-list",
    Component: MyListScreen,
  },
  {
    path: "/map",
    Component: MapScreen,
  },
]);

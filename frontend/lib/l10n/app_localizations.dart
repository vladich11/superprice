import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_he.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('he'),
  ];

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search for a product...'**
  String get searchHint;

  /// No description provided for @chainsTitle.
  ///
  /// In en, this message translates to:
  /// **'Supermarket Chains'**
  String get chainsTitle;

  /// No description provided for @storesCount.
  ///
  /// In en, this message translates to:
  /// **'stores'**
  String get storesCount;

  /// No description provided for @chainDetail.
  ///
  /// In en, this message translates to:
  /// **'Stores'**
  String get chainDetail;

  /// No description provided for @noResults.
  ///
  /// In en, this message translates to:
  /// **'No products found'**
  String get noResults;

  /// No description provided for @searchPrompt.
  ///
  /// In en, this message translates to:
  /// **'Type to search for products'**
  String get searchPrompt;

  /// No description provided for @productDetail.
  ///
  /// In en, this message translates to:
  /// **'Product Detail'**
  String get productDetail;

  /// No description provided for @priceComparison.
  ///
  /// In en, this message translates to:
  /// **'Price Comparison'**
  String get priceComparison;

  /// No description provided for @promotions.
  ///
  /// In en, this message translates to:
  /// **'Promotions'**
  String get promotions;

  /// No description provided for @barcode.
  ///
  /// In en, this message translates to:
  /// **'Barcode'**
  String get barcode;

  /// No description provided for @minPrice.
  ///
  /// In en, this message translates to:
  /// **'Min'**
  String get minPrice;

  /// No description provided for @maxPrice.
  ///
  /// In en, this message translates to:
  /// **'Max'**
  String get maxPrice;

  /// No description provided for @avgPrice.
  ///
  /// In en, this message translates to:
  /// **'Avg'**
  String get avgPrice;

  /// No description provided for @totalStores.
  ///
  /// In en, this message translates to:
  /// **'Total Stores'**
  String get totalStores;

  /// No description provided for @noPriceData.
  ///
  /// In en, this message translates to:
  /// **'No price data available'**
  String get noPriceData;

  /// No description provided for @noPromotions.
  ///
  /// In en, this message translates to:
  /// **'No active promotions'**
  String get noPromotions;

  /// No description provided for @promotionEnds.
  ///
  /// In en, this message translates to:
  /// **'Ends'**
  String get promotionEnds;

  /// No description provided for @discountRate.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discountRate;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @myLists.
  ///
  /// In en, this message translates to:
  /// **'My Lists'**
  String get myLists;

  /// No description provided for @newList.
  ///
  /// In en, this message translates to:
  /// **'New List'**
  String get newList;

  /// No description provided for @activeTab.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get activeTab;

  /// No description provided for @completedTab.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completedTab;

  /// No description provided for @templatesTab.
  ///
  /// In en, this message translates to:
  /// **'Templates'**
  String get templatesTab;

  /// No description provided for @noLists.
  ///
  /// In en, this message translates to:
  /// **'No lists yet'**
  String get noLists;

  /// No description provided for @createFirstList.
  ///
  /// In en, this message translates to:
  /// **'Tap + to create your first shopping list'**
  String get createFirstList;

  /// No description provided for @listNameLabel.
  ///
  /// In en, this message translates to:
  /// **'List name'**
  String get listNameLabel;

  /// No description provided for @listNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Friday shopping'**
  String get listNameHint;

  /// No description provided for @startBlank.
  ///
  /// In en, this message translates to:
  /// **'Start blank'**
  String get startBlank;

  /// No description provided for @startFromTemplate.
  ///
  /// In en, this message translates to:
  /// **'From template'**
  String get startFromTemplate;

  /// No description provided for @pasteList.
  ///
  /// In en, this message translates to:
  /// **'Paste list'**
  String get pasteList;

  /// No description provided for @addItem.
  ///
  /// In en, this message translates to:
  /// **'Add item'**
  String get addItem;

  /// No description provided for @compareCart.
  ///
  /// In en, this message translates to:
  /// **'Compare prices'**
  String get compareCart;

  /// No description provided for @shoppingMode.
  ///
  /// In en, this message translates to:
  /// **'Shopping mode'**
  String get shoppingMode;

  /// No description provided for @pasteHint.
  ///
  /// In en, this message translates to:
  /// **'Paste your shopping list here...'**
  String get pasteHint;

  /// No description provided for @parseList.
  ///
  /// In en, this message translates to:
  /// **'Parse list'**
  String get parseList;

  /// No description provided for @parsing.
  ///
  /// In en, this message translates to:
  /// **'Parsing...'**
  String get parsing;

  /// No description provided for @confirmItems.
  ///
  /// In en, this message translates to:
  /// **'Confirm items'**
  String get confirmItems;

  /// No description provided for @unmatchedItem.
  ///
  /// In en, this message translates to:
  /// **'Not matched'**
  String get unmatchedItem;

  /// No description provided for @cartComparisonTitle.
  ///
  /// In en, this message translates to:
  /// **'Price Comparison'**
  String get cartComparisonTitle;

  /// No description provided for @cheapest.
  ///
  /// In en, this message translates to:
  /// **'Cheapest'**
  String get cheapest;

  /// No description provided for @savings.
  ///
  /// In en, this message translates to:
  /// **'Savings'**
  String get savings;

  /// No description provided for @selectChain.
  ///
  /// In en, this message translates to:
  /// **'Shop here'**
  String get selectChain;

  /// No description provided for @activeShoppingTitle.
  ///
  /// In en, this message translates to:
  /// **'Shopping'**
  String get activeShoppingTitle;

  /// No description provided for @finishShopping.
  ///
  /// In en, this message translates to:
  /// **'Finish shopping'**
  String get finishShopping;

  /// No description provided for @deleteList.
  ///
  /// In en, this message translates to:
  /// **'Delete list'**
  String get deleteList;

  /// No description provided for @saveAsTemplate.
  ///
  /// In en, this message translates to:
  /// **'Save as template'**
  String get saveAsTemplate;

  /// No description provided for @refreshPrices.
  ///
  /// In en, this message translates to:
  /// **'Refresh prices'**
  String get refreshPrices;

  /// No description provided for @replacementSuggestions.
  ///
  /// In en, this message translates to:
  /// **'Cheaper alternatives'**
  String get replacementSuggestions;

  /// No description provided for @noReplacements.
  ///
  /// In en, this message translates to:
  /// **'No alternatives found'**
  String get noReplacements;

  /// No description provided for @swap.
  ///
  /// In en, this message translates to:
  /// **'Swap'**
  String get swap;

  /// No description provided for @createList.
  ///
  /// In en, this message translates to:
  /// **'Create list'**
  String get createList;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @items.
  ///
  /// In en, this message translates to:
  /// **'items'**
  String get items;

  /// No description provided for @totalPrice.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get totalPrice;

  /// No description provided for @noMatchedItems.
  ///
  /// In en, this message translates to:
  /// **'No matched items to compare'**
  String get noMatchedItems;

  /// No description provided for @searchTab.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchTab;

  /// No description provided for @listsTab.
  ///
  /// In en, this message translates to:
  /// **'Lists'**
  String get listsTab;

  /// No description provided for @productNotFound.
  ///
  /// In en, this message translates to:
  /// **'No price data found for this product'**
  String get productNotFound;

  /// No description provided for @deleteItem.
  ///
  /// In en, this message translates to:
  /// **'Delete item'**
  String get deleteItem;

  /// No description provided for @greeting.
  ///
  /// In en, this message translates to:
  /// **'Hello!'**
  String get greeting;

  /// No description provided for @tagline.
  ///
  /// In en, this message translates to:
  /// **'We\'re here to find the best prices'**
  String get tagline;

  /// No description provided for @newListCardTitle.
  ///
  /// In en, this message translates to:
  /// **'New Shopping List'**
  String get newListCardTitle;

  /// No description provided for @newListCardSubtitle.
  ///
  /// In en, this message translates to:
  /// **'All your shopping in one place, with the best prices'**
  String get newListCardSubtitle;

  /// No description provided for @baseListsTitle.
  ///
  /// In en, this message translates to:
  /// **'Base Lists'**
  String get baseListsTitle;

  /// No description provided for @whatIsBaseList.
  ///
  /// In en, this message translates to:
  /// **'What exactly is a base list?'**
  String get whatIsBaseList;

  /// No description provided for @baseListExplanation.
  ///
  /// In en, this message translates to:
  /// **'Your regular products, ready to buy.'**
  String get baseListExplanation;

  /// No description provided for @createFirstBaseList.
  ///
  /// In en, this message translates to:
  /// **'Let\'s create your first base list'**
  String get createFirstBaseList;

  /// No description provided for @addProductHint.
  ///
  /// In en, this message translates to:
  /// **'Add a product...'**
  String get addProductHint;

  /// No description provided for @popularProductsTitle.
  ///
  /// In en, this message translates to:
  /// **'Popular products'**
  String get popularProductsTitle;

  /// No description provided for @continueToCompare.
  ///
  /// In en, this message translates to:
  /// **'Continue to price comparison'**
  String get continueToCompare;

  /// No description provided for @comparisonResultsTitle.
  ///
  /// In en, this message translates to:
  /// **'Comparison Results'**
  String get comparisonResultsTitle;

  /// No description provided for @productsInCart.
  ///
  /// In en, this message translates to:
  /// **'products in cart'**
  String get productsInCart;

  /// No description provided for @cheapestLabel.
  ///
  /// In en, this message translates to:
  /// **'Cheapest 🌿'**
  String get cheapestLabel;

  /// No description provided for @seeSavings.
  ///
  /// In en, this message translates to:
  /// **'See savings suggestions'**
  String get seeSavings;

  /// No description provided for @mapTab.
  ///
  /// In en, this message translates to:
  /// **'Map'**
  String get mapTab;

  /// No description provided for @priceComparisonsTab.
  ///
  /// In en, this message translates to:
  /// **'Price Comparisons'**
  String get priceComparisonsTab;

  /// No description provided for @myListsTab.
  ///
  /// In en, this message translates to:
  /// **'My Lists'**
  String get myListsTab;

  /// No description provided for @addedToCart.
  ///
  /// In en, this message translates to:
  /// **'Added to cart'**
  String get addedToCart;

  /// No description provided for @productNotFoundShort.
  ///
  /// In en, this message translates to:
  /// **'Product not found'**
  String get productNotFoundShort;

  /// No description provided for @createShoppingList.
  ///
  /// In en, this message translates to:
  /// **'Create Shopping List'**
  String get createShoppingList;

  /// No description provided for @noItemsYet.
  ///
  /// In en, this message translates to:
  /// **'No items added yet'**
  String get noItemsYet;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'he'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'he':
      return AppLocalizationsHe();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localizations/app_localizations.dart';
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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Pomodoro'**
  String get appName;

  /// No description provided for @titleFieldHint.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get titleFieldHint;

  /// No description provided for @descriptionFieldHint.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get descriptionFieldHint;

  /// No description provided for @taskPriorityCardLabel.
  ///
  /// In en, this message translates to:
  /// **'Task priority'**
  String get taskPriorityCardLabel;

  /// No description provided for @pomodoroCountCardLabel.
  ///
  /// In en, this message translates to:
  /// **'Pomodoro count'**
  String get pomodoroCountCardLabel;

  /// No description provided for @createTaskPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Create task'**
  String get createTaskPageTitle;

  /// No description provided for @editTaskPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit task'**
  String get editTaskPageTitle;

  /// No description provided for @taskListPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Task list'**
  String get taskListPageTitle;

  /// No description provided for @completedTasksHeader.
  ///
  /// In en, this message translates to:
  /// **'Completed tasks'**
  String get completedTasksHeader;

  /// No description provided for @clearAction.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clearAction;

  /// No description provided for @startOverAction.
  ///
  /// In en, this message translates to:
  /// **'Start over'**
  String get startOverAction;

  /// No description provided for @settingsPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsPageTitle;

  /// No description provided for @soundEffectsSettingTitle.
  ///
  /// In en, this message translates to:
  /// **'Sound effects'**
  String get soundEffectsSettingTitle;

  /// No description provided for @timerDestinationLabel.
  ///
  /// In en, this message translates to:
  /// **'Timer'**
  String get timerDestinationLabel;

  /// No description provided for @tasksDestinationLabel.
  ///
  /// In en, this message translates to:
  /// **'Tasks'**
  String get tasksDestinationLabel;

  /// No description provided for @settingsDestinationLabel.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsDestinationLabel;

  /// No description provided for @selectTaskAction.
  ///
  /// In en, this message translates to:
  /// **'Select a task'**
  String get selectTaskAction;

  /// No description provided for @startTimerAction.
  ///
  /// In en, this message translates to:
  /// **'Start timer'**
  String get startTimerAction;

  /// No description provided for @pomodoroTimerText.
  ///
  /// In en, this message translates to:
  /// **'Time to focus!'**
  String get pomodoroTimerText;

  /// No description provided for @shortBreakTimerText.
  ///
  /// In en, this message translates to:
  /// **'Short break'**
  String get shortBreakTimerText;

  /// No description provided for @longBreakTimerText.
  ///
  /// In en, this message translates to:
  /// **'Long break'**
  String get longBreakTimerText;

  /// No description provided for @lowPriorityText.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get lowPriorityText;

  /// No description provided for @mediumPriorityText.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get mediumPriorityText;

  /// No description provided for @highPriorityText.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get highPriorityText;

  /// No description provided for @couldNotCreateTaskFailure.
  ///
  /// In en, this message translates to:
  /// **'Could not create task'**
  String get couldNotCreateTaskFailure;

  /// No description provided for @couldNotEditTaskFailure.
  ///
  /// In en, this message translates to:
  /// **'Could not edit task'**
  String get couldNotEditTaskFailure;

  /// No description provided for @emptyTaskListPlaceholderText.
  ///
  /// In en, this message translates to:
  /// **'Add a task and get started!'**
  String get emptyTaskListPlaceholderText;

  /// No description provided for @githubAction.
  ///
  /// In en, this message translates to:
  /// **'GitHub'**
  String get githubAction;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}

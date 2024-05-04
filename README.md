# Application for analyse blood metobograms by IBMC

## Project structure

```sh
 .
├──  core
│  ├──  application
│  ├──  data
│  ├──  domain
│  └──  presentation
├──  l10n
├──  main.dart
├──  persistence
│  └──  storage
│     └──  first_run
├──  uikit
└──  utils
```

1. core - the main folder with application logic
2. l10n - store the localization files
3. persistence - store and retrieve the preferences
4. uikit - contains the UI system
5. utils - support functions, classes and etc

## Tools and libraries

- FVM: Flutter Version Manager
- Genymotion: Android Emulator for developers
- Self-hosted Sentry instance
---
- SharedPreferences
- GetIt
- Sentry

## Todo

- [X] Create the project structure(Clean Architecture + feature-like)
- [X] First run state
- [X] Sentry
- [ ] Base auth with Firebase/Supabase and special auth with QR codes
- [ ] Main page
- [ ] Analyse page
- [ ] Profile page
- [ ] Settings page

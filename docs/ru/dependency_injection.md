# Dependency Injection

`Dependency Injection` это способ оптимизации зависимостей.
Например, мы создали в main `SharedPreferences.getInstance()`, чтобы передать полученную информацию
нам придется выстраивать цепочку вызовов с передачей данного аргумента.

Эту проблему и решает DI.

## Регистрация сервиса, репозитория и ...

```dart
final sharedPreferences = await SharedPreferences.getInstance();
getIt.registerLazySingleton(() => sharedPreferences);
```

## Использование ранее зарегистрированной сущности

```dart
final _prefs = getIt<SharedPreferences>()
_prefs.getBool("first_run");
```

## Типы регистрации

1. registerSingleton - единичная регистрация(создается сразу)
2. registerLazySingleton - единичная регистрация(создается на момент первого вызова)
3. registerFactory - регистрация каждый раз, когда происходит вызов

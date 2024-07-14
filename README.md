# mobile

A new Flutter project.

## Flutter version

```console
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.22.2, on macOS 14.3 23D56 darwin-x64, locale en-PK)
[✓] Android toolchain - develop for Android devices (Android SDK version 34.0.0)
[✓] Xcode - develop for iOS and macOS (Xcode 15.4)
[✓] Chrome - develop for the web
[✓] Android Studio (version 2023.3)
[✓] IntelliJ IDEA Community Edition (version 2024.1.2)
[✓] VS Code (version 1.91.1)
[✓] Connected device (3 available)
    ! Error: Browsing on the local area network for Javeed Ishaq’s iPhone. Ensure the device is unlocked and attached
      with a cable or associated with the same local area network as this Mac.
      The device must be opted into Developer Mode to connect wirelessly. (code -27)
[✓] Network resources
```

## Generate injectable

```console
flutter packages pub run build_runner build
```

## Generate Envied

```console
dart run build_runner clean
dart run build_runner build --delete-conflicting-outputs
```

## Generate JSON Serializables

```console
flutter pub run build_runner build --delete-conflicting-outputs
```

## Generate Localizations

```console
flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart -S assets/translations
```

## Generate Launcher Icons

```console
flutter pub run flutter_launcher_icons -f flutter_launcher_icons.yaml
```

## Generate Splash Screen

```console
dart run flutter_native_splash:create --path=flutter_native_splash.yaml
```

## Testing Firebase ANalytics in Debug View

```console
adb shell setprop debug.firebase.analytics.app packagename
```

## geo-coder api

```console
GET https://geocoding-api.open-meteo.com/v1/search?name=Karachi&count=1&language=en&format=json
```

## weather api

```console
GET  GET https://api.open-meteo.com/v1/forecast?latitude=24.8608&longitude=67.0104&current_weather=true
```

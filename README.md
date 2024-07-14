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

## Project Structure

```

📦lib
┣ 📂app
┃ ┣ 📂core
┃ ┃ ┣ 📂animations
┃ ┃ ┃ ┣ 📜animated_slide_fadein.dart
┃ ┃ ┃ ┣ 📜fade_indexed_stack.dart
┃ ┃ ┃ ┗ 📜fade_indexed_widget.dart
┃ ┃ ┣ 📂connectivity
┃ ┃ ┃ ┗ 📜connectivity.dart
┃ ┃ ┣ 📂constants
┃ ┃ ┃ ┣ 📜app_constants.dart
┃ ┃ ┃ ┗ 📜storage.dart
┃ ┃ ┣ 📂cubit
┃ ┃ ┃ ┣ 📜base_cubit.dart
┃ ┃ ┃ ┗ 📜cubit.dart
┃ ┃ ┣ 📂enum
┃ ┃ ┃ ┣ 📜temperature_units.dart
┃ ┃ ┃ ┗ 📜weather_condition.dart
┃ ┃ ┣ 📂env
┃ ┃ ┃ ┣ 📜app_env.dart
┃ ┃ ┃ ┣ 📜app_env_fields.dart
┃ ┃ ┃ ┣ 📜dev_env.dart
┃ ┃ ┃ ┣ 📜dev_env.g.dart
┃ ┃ ┃ ┣ 📜release_env.dart
┃ ┃ ┃ ┣ 📜release_env.g.dart
┃ ┃ ┃ ┣ 📜uat_env.dart
┃ ┃ ┃ ┗ 📜uat_env.g.dart
┃ ┃ ┣ 📂error
┃ ┃ ┃ ┗ 📜error.dart
┃ ┃ ┣ 📂exceptions
┃ ┃ ┃ ┣ 📜log_out_failure.dart
┃ ┃ ┃ ┣ 📜login_with_email_and_password_failure.dart
┃ ┃ ┃ ┗ 📜login_with_google_failure.dart
┃ ┃ ┣ 📂extensions
┃ ┃ ┃ ┣ 📜log_extension.dart
┃ ┃ ┃ ┣ 📜string_hardcoded.dart
┃ ┃ ┃ ┣ 📜temprature_units.dart
┃ ┃ ┃ ┗ 📜to_condition.dart
┃ ┃ ┣ 📂helpers
┃ ┃ ┃ ┣ 📜.DS_Store
┃ ┃ ┃ ┣ 📜cache_client.dart
┃ ┃ ┃ ┣ 📜helper_functions.dart
┃ ┃ ┃ ┣ 📜pref_keys.dart
┃ ┃ ┃ ┗ 📜target.dart
┃ ┃ ┣ 📂injection
┃ ┃ ┃ ┣ 📜injection.config.dart
┃ ┃ ┃ ┗ 📜injection.dart
┃ ┃ ┣ 📂logger
┃ ┃ ┃ ┗ 📜logger.dart
┃ ┃ ┣ 📂network
┃ ┃ ┃ ┣ 📜connection_util.dart
┃ ┃ ┃ ┣ 📜dio_request_logger.dart
┃ ┃ ┃ ┗ 📜network.dart
┃ ┃ ┣ 📂notifications
┃ ┃ ┃ ┗ 📜notification_service.dart
┃ ┃ ┣ 📂router
┃ ┃ ┃ ┣ 📜router.dart
┃ ┃ ┃ ┣ 📜routes.dart
┃ ┃ ┃ ┗ 📜values.dart
┃ ┃ ┣ 📂services
┃ ┃ ┃ ┗ 📜.DS_Store
┃ ┃ ┣ 📂storage
┃ ┃ ┃ ┣ 📜secure_storage.dart
┃ ┃ ┃ ┗ 📜storage.dart
┃ ┃ ┣ 📂util
┃ ┃ ┃ ┣ 📜observer_utils.dart
┃ ┃ ┃ ┗ 📜ui_util.dart
┃ ┃ ┗ 📜.DS_Store
┃ ┣ 📜.DS_Store
┃ ┗ 📜app.dart
┣ 📂features
┃ ┣ 📂app
┃ ┃ ┗ 📂presentation
┃ ┃ ┃ ┣ 📂screens
┃ ┃ ┃ ┃ ┗ 📜splash_screen.dart
┃ ┃ ┃ ┣ 📂views
┃ ┃ ┃ ┗ 📂widgets
┃ ┣ 📂common
┃ ┃ ┣ 📂infrastructure
┃ ┃ ┃ ┗ 📂dtos
┃ ┃ ┗ 📂presentation
┃ ┃ ┃ ┣ 📂cubit
┃ ┃ ┃ ┃ ┗ 📜network_cubit.dart
┃ ┃ ┃ ┣ 📂views
┃ ┃ ┃ ┗ 📂widgets
┃ ┃ ┃ ┃ ┣ 📜custom_image_view.dart
┃ ┃ ┃ ┃ ┣ 📜default_image.dart
┃ ┃ ┃ ┃ ┣ 📜default_loading.dart
┃ ┃ ┃ ┃ ┣ 📜horizontal_space.dart
┃ ┃ ┃ ┃ ┗ 📜vertical_space.dart
┃ ┣ 📂theme
┃ ┃ ┣ 📂cubit
┃ ┃ ┃ ┗ 📜theme_cubit.dart
┃ ┃ ┗ 📜theme.dart
┃ ┗ 📂weather
┃ ┃ ┣ 📂domain
┃ ┃ ┃ ┣ 📂entities
┃ ┃ ┃ ┃ ┣ 📜location_entity.dart
┃ ┃ ┃ ┃ ┗ 📜weather_entity.dart
┃ ┃ ┃ ┗ 📂repositories
┃ ┃ ┃ ┃ ┗ 📜weather_repository.dart
┃ ┃ ┣ 📂infrastructure
┃ ┃ ┃ ┣ 📂data_sources
┃ ┃ ┃ ┃ ┗ 📜weather_remote_data_source.dart
┃ ┃ ┃ ┣ 📂dtos
┃ ┃ ┃ ┃ ┣ 📜location_dto.dart
┃ ┃ ┃ ┃ ┣ 📜location_dto.g.dart
┃ ┃ ┃ ┃ ┣ 📜weather_dto.dart
┃ ┃ ┃ ┃ ┗ 📜weather_dto.g.dart
┃ ┃ ┃ ┗ 📂repositories
┃ ┃ ┃ ┃ ┗ 📜weather_repository.dart
┃ ┃ ┗ 📂presentation
┃ ┃ ┃ ┣ 📂cubit
┃ ┃ ┃ ┃ ┣ 📜weather_cubit.dart
┃ ┃ ┃ ┃ ┗ 📜weather_state.dart
┃ ┃ ┃ ┣ 📂screens
┃ ┃ ┃ ┃ ┣ 📜search_screen.dart
┃ ┃ ┃ ┃ ┗ 📜weather_screen.dart
┃ ┃ ┃ ┣ 📂views
┃ ┃ ┃ ┃ ┗ 📜weather_view.dart
┃ ┃ ┃ ┗ 📂widgets
┃ ┃ ┃ ┃ ┣ 📜weather_empty.dart
┃ ┃ ┃ ┃ ┣ 📜weather_error.dart
┃ ┃ ┃ ┃ ┣ 📜weather_loading.dart
┃ ┃ ┃ ┃ ┗ 📜weather_populated.dart
┣ 📂generated
┃ ┗ 📜locale_keys.g.dart
┣ 📂util
┃ ┣ 📜bold_generator.dart
┃ ┗ 📜date_time_utils.dart
┣ 📜.DS_Store
┗ 📜main.dart

```

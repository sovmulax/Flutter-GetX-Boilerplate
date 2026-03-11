# Flutter-GetX-Boilerplate

A Flutter Clean Architecture Using [GetX](https://github.com/jonataslaw/getx).

## Architecture

![alt text](assets/architecture.png)

## Flux de données

![alt text](assets/data_flux.png)

## Project Structure

```
|-- lib
    |-- main.dart
    |-- api
    |   |-- config
    |   |   |-- api_endpoints.dart
    |   |   |-- base.dart
    |   |-- interceptor
    |   |   |-- request_interceptor.dart
    |   |   |-- response_interceptor.dart
    |   |-- modules
    |       |-- auth_provider.dart
    |-- controllers
    |   |-- auth
    |   |   |-- binding_auth.dart
    |   |   |-- controller_auth.dart
    |   |-- profile
    |   |   |-- binding_profile.dart
    |   |   |-- controller_profile.dart
    |   |-- splash
    |       |-- binding_splash.dart
    |       |-- controller_splash.dart
    |-- core
    |   |-- constants
    |   |   |-- app_constant.dart
    |   |   |-- color_constant.dart
    |   |   |-- session_keys.dart
    |   |-- localization
    |   |   |-- app_localization.dart
    |   |   |-- langues
    |   |       |-- en_translations.dart
    |   |       |-- fr_translations.dart
    |   |       |-- pt_translations.dart
    |   |-- theme
    |   |   |-- app_text_styles.dart
    |   |   |-- app_theme.dart
    |   |   |-- theme_constants.dart
    |   |-- utils
    |   |   |-- custom_image_view.dart
    |   |   |-- custom_log.dart
    |   |   |-- helpers.dart
    |   |   |-- init_binding.dart
    |   |   |-- init_instance.dart
    |   |   |-- preferences.dart
    |   |   |-- size_utils.dart
    |   |   |-- validation_functions.dart
    |   |   |-- validator.dart
    |   |-- widgets
    |       |-- back_button.dart
    |       |-- custom_button.dart
    |       |-- footer.dart
    |       |-- loader.dart
    |       |-- snackbar.dart
    |       |-- space.dart
    |       |-- form
    |           |-- custom_checkbox.dart
    |           |-- custom_drop_down.dart
    |           |-- custom_icon_button.dart
    |           |-- custom_phone_number.dart
    |           |-- custom_radio_button.dart
    |           |-- custom_switch.dart
    |           |-- custom_text_form_field.dart
    |-- Models
    |   |-- 0x
    |   |   |-- error_reponse.dart
    |   |   |-- selection_popup_model.dart
    |   |-- auth
    |       |-- req_auth.dart
    |       |-- req_auth.g.dart
    |       |-- res_auth.dart
    |-- routes
    |   |-- app_pages.dart
    |   |-- app_routes.dart
    |-- src
    |   |-- exports.dart_exporter.dart
    |-- views
        |-- splash.dart
        |-- auth
        |   |-- auth.dart
        |-- profile
            |-- profile.dart
```

## Features

- Integrating Unit Test (To-do).
- Models management
- Create an easy to use API provider with [GetConnect](https://github.com/jonataslaw/getx#getconnect).

### [Sovmulax](https://github.com/sovmulax)

### Description

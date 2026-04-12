# Teamify

A Flutter graduation project.

## Getting Started

This project is built using Flutter.

Resources:
- https://docs.flutter.dev/get-started/learn-flutter
- https://docs.flutter.dev/get-started/codelab
- https://docs.flutter.dev
```
Teamify
├─ .metadata
├─ analysis_options.yaml
├─ android
│  ├─ .kotlin
│  │  └─ sessions
│  ├─ app
│  │  ├─ build.gradle.kts
│  │  ├─ google-services.json
│  │  └─ src
│  │     ├─ debug
│  │     │  └─ AndroidManifest.xml
│  │     ├─ main
│  │     │  ├─ AndroidManifest.xml
│  │     │  ├─ java
│  │     │  │  └─ io
│  │     │  │     └─ flutter
│  │     │  │        └─ plugins
│  │     │  ├─ kotlin
│  │     │  │  └─ com
│  │     │  │     └─ example
│  │     │  │        └─ teamify
│  │     │  │           └─ MainActivity.kt
│  │     │  └─ res
│  │     │     ├─ drawable
│  │     │     │  └─ launch_background.xml
│  │     │     ├─ drawable-v21
│  │     │     │  └─ launch_background.xml
│  │     │     ├─ mipmap-hdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-mdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xxhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xxxhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ values
│  │     │     │  └─ styles.xml
│  │     │     └─ values-night
│  │     │        └─ styles.xml
│  │     └─ profile
│  │        └─ AndroidManifest.xml
│  ├─ build.gradle.kts
│  ├─ gradle
│  │  └─ wrapper
│  │     └─ gradle-wrapper.properties
│  ├─ gradle.properties
│  └─ settings.gradle.kts
├─ assets
│  └─ images
│     ├─ Icons
│     │  ├─ Apple.png
│     │  ├─ Github.png
│     │  ├─ Google.png
│     │  └─ Linkedin.png
│     ├─ logo.png
│     ├─ onboarding1.png
│     ├─ onboarding2.png
│     ├─ onboarding3.png
│     └─ SignUp
│        ├─ 1.png
│        ├─ 2.png
│        └─ 3.png
├─ devtools_options.yaml
├─ ios
│  ├─ Flutter
│  │  ├─ AppFrameworkInfo.plist
│  │  ├─ Debug.xcconfig
│  │  └─ Release.xcconfig
│  ├─ Runner
│  │  ├─ AppDelegate.swift
│  │  ├─ Assets.xcassets
│  │  │  ├─ AppIcon.appiconset
│  │  │  │  ├─ Contents.json
│  │  │  │  ├─ Icon-App-1024x1024@1x.png
│  │  │  │  ├─ Icon-App-20x20@1x.png
│  │  │  │  ├─ Icon-App-20x20@2x.png
│  │  │  │  ├─ Icon-App-20x20@3x.png
│  │  │  │  ├─ Icon-App-29x29@1x.png
│  │  │  │  ├─ Icon-App-29x29@2x.png
│  │  │  │  ├─ Icon-App-29x29@3x.png
│  │  │  │  ├─ Icon-App-40x40@1x.png
│  │  │  │  ├─ Icon-App-40x40@2x.png
│  │  │  │  ├─ Icon-App-40x40@3x.png
│  │  │  │  ├─ Icon-App-60x60@2x.png
│  │  │  │  ├─ Icon-App-60x60@3x.png
│  │  │  │  ├─ Icon-App-76x76@1x.png
│  │  │  │  ├─ Icon-App-76x76@2x.png
│  │  │  │  └─ Icon-App-83.5x83.5@2x.png
│  │  │  └─ LaunchImage.imageset
│  │  │     ├─ Contents.json
│  │  │     ├─ LaunchImage.png
│  │  │     ├─ LaunchImage@2x.png
│  │  │     ├─ LaunchImage@3x.png
│  │  │     └─ README.md
│  │  ├─ Base.lproj
│  │  │  ├─ LaunchScreen.storyboard
│  │  │  └─ Main.storyboard
│  │  ├─ Info.plist
│  │  ├─ Runner-Bridging-Header.h
│  │  └─ SceneDelegate.swift
│  ├─ Runner.xcodeproj
│  │  ├─ project.pbxproj
│  │  ├─ project.xcworkspace
│  │  │  ├─ contents.xcworkspacedata
│  │  │  └─ xcshareddata
│  │  │     ├─ IDEWorkspaceChecks.plist
│  │  │     └─ WorkspaceSettings.xcsettings
│  │  └─ xcshareddata
│  │     └─ xcschemes
│  │        └─ Runner.xcscheme
│  ├─ Runner.xcworkspace
│  │  ├─ contents.xcworkspacedata
│  │  └─ xcshareddata
│  │     ├─ IDEWorkspaceChecks.plist
│  │     └─ WorkspaceSettings.xcsettings
│  └─ RunnerTests
│     └─ RunnerTests.swift
├─ lib
│  ├─ core
│  │  ├─ constants
│  │  │  └─ app_constants.dart
│  │  ├─ di
│  │  │  └─ service_locator.dart
│  │  ├─ errors
│  │  │  ├─ exceptions.dart
│  │  │  └─ failures.dart
│  │  ├─ network
│  │  │  ├─ api_client.dart
│  │  │  ├─ dio_client.dart
│  │  │  ├─ network_info.dart
│  │  │  └─ role_storage.dart
│  │  ├─ routing
│  │  │  └─ app_router.dart
│  │  ├─ storage
│  │  │  └─ token_storage.dart
│  │  ├─ usecase
│  │  │  └─ usecase.dart
│  │  └─ utils
│  │     ├─ helpers.dart
│  │     └─ validators.dart
│  ├─ features
│  │  ├─ auth
│  │  │  ├─ data
│  │  │  │  ├─ datasource
│  │  │  │  │  ├─ auth_local_datasource.dart
│  │  │  │  │  └─ auth_remote_datasource.dart
│  │  │  │  ├─ google_auth_service.dart
│  │  │  │  ├─ models
│  │  │  │  │  └─ user_model.dart
│  │  │  │  └─ repositories
│  │  │  │     └─ auth_repository_impl.dart
│  │  │  ├─ domain
│  │  │  │  ├─ entities
│  │  │  │  │  └─ user.dart
│  │  │  │  ├─ repositories
│  │  │  │  │  └─ auth_repository.dart
│  │  │  │  └─ usecases
│  │  │  │     ├─ AppleLoginUseCase.dart
│  │  │  │     ├─ check_auth_usecase.dart
│  │  │  │     ├─ GitHubLoginUseCase.dart
│  │  │  │     ├─ GoogleLoginUseCase.dart
│  │  │  │     ├─ LinkedinLoginUseCase.dart
│  │  │  │     ├─ login_usecase.dart
│  │  │  │     ├─ logout_usecase.dart
│  │  │  │     └─ register_usecase.dart
│  │  │  └─ presentation
│  │  │     ├─ cubit
│  │  │     │  ├─ auth_cubit.dart
│  │  │     │  ├─ auth_guard_cubit.dart
│  │  │     │  ├─ auth_guard_state.dart
│  │  │     │  ├─ auth_state.dart
│  │  │     │  └─ login_cubit.dart
│  │  │     ├─ provider
│  │  │     │  └─ auth_provider.dart
│  │  │     ├─ screens
│  │  │     │  ├─ choose_role_screen.dart
│  │  │     │  ├─ login_screen.dart
│  │  │     │  ├─ otp_screen.dart
│  │  │     │  ├─ register_screen.dart
│  │  │     │  ├─ reset_password_screen.dart
│  │  │     │  ├─ success_page.dart
│  │  │     │  └─ verify_email_screen.dart
│  │  │     └─ widgets
│  │  │        ├─ auth_button.dart
│  │  │        ├─ field_card.dart
│  │  │        ├─ field_selection_step.dart
│  │  │        ├─ freelancer_details_step.dart
│  │  │        ├─ guest_details_step.dart
│  │  │        ├─ role_selector.dart
│  │  │        ├─ skills_selection_step.dart
│  │  │        ├─ skill_chip.dart
│  │  │        ├─ stat_card.dart
│  │  │        ├─ student_details_step.dart
│  │  │        └─ task_list_tile.dart
│  │  ├─ chat
│  │  │  └─ data
│  │  ├─ home
│  │  │  ├─ 2
│  │  │  │  └─ pla.dart
│  │  │  └─ presentation
│  │  │     ├─ home_screen.dart
│  │  │     └─ widgets
│  │  │        ├─ activity_item.dart
│  │  │        ├─ header_widget.dart
│  │  │        ├─ project_card.dart
│  │  │        ├─ stat_card.dart
│  │  │        └─ task_item.dart
│  │  ├─ onboarding
│  │  │  └─ presentation
│  │  │     └─ screens
│  │  │        └─ onboarding_screen.dart
│  │  ├─ projects
│  │  │  ├─ data
│  │  │  │  ├─ datasources
│  │  │  │  │  └─ project_remote_data_source.dart
│  │  │  │  ├─ models
│  │  │  │  │  └─ project_model.dart
│  │  │  │  └─ repositories
│  │  │  │     └─ project_repository_impl.dart
│  │  │  ├─ domain
│  │  │  │  ├─ entities
│  │  │  │  │  ├─ activity_entity.dart
│  │  │  │  │  ├─ project.dart
│  │  │  │  │  └─ project_entity.dart
│  │  │  │  ├─ repositories
│  │  │  │  │  └─ project_repository.dart
│  │  │  │  └─ usecases
│  │  │  │     └─ get_projects_usecase.dart
│  │  │  └─ presentation
│  │  │     ├─ cubit
│  │  │     │  ├─ activity_cubit.dart
│  │  │     │  ├─ activity_state.dart
│  │  │     │  ├─ projects_cubit.dart
│  │  │     │  └─ projects_state.dart
│  │  │     └─ screens
│  │  │        ├─ projects_screen.dart
│  │  │        └─ project_details_screen.dart
│  │  ├─ splash
│  │  │  └─ presentation
│  │  │     └─ screens
│  │  │        └─ splash_screen.dart
│  │  └─ tasks
│  │     ├─ data
│  │     │  ├─ datasources
│  │     │  │  └─ task_remote_data_source.dart
│  │     │  ├─ models
│  │     │  │  └─ task_model.dart
│  │     │  └─ repositories
│  │     │     └─ task_repository_impl.dart
│  │     ├─ domain
│  │     │  ├─ entities
│  │     │  │  └─ task_entity.dart
│  │     │  ├─ repositories
│  │     │  │  └─ task_repository.dart
│  │     │  └─ usecases
│  │     │     ├─ add_task_usecase.dart
│  │     │     └─ get_tasks_usecase.dart
│  │     └─ presentation
│  │        ├─ cubit
│  │        │  ├─ task_cubit.dart
│  │        │  └─ task_state.dart
│  │        ├─ pages
│  │        │  ├─ add_project_screen.dart
│  │        │  ├─ add_task_screen.dart
│  │        │  ├─ task_details_screen.dart
│  │        │  └─ task_list_screen.dart
│  │        └─ widgets
│  │           ├─ stat_card.dart
│  │           └─ task_list_tile.dart
│  └─ main.dart
├─ linux
│  ├─ CMakeLists.txt
│  ├─ flutter
│  │  ├─ CMakeLists.txt
│  │  └─ ephemeral
│  │     └─ .plugin_symlinks
│  │        ├─ connectivity_plus
│  │        │  ├─ android
│  │        │  │  ├─ build.gradle
│  │        │  │  ├─ gradle
│  │        │  │  │  └─ wrapper
│  │        │  │  │     └─ gradle-wrapper.properties
│  │        │  │  ├─ gradle.properties
│  │        │  │  ├─ settings.gradle
│  │        │  │  └─ src
│  │        │  │     └─ main
│  │        │  │        ├─ AndroidManifest.xml
│  │        │  │        └─ java
│  │        │  │           └─ dev
│  │        │  │              └─ fluttercommunity
│  │        │  │                 └─ plus
│  │        │  │                    └─ connectivity
│  │        │  │                       ├─ Connectivity.java
│  │        │  │                       ├─ ConnectivityBroadcastReceiver.java
│  │        │  │                       ├─ ConnectivityMethodChannelHandler.java
│  │        │  │                       └─ ConnectivityPlugin.java
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ analysis_options.yaml
│  │        │  │  ├─ android
│  │        │  │  │  ├─ app
│  │        │  │  │  │  ├─ build.gradle
│  │        │  │  │  │  └─ src
│  │        │  │  │  │     └─ main
│  │        │  │  │  │        ├─ AndroidManifest.xml
│  │        │  │  │  │        ├─ java
│  │        │  │  │  │        │  └─ io
│  │        │  │  │  │        │     └─ flutter
│  │        │  │  │  │        │        └─ plugins
│  │        │  │  │  │        │           └─ connectivityexample
│  │        │  │  │  │        │              └─ FlutterActivityTest.java
│  │        │  │  │  │        └─ res
│  │        │  │  │  │           ├─ mipmap-hdpi
│  │        │  │  │  │           │  └─ ic_launcher.png
│  │        │  │  │  │           ├─ mipmap-mdpi
│  │        │  │  │  │           │  └─ ic_launcher.png
│  │        │  │  │  │           ├─ mipmap-xhdpi
│  │        │  │  │  │           │  └─ ic_launcher.png
│  │        │  │  │  │           ├─ mipmap-xxhdpi
│  │        │  │  │  │           │  └─ ic_launcher.png
│  │        │  │  │  │           └─ mipmap-xxxhdpi
│  │        │  │  │  │              └─ ic_launcher.png
│  │        │  │  │  ├─ build.gradle
│  │        │  │  │  ├─ gradle
│  │        │  │  │  │  └─ wrapper
│  │        │  │  │  │     └─ gradle-wrapper.properties
│  │        │  │  │  ├─ gradle.properties
│  │        │  │  │  └─ settings.gradle
│  │        │  │  ├─ integration_test
│  │        │  │  │  └─ connectivity_plus_test.dart
│  │        │  │  ├─ ios
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ AppFrameworkInfo.plist
│  │        │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  └─ Release.xcconfig
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  ├─ AppIcon.appiconset
│  │        │  │  │  │  │  │  ├─ Contents.json
│  │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
│  │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
│  │        │  │  │  │  │  └─ LaunchImage.imageset
│  │        │  │  │  │  │     ├─ Contents.json
│  │        │  │  │  │  │     ├─ LaunchImage.png
│  │        │  │  │  │  │     ├─ LaunchImage@2x.png
│  │        │  │  │  │  │     ├─ LaunchImage@3x.png
│  │        │  │  │  │  │     └─ README.md
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  ├─ LaunchScreen.storyboard
│  │        │  │  │  │  │  └─ Main.storyboard
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  └─ Runner-Bridging-Header.h
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  │     ├─ swiftpm
│  │        │  │  │  │  │     │  └─ configuration
│  │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │     ├─ swiftpm
│  │        │  │  │  │     │  └─ configuration
│  │        │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ macos
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │        │  │  │  │  └─ Flutter-Release.xcconfig
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  └─ AppIcon.appiconset
│  │        │  │  │  │  │     ├─ app_icon_1024.png
│  │        │  │  │  │  │     ├─ app_icon_128.png
│  │        │  │  │  │  │     ├─ app_icon_16.png
│  │        │  │  │  │  │     ├─ app_icon_256.png
│  │        │  │  │  │  │     ├─ app_icon_32.png
│  │        │  │  │  │  │     ├─ app_icon_512.png
│  │        │  │  │  │  │     ├─ app_icon_64.png
│  │        │  │  │  │  │     └─ Contents.json
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  └─ MainMenu.xib
│  │        │  │  │  │  ├─ Configs
│  │        │  │  │  │  │  ├─ AppInfo.xcconfig
│  │        │  │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  │  ├─ Release.xcconfig
│  │        │  │  │  │  │  └─ Warnings.xcconfig
│  │        │  │  │  │  ├─ DebugProfile.entitlements
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ MainFlutterWindow.swift
│  │        │  │  │  │  └─ Release.entitlements
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  │     └─ swiftpm
│  │        │  │  │  │  │        └─ configuration
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │     └─ swiftpm
│  │        │  │  │  │        └─ configuration
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  ├─ web
│  │        │  │  │  ├─ favicon.png
│  │        │  │  │  ├─ icons
│  │        │  │  │  │  ├─ Icon-192.png
│  │        │  │  │  │  ├─ Icon-512.png
│  │        │  │  │  │  ├─ Icon-maskable-192.png
│  │        │  │  │  │  └─ Icon-maskable-512.png
│  │        │  │  │  ├─ index.html
│  │        │  │  │  └─ manifest.json
│  │        │  │  └─ windows
│  │        │  │     ├─ CMakeLists.txt
│  │        │  │     ├─ flutter
│  │        │  │     │  └─ CMakeLists.txt
│  │        │  │     └─ runner
│  │        │  │        ├─ CMakeLists.txt
│  │        │  │        ├─ flutter_window.cpp
│  │        │  │        ├─ flutter_window.h
│  │        │  │        ├─ main.cpp
│  │        │  │        ├─ resource.h
│  │        │  │        ├─ resources
│  │        │  │        │  └─ app_icon.ico
│  │        │  │        ├─ runner.exe.manifest
│  │        │  │        ├─ Runner.rc
│  │        │  │        ├─ run_loop.cpp
│  │        │  │        ├─ run_loop.h
│  │        │  │        ├─ utils.cpp
│  │        │  │        ├─ utils.h
│  │        │  │        ├─ win32_window.cpp
│  │        │  │        └─ win32_window.h
│  │        │  ├─ ios
│  │        │  │  ├─ connectivity_plus
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ connectivity_plus
│  │        │  │  │        ├─ ConnectivityPlusPlugin.swift
│  │        │  │  │        ├─ ConnectivityProvider.swift
│  │        │  │  │        ├─ PathMonitorConnectivityProvider.swift
│  │        │  │  │        └─ PrivacyInfo.xcprivacy
│  │        │  │  └─ connectivity_plus.podspec
│  │        │  ├─ lib
│  │        │  │  ├─ connectivity_plus.dart
│  │        │  │  └─ src
│  │        │  │     ├─ connectivity_plus_linux.dart
│  │        │  │     ├─ connectivity_plus_web.dart
│  │        │  │     └─ web
│  │        │  │        └─ dart_html_connectivity_plugin.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ macos
│  │        │  │  ├─ connectivity_plus
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ connectivity_plus
│  │        │  │  │        ├─ ConnectivityPlusPlugin.swift
│  │        │  │  │        ├─ ConnectivityProvider.swift
│  │        │  │  │        ├─ PathMonitorConnectivityProvider.swift
│  │        │  │  │        └─ PrivacyInfo.xcprivacy
│  │        │  │  └─ connectivity_plus.podspec
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  ├─ test
│  │        │  │  ├─ connectivity_plus_linux_test.dart
│  │        │  │  ├─ connectivity_plus_linux_test.mocks.dart
│  │        │  │  └─ connectivity_test.dart
│  │        │  └─ windows
│  │        │     ├─ CMakeLists.txt
│  │        │     ├─ connectivity_plus_plugin.cpp
│  │        │     ├─ include
│  │        │     │  └─ connectivity_plus
│  │        │     │     ├─ connectivity_plus_windows_plugin.h
│  │        │     │     └─ network_manager.h
│  │        │     └─ network_manager.cpp
│  │        ├─ desktop_webview_window
│  │        │  ├─ analysis_options.yaml
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ analysis_options.yaml
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ macos
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │        │  │  │  │  └─ Flutter-Release.xcconfig
│  │        │  │  │  ├─ Podfile
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  └─ AppIcon.appiconset
│  │        │  │  │  │  │     ├─ app_icon_1024.png
│  │        │  │  │  │  │     ├─ app_icon_128.png
│  │        │  │  │  │  │     ├─ app_icon_16.png
│  │        │  │  │  │  │     ├─ app_icon_256.png
│  │        │  │  │  │  │     ├─ app_icon_32.png
│  │        │  │  │  │  │     ├─ app_icon_512.png
│  │        │  │  │  │  │     ├─ app_icon_64.png
│  │        │  │  │  │  │     └─ Contents.json
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  └─ MainMenu.xib
│  │        │  │  │  │  ├─ Configs
│  │        │  │  │  │  │  ├─ AppInfo.xcconfig
│  │        │  │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  │  ├─ Release.xcconfig
│  │        │  │  │  │  │  └─ Warnings.xcconfig
│  │        │  │  │  │  ├─ DebugProfile.entitlements
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ MainFlutterWindow.swift
│  │        │  │  │  │  └─ Release.entitlements
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  └─ Runner.xcworkspace
│  │        │  │  │     ├─ contents.xcworkspacedata
│  │        │  │  │     └─ xcshareddata
│  │        │  │  │        └─ IDEWorkspaceChecks.plist
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  ├─ test
│  │        │  │  │  └─ widget_test.dart
│  │        │  │  ├─ test_web_pages
│  │        │  │  │  ├─ login.html
│  │        │  │  │  └─ test.html
│  │        │  │  └─ windows
│  │        │  │     ├─ CMakeLists.txt
│  │        │  │     ├─ flutter
│  │        │  │     │  └─ CMakeLists.txt
│  │        │  │     └─ runner
│  │        │  │        ├─ CMakeLists.txt
│  │        │  │        ├─ flutter_window.cpp
│  │        │  │        ├─ flutter_window.h
│  │        │  │        ├─ main.cpp
│  │        │  │        ├─ resource.h
│  │        │  │        ├─ resources
│  │        │  │        │  └─ app_icon.ico
│  │        │  │        ├─ runner.exe.manifest
│  │        │  │        ├─ Runner.rc
│  │        │  │        ├─ utils.cpp
│  │        │  │        ├─ utils.h
│  │        │  │        ├─ win32_window.cpp
│  │        │  │        └─ win32_window.h
│  │        │  ├─ lib
│  │        │  │  ├─ desktop_webview_window.dart
│  │        │  │  └─ src
│  │        │  │     ├─ create_configuration.dart
│  │        │  │     ├─ message_channel.dart
│  │        │  │     ├─ title_bar.dart
│  │        │  │     ├─ webview.dart
│  │        │  │     └─ webview_impl.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ linux
│  │        │  │  ├─ CMakeLists.txt
│  │        │  │  ├─ desktop_webview_window_plugin.cc
│  │        │  │  ├─ include
│  │        │  │  │  └─ desktop_webview_window
│  │        │  │  │     └─ desktop_webview_window_plugin.h
│  │        │  │  ├─ message_channel_plugin.cc
│  │        │  │  ├─ message_channel_plugin.h
│  │        │  │  ├─ webview_window.cc
│  │        │  │  └─ webview_window.h
│  │        │  ├─ macos
│  │        │  │  ├─ Classes
│  │        │  │  │  ├─ DesktopWebviewWindowPlugin.swift
│  │        │  │  │  ├─ MessageChannelPlugin.swift
│  │        │  │  │  ├─ WebViewLayoutController.swift
│  │        │  │  │  ├─ WebViewLayoutController.xib
│  │        │  │  │  └─ WebviewWindowController.swift
│  │        │  │  └─ desktop_webview_window.podspec
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  ├─ run_local_test_server.sh
│  │        │  ├─ test
│  │        │  │  └─ desktop_webview_window_test.dart
│  │        │  └─ windows
│  │        │     ├─ CMakeLists.txt
│  │        │     ├─ desktop_webview_window_plugin.cpp
│  │        │     ├─ flutter_view.cc
│  │        │     ├─ flutter_view.h
│  │        │     ├─ include
│  │        │     │  └─ desktop_webview_window
│  │        │     │     └─ desktop_webview_window_plugin.h
│  │        │     ├─ libs
│  │        │     │  └─ x64
│  │        │     │     ├─ WebView2Loader.dll
│  │        │     │     └─ WebView2Loader.dll.lib
│  │        │     ├─ message_channel_plugin.cc
│  │        │     ├─ message_channel_plugin.h
│  │        │     ├─ strconv.h
│  │        │     ├─ utils.cc
│  │        │     ├─ utils.h
│  │        │     ├─ WebView2.h
│  │        │     ├─ WebView2EnvironmentOptions.h
│  │        │     ├─ webview_window.cc
│  │        │     ├─ webview_window.h
│  │        │     ├─ web_view.cc
│  │        │     ├─ web_view.h
│  │        │     ├─ web_view_window_plugin.cc
│  │        │     ├─ web_view_window_plugin.h
│  │        │     └─ wil
│  │        │        ├─ com.h
│  │        │        ├─ common.h
│  │        │        ├─ cppwinrt.h
│  │        │        ├─ filesystem.h
│  │        │        ├─ LICENSE
│  │        │        ├─ registry.h
│  │        │        ├─ resource.h
│  │        │        ├─ result.h
│  │        │        ├─ result_macros.h
│  │        │        ├─ result_originate.h
│  │        │        ├─ rpc_helpers.h
│  │        │        ├─ safecast.h
│  │        │        ├─ stl.h
│  │        │        ├─ ThirdPartyNotices.txt
│  │        │        ├─ token_helpers.h
│  │        │        ├─ win32_helpers.h
│  │        │        ├─ winrt.h
│  │        │        ├─ wistd_config.h
│  │        │        ├─ wistd_functional.h
│  │        │        ├─ wistd_memory.h
│  │        │        ├─ wistd_type_traits.h
│  │        │        └─ wrl.h
│  │        ├─ file_picker
│  │        │  ├─ analysis_options.yaml
│  │        │  ├─ android
│  │        │  │  ├─ build.gradle
│  │        │  │  ├─ gradle
│  │        │  │  │  └─ wrapper
│  │        │  │  │     └─ gradle-wrapper.properties
│  │        │  │  ├─ proguard-rules.pro
│  │        │  │  ├─ settings.gradle
│  │        │  │  └─ src
│  │        │  │     └─ main
│  │        │  │        ├─ AndroidManifest.xml
│  │        │  │        └─ kotlin
│  │        │  │           └─ com
│  │        │  │              └─ mr
│  │        │  │                 └─ flutter
│  │        │  │                    └─ plugin
│  │        │  │                       └─ filepicker
│  │        │  │                          ├─ FileInfo.kt
│  │        │  │                          ├─ FilePickerDelegate.kt
│  │        │  │                          ├─ FilePickerPlugin.kt
│  │        │  │                          ├─ FileUtils.kt
│  │        │  │                          └─ MethodResultWrapper.kt
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ CONTRIBUTING.md
│  │        │  ├─ example
│  │        │  │  ├─ analysis_options.yaml
│  │        │  │  ├─ android
│  │        │  │  │  ├─ app
│  │        │  │  │  │  ├─ build.gradle.kts
│  │        │  │  │  │  └─ src
│  │        │  │  │  │     ├─ debug
│  │        │  │  │  │     │  └─ AndroidManifest.xml
│  │        │  │  │  │     ├─ main
│  │        │  │  │  │     │  ├─ AndroidManifest.xml
│  │        │  │  │  │     │  ├─ kotlin
│  │        │  │  │  │     │  │  └─ com
│  │        │  │  │  │     │  │     └─ mr
│  │        │  │  │  │     │  │        └─ flutter
│  │        │  │  │  │     │  │           └─ plugin
│  │        │  │  │  │     │  │              └─ filepicker
│  │        │  │  │  │     │  │                 └─ file_picker_example
│  │        │  │  │  │     │  │                    └─ MainActivity.kt
│  │        │  │  │  │     │  └─ res
│  │        │  │  │  │     │     ├─ drawable
│  │        │  │  │  │     │     │  └─ launch_background.xml
│  │        │  │  │  │     │     ├─ drawable-v21
│  │        │  │  │  │     │     │  └─ launch_background.xml
│  │        │  │  │  │     │     ├─ mipmap-hdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ mipmap-mdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ mipmap-xhdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ mipmap-xxhdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ mipmap-xxxhdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ values
│  │        │  │  │  │     │     │  └─ styles.xml
│  │        │  │  │  │     │     └─ values-night
│  │        │  │  │  │     │        └─ styles.xml
│  │        │  │  │  │     └─ profile
│  │        │  │  │  │        └─ AndroidManifest.xml
│  │        │  │  │  ├─ build.gradle.kts
│  │        │  │  │  ├─ gradle
│  │        │  │  │  │  └─ wrapper
│  │        │  │  │  │     └─ gradle-wrapper.properties
│  │        │  │  │  ├─ gradle.properties
│  │        │  │  │  └─ settings.gradle.kts
│  │        │  │  ├─ ios
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ AppFrameworkInfo.plist
│  │        │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  └─ Release.xcconfig
│  │        │  │  │  ├─ gpxgenerator_path.gpx
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.h
│  │        │  │  │  │  ├─ AppDelegate.m
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  ├─ AppIcon.appiconset
│  │        │  │  │  │  │  │  ├─ Contents.json
│  │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
│  │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
│  │        │  │  │  │  │  └─ LaunchImage.imageset
│  │        │  │  │  │  │     ├─ Contents.json
│  │        │  │  │  │  │     ├─ LaunchImage.png
│  │        │  │  │  │  │     ├─ LaunchImage@2x.png
│  │        │  │  │  │  │     ├─ LaunchImage@3x.png
│  │        │  │  │  │  │     └─ README.md
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  ├─ LaunchScreen.storyboard
│  │        │  │  │  │  │  └─ Main.storyboard
│  │        │  │  │  │  ├─ File.swift
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ main.m
│  │        │  │  │  │  └─ Runner-Bridging-Header.h
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  │     ├─ swiftpm
│  │        │  │  │  │  │     │  └─ Package.resolved
│  │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  └─ Runner.xcworkspace
│  │        │  │  │     ├─ contents.xcworkspacedata
│  │        │  │  │     └─ xcshareddata
│  │        │  │  │        ├─ IDEWorkspaceChecks.plist
│  │        │  │  │        ├─ swiftpm
│  │        │  │  │        │  └─ Package.resolved
│  │        │  │  │        └─ WorkspaceSettings.xcsettings
│  │        │  │  ├─ lib
│  │        │  │  │  ├─ main.dart
│  │        │  │  │  └─ src
│  │        │  │  │     └─ file_picker_demo.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ macos
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │        │  │  │  │  └─ Flutter-Release.xcconfig
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  └─ AppIcon.appiconset
│  │        │  │  │  │  │     ├─ app_icon_1024.png
│  │        │  │  │  │  │     ├─ app_icon_128.png
│  │        │  │  │  │  │     ├─ app_icon_16.png
│  │        │  │  │  │  │     ├─ app_icon_256.png
│  │        │  │  │  │  │     ├─ app_icon_32.png
│  │        │  │  │  │  │     ├─ app_icon_512.png
│  │        │  │  │  │  │     ├─ app_icon_64.png
│  │        │  │  │  │  │     └─ Contents.json
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  └─ MainMenu.xib
│  │        │  │  │  │  ├─ Configs
│  │        │  │  │  │  │  ├─ AppInfo.xcconfig
│  │        │  │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  │  ├─ Release.xcconfig
│  │        │  │  │  │  │  └─ Warnings.xcconfig
│  │        │  │  │  │  ├─ DebugProfile.entitlements
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ MainFlutterWindow.swift
│  │        │  │  │  │  └─ Release.entitlements
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  ├─ screenshots
│  │        │  │  │  ├─ example_android.gif
│  │        │  │  │  ├─ example_ios.gif
│  │        │  │  │  ├─ example_linux.gif
│  │        │  │  │  ├─ example_macos.gif
│  │        │  │  │  └─ example_windows.gif
│  │        │  │  ├─ web
│  │        │  │  │  ├─ favicon.png
│  │        │  │  │  ├─ icons
│  │        │  │  │  │  ├─ Icon-192.png
│  │        │  │  │  │  └─ Icon-512.png
│  │        │  │  │  ├─ index.html
│  │        │  │  │  └─ manifest.json
│  │        │  │  └─ windows
│  │        │  │     ├─ CMakeLists.txt
│  │        │  │     ├─ flutter
│  │        │  │     │  └─ CMakeLists.txt
│  │        │  │     └─ runner
│  │        │  │        ├─ CMakeLists.txt
│  │        │  │        ├─ flutter_window.cpp
│  │        │  │        ├─ flutter_window.h
│  │        │  │        ├─ main.cpp
│  │        │  │        ├─ resource.h
│  │        │  │        ├─ resources
│  │        │  │        │  └─ app_icon.ico
│  │        │  │        ├─ runner.exe.manifest
│  │        │  │        ├─ Runner.rc
│  │        │  │        ├─ utils.cpp
│  │        │  │        ├─ utils.h
│  │        │  │        ├─ win32_window.cpp
│  │        │  │        └─ win32_window.h
│  │        │  ├─ ios
│  │        │  │  ├─ file_picker
│  │        │  │  │  ├─ Package.resolved
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ file_picker
│  │        │  │  │        ├─ FileInfo.m
│  │        │  │  │        ├─ FilePickerPlugin.m
│  │        │  │  │        ├─ FilePickerUtils.m
│  │        │  │  │        ├─ ImageUtils.m
│  │        │  │  │        ├─ include
│  │        │  │  │        │  ├─ file_picker
│  │        │  │  │        │  │  ├─ FileInfo.h
│  │        │  │  │        │  │  ├─ FilePickerPlugin.h
│  │        │  │  │        │  │  ├─ FilePickerUtils.h
│  │        │  │  │        │  │  └─ ImageUtils.h
│  │        │  │  │        │  ├─ file_picker-umbrella.h
│  │        │  │  │        │  └─ file_picker.modulemap
│  │        │  │  │        └─ PrivacyInfo.xcprivacy
│  │        │  │  └─ file_picker.podspec
│  │        │  ├─ lib
│  │        │  │  ├─ file_picker.dart
│  │        │  │  ├─ src
│  │        │  │  │  ├─ exceptions.dart
│  │        │  │  │  ├─ file_picker.dart
│  │        │  │  │  ├─ file_picker_io.dart
│  │        │  │  │  ├─ file_picker_macos.dart
│  │        │  │  │  ├─ file_picker_result.dart
│  │        │  │  │  ├─ linux
│  │        │  │  │  │  ├─ file_picker_linux.dart
│  │        │  │  │  │  ├─ filters.dart
│  │        │  │  │  │  ├─ xdp_filechooser.dart
│  │        │  │  │  │  └─ xdp_request.dart
│  │        │  │  │  ├─ platform_file.dart
│  │        │  │  │  ├─ utils.dart
│  │        │  │  │  └─ windows
│  │        │  │  │     ├─ file_picker_windows.dart
│  │        │  │  │     ├─ file_picker_windows_ffi_types.dart
│  │        │  │  │     └─ file_picker_windows_stub.dart
│  │        │  │  └─ _internal
│  │        │  │     └─ file_picker_web.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ macos
│  │        │  │  ├─ file_picker
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ file_picker
│  │        │  │  │        ├─ FilePickerPlugin.swift
│  │        │  │  │        └─ PrivacyInfo.xcprivacy
│  │        │  │  └─ file_picker.podspec
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     ├─ common.dart
│  │        │     ├─ file_picker_macos_test.dart
│  │        │     ├─ file_picker_utils_test.dart
│  │        │     ├─ file_picker_windows_test.dart
│  │        │     ├─ linux
│  │        │     │  └─ xdp_filter_test.dart
│  │        │     └─ test_files
│  │        │        ├─ franz-michael-schneeberger-unsplash.jpg
│  │        │        ├─ test.pdf
│  │        │        └─ test.yml
│  │        ├─ file_selector_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ lib
│  │        │  │  │  ├─ get_directory_page.dart
│  │        │  │  │  ├─ get_multiple_directories_page.dart
│  │        │  │  │  ├─ home_page.dart
│  │        │  │  │  ├─ main.dart
│  │        │  │  │  ├─ open_image_page.dart
│  │        │  │  │  ├─ open_multiple_images_page.dart
│  │        │  │  │  ├─ open_text_page.dart
│  │        │  │  │  └─ save_text_page.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  └─ README.md
│  │        │  ├─ lib
│  │        │  │  ├─ file_selector_linux.dart
│  │        │  │  └─ src
│  │        │  │     └─ messages.g.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ linux
│  │        │  │  ├─ CMakeLists.txt
│  │        │  │  ├─ file_selector_plugin.cc
│  │        │  │  ├─ file_selector_plugin_private.h
│  │        │  │  ├─ include
│  │        │  │  │  └─ file_selector_linux
│  │        │  │  │     └─ file_selector_plugin.h
│  │        │  │  ├─ messages.g.cc
│  │        │  │  ├─ messages.g.h
│  │        │  │  └─ test
│  │        │  │     ├─ file_selector_plugin_test.cc
│  │        │  │     └─ test_main.cc
│  │        │  ├─ pigeons
│  │        │  │  ├─ copyright.txt
│  │        │  │  └─ messages.dart
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     └─ file_selector_linux_test.dart
│  │        ├─ flutter_secure_storage_linux
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ LICENSE
│  │        │  ├─ linux
│  │        │  │  ├─ CMakeLists.txt
│  │        │  │  ├─ flutter_secure_storage_linux_plugin.cc
│  │        │  │  └─ include
│  │        │  │     ├─ FHashTable.hpp
│  │        │  │     ├─ flutter_secure_storage_linux
│  │        │  │     │  └─ flutter_secure_storage_linux_plugin.h
│  │        │  │     ├─ json.hpp
│  │        │  │     └─ Secret.hpp
│  │        │  ├─ pubspec.yaml
│  │        │  └─ README.md
│  │        ├─ flutter_web_auth_2
│  │        │  ├─ analysis_options.yaml
│  │        │  ├─ android
│  │        │  │  ├─ build.gradle
│  │        │  │  ├─ gradle
│  │        │  │  │  └─ wrapper
│  │        │  │  │     └─ gradle-wrapper.properties
│  │        │  │  ├─ gradle.properties
│  │        │  │  ├─ settings.gradle
│  │        │  │  └─ src
│  │        │  │     └─ main
│  │        │  │        ├─ AndroidManifest.xml
│  │        │  │        └─ kotlin
│  │        │  │           └─ com
│  │        │  │              └─ linusu
│  │        │  │                 └─ flutter_web_auth_2
│  │        │  │                    ├─ AuthenticationManagementActivity.kt
│  │        │  │                    ├─ CallbackActivity.kt
│  │        │  │                    ├─ FlutterWebAuth2Plugin.kt
│  │        │  │                    ├─ KeepAliveService.kt
│  │        │  │                    ├─ TabBuilderWrapper.kt
│  │        │  │                    └─ Utils.kt
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ analysis_options.yaml
│  │        │  │  ├─ android
│  │        │  │  │  ├─ app
│  │        │  │  │  │  ├─ build.gradle
│  │        │  │  │  │  └─ src
│  │        │  │  │  │     ├─ debug
│  │        │  │  │  │     │  └─ AndroidManifest.xml
│  │        │  │  │  │     ├─ main
│  │        │  │  │  │     │  ├─ AndroidManifest.xml
│  │        │  │  │  │     │  ├─ java
│  │        │  │  │  │     │  │  └─ io
│  │        │  │  │  │     │  │     └─ flutter
│  │        │  │  │  │     │  │        └─ plugins
│  │        │  │  │  │     │  ├─ kotlin
│  │        │  │  │  │     │  │  └─ com
│  │        │  │  │  │     │  │     ├─ example
│  │        │  │  │  │     │  │     │  └─ flutter_web_auth_example
│  │        │  │  │  │     │  │     └─ linusu
│  │        │  │  │  │     │  │        └─ flutter_web_auth_2_example
│  │        │  │  │  │     │  │           └─ MainActivity.kt
│  │        │  │  │  │     │  └─ res
│  │        │  │  │  │     │     ├─ drawable
│  │        │  │  │  │     │     │  └─ launch_background.xml
│  │        │  │  │  │     │     ├─ drawable-v21
│  │        │  │  │  │     │     ├─ mipmap-hdpi
│  │        │  │  │  │     │     ├─ mipmap-mdpi
│  │        │  │  │  │     │     ├─ mipmap-xhdpi
│  │        │  │  │  │     │     ├─ mipmap-xxhdpi
│  │        │  │  │  │     │     ├─ mipmap-xxxhdpi
│  │        │  │  │  │     │     ├─ values
│  │        │  │  │  │     │     │  └─ styles.xml
│  │        │  │  │  │     │     └─ values-night
│  │        │  │  │  │     └─ profile
│  │        │  │  │  │        └─ AndroidManifest.xml
│  │        │  │  │  ├─ build.gradle
│  │        │  │  │  ├─ gradle
│  │        │  │  │  │  └─ wrapper
│  │        │  │  │  │     └─ gradle-wrapper.properties
│  │        │  │  │  ├─ gradle.properties
│  │        │  │  │  └─ settings.gradle
│  │        │  │  ├─ ios
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ AppFrameworkInfo.plist
│  │        │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  └─ Release.xcconfig
│  │        │  │  │  ├─ Podfile
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  ├─ AppIcon.appiconset
│  │        │  │  │  │  │  │  └─ Contents.json
│  │        │  │  │  │  │  └─ LaunchImage.imageset
│  │        │  │  │  │  │     ├─ Contents.json
│  │        │  │  │  │  │     └─ README.md
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  ├─ LaunchScreen.storyboard
│  │        │  │  │  │  │  └─ Main.storyboard
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  └─ Runner-Bridging-Header.h
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ macos
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │        │  │  │  │  └─ Flutter-Release.xcconfig
│  │        │  │  │  ├─ Podfile
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  └─ AppIcon.appiconset
│  │        │  │  │  │  │     └─ Contents.json
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  └─ MainMenu.xib
│  │        │  │  │  │  ├─ Configs
│  │        │  │  │  │  │  ├─ AppInfo.xcconfig
│  │        │  │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  │  ├─ Release.xcconfig
│  │        │  │  │  │  │  └─ Warnings.xcconfig
│  │        │  │  │  │  ├─ DebugProfile.entitlements
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ MainFlutterWindow.swift
│  │        │  │  │  │  └─ Release.entitlements
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  ├─ test
│  │        │  │  │  └─ widget_test.dart
│  │        │  │  ├─ web
│  │        │  │  │  ├─ auth.html
│  │        │  │  │  ├─ icons
│  │        │  │  │  ├─ index.html
│  │        │  │  │  └─ manifest.json
│  │        │  │  └─ windows
│  │        │  │     ├─ CMakeLists.txt
│  │        │  │     ├─ flutter
│  │        │  │     │  └─ CMakeLists.txt
│  │        │  │     └─ runner
│  │        │  │        ├─ CMakeLists.txt
│  │        │  │        ├─ flutter_window.cpp
│  │        │  │        ├─ flutter_window.h
│  │        │  │        ├─ main.cpp
│  │        │  │        ├─ resource.h
│  │        │  │        ├─ resources
│  │        │  │        │  └─ app_icon.ico
│  │        │  │        ├─ runner.exe.manifest
│  │        │  │        ├─ Runner.rc
│  │        │  │        ├─ utils.cpp
│  │        │  │        ├─ utils.h
│  │        │  │        ├─ win32_window.cpp
│  │        │  │        └─ win32_window.h
│  │        │  ├─ ios
│  │        │  │  ├─ flutter_web_auth_2
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ flutter_web_auth_2
│  │        │  │  │        └─ FlutterWebAuth2Plugin.swift
│  │        │  │  └─ flutter_web_auth_2.podspec
│  │        │  ├─ lib
│  │        │  │  ├─ flutter_web_auth_2.dart
│  │        │  │  └─ src
│  │        │  │     ├─ linows.dart
│  │        │  │     ├─ macos.dart
│  │        │  │     ├─ options.dart
│  │        │  │     ├─ platform
│  │        │  │     │  ├─ platform_is.dart
│  │        │  │     │  ├─ universal_platform_none.dart
│  │        │  │     │  ├─ universal_platform_vm.dart
│  │        │  │     │  └─ universal_platform_web.dart
│  │        │  │     ├─ server.dart
│  │        │  │     ├─ unsupported.dart
│  │        │  │     ├─ web.dart
│  │        │  │     └─ webview.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ macos
│  │        │  │  ├─ flutter_web_auth_2
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ flutter_web_auth_2
│  │        │  │  │        └─ FlutterWebAuth2Plugin.swift
│  │        │  │  └─ flutter_web_auth_2.podspec
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  ├─ screen-android.gif
│  │        │  ├─ screen-ios.gif
│  │        │  ├─ screen-macos.gif
│  │        │  └─ test
│  │        │     └─ flutter_web_auth_2_test.dart
│  │        ├─ image_picker_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  └─ README.md
│  │        │  ├─ lib
│  │        │  │  └─ image_picker_linux.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     ├─ image_picker_linux_test.dart
│  │        │     └─ image_picker_linux_test.mocks.dart
│  │        ├─ path_provider_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ integration_test
│  │        │  │  │  └─ path_provider_test.dart
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  └─ test_driver
│  │        │  │     └─ integration_test.dart
│  │        │  ├─ lib
│  │        │  │  ├─ path_provider_linux.dart
│  │        │  │  └─ src
│  │        │  │     ├─ get_application_id.dart
│  │        │  │     ├─ get_application_id_real.dart
│  │        │  │     ├─ get_application_id_stub.dart
│  │        │  │     └─ path_provider_linux.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     ├─ get_application_id_test.dart
│  │        │     └─ path_provider_linux_test.dart
│  │        ├─ shared_preferences_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ integration_test
│  │        │  │  │  └─ shared_preferences_test.dart
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  └─ test_driver
│  │        │  │     └─ integration_test.dart
│  │        │  ├─ lib
│  │        │  │  └─ shared_preferences_linux.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     ├─ fake_path_provider_linux.dart
│  │        │     ├─ legacy_shared_preferences_linux_test.dart
│  │        │     └─ shared_preferences_linux_async_test.dart
│  │        ├─ url_launcher_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ integration_test
│  │        │  │  │  └─ url_launcher_test.dart
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  └─ test_driver
│  │        │  │     └─ integration_test.dart
│  │        │  ├─ lib
│  │        │  │  ├─ src
│  │        │  │  │  └─ messages.g.dart
│  │        │  │  └─ url_launcher_linux.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ linux
│  │        │  │  ├─ CMakeLists.txt
│  │        │  │  ├─ include
│  │        │  │  │  └─ url_launcher_linux
│  │        │  │  │     └─ url_launcher_plugin.h
│  │        │  │  ├─ messages.g.cc
│  │        │  │  ├─ messages.g.h
│  │        │  │  ├─ test
│  │        │  │  │  └─ url_launcher_linux_test.cc
│  │        │  │  ├─ url_launcher_plugin.cc
│  │        │  │  └─ url_launcher_plugin_private.h
│  │        │  ├─ pigeons
│  │        │  │  ├─ copyright.txt
│  │        │  │  └─ messages.dart
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     └─ url_launcher_linux_test.dart
│  │        └─ window_to_front
│  │           ├─ .metadata
│  │           ├─ CHANGELOG.md
│  │           ├─ example
│  │           │  └─ readme.md
│  │           ├─ lib
│  │           │  └─ window_to_front.dart
│  │           ├─ LICENSE
│  │           ├─ linux
│  │           │  ├─ CMakeLists.txt
│  │           │  ├─ flutter
│  │           │  │  └─ ephemeral
│  │           │  │     └─ .plugin_symlinks
│  │           │  │        └─ window_to_front
│  │           │  │           ├─ CHANGELOG.md
│  │           │  │           ├─ example
│  │           │  │           │  └─ readme.md
│  │           │  │           ├─ lib
│  │           │  │           │  └─ window_to_front.dart
│  │           │  │           ├─ LICENSE
│  │           │  │           ├─ linux
│  │           │  │           │  ├─ CMakeLists.txt
│  │           │  │           │  ├─ flutter
│  │           │  │           │  ├─ include
│  │           │  │           │  │  └─ window_to_front
│  │           │  │           │  │     └─ window_to_front_plugin.h
│  │           │  │           │  └─ window_to_front_plugin.cc
│  │           │  │           ├─ macos
│  │           │  │           │  ├─ Classes
│  │           │  │           │  │  └─ WindowToFrontPlugin.swift
│  │           │  │           │  ├─ Flutter
│  │           │  │           │  └─ window_to_front.podspec
│  │           │  │           ├─ pubspec.yaml
│  │           │  │           ├─ README.md
│  │           │  │           └─ windows
│  │           │  │              ├─ CMakeLists.txt
│  │           │  │              ├─ flutter
│  │           │  │              ├─ include
│  │           │  │              │  └─ window_to_front
│  │           │  │              │     └─ window_to_front_plugin.h
│  │           │  │              └─ window_to_front_plugin.cpp
│  │           │  ├─ include
│  │           │  │  └─ window_to_front
│  │           │  │     └─ window_to_front_plugin.h
│  │           │  └─ window_to_front_plugin.cc
│  │           ├─ macos
│  │           │  ├─ Classes
│  │           │  │  └─ WindowToFrontPlugin.swift
│  │           │  ├─ Flutter
│  │           │  └─ window_to_front.podspec
│  │           ├─ pubspec.yaml
│  │           ├─ README.md
│  │           └─ windows
│  │              ├─ CMakeLists.txt
│  │              ├─ include
│  │              │  └─ window_to_front
│  │              │     └─ window_to_front_plugin.h
│  │              └─ window_to_front_plugin.cpp
│  └─ runner
│     ├─ CMakeLists.txt
│     ├─ main.cc
│     ├─ my_application.cc
│     └─ my_application.h
├─ macos
│  ├─ Flutter
│  │  ├─ Flutter-Debug.xcconfig
│  │  └─ Flutter-Release.xcconfig
│  ├─ Runner
│  │  ├─ AppDelegate.swift
│  │  ├─ Assets.xcassets
│  │  │  └─ AppIcon.appiconset
│  │  │     ├─ app_icon_1024.png
│  │  │     ├─ app_icon_128.png
│  │  │     ├─ app_icon_16.png
│  │  │     ├─ app_icon_256.png
│  │  │     ├─ app_icon_32.png
│  │  │     ├─ app_icon_512.png
│  │  │     ├─ app_icon_64.png
│  │  │     └─ Contents.json
│  │  ├─ Base.lproj
│  │  │  └─ MainMenu.xib
│  │  ├─ Configs
│  │  │  ├─ AppInfo.xcconfig
│  │  │  ├─ Debug.xcconfig
│  │  │  ├─ Release.xcconfig
│  │  │  └─ Warnings.xcconfig
│  │  ├─ DebugProfile.entitlements
│  │  ├─ Info.plist
│  │  ├─ MainFlutterWindow.swift
│  │  └─ Release.entitlements
│  ├─ Runner.xcodeproj
│  │  ├─ project.pbxproj
│  │  ├─ project.xcworkspace
│  │  │  └─ xcshareddata
│  │  │     └─ IDEWorkspaceChecks.plist
│  │  └─ xcshareddata
│  │     └─ xcschemes
│  │        └─ Runner.xcscheme
│  ├─ Runner.xcworkspace
│  │  ├─ contents.xcworkspacedata
│  │  └─ xcshareddata
│  │     └─ IDEWorkspaceChecks.plist
│  └─ RunnerTests
│     └─ RunnerTests.swift
├─ pubspec.yaml
├─ README.md
├─ test
│  └─ widget_test.dart
├─ web
│  ├─ favicon.png
│  ├─ icons
│  │  ├─ Icon-192.png
│  │  ├─ Icon-512.png
│  │  ├─ Icon-maskable-192.png
│  │  └─ Icon-maskable-512.png
│  ├─ index.html
│  └─ manifest.json
└─ windows
   ├─ CMakeLists.txt
   ├─ flutter
   │  ├─ CMakeLists.txt
   │  └─ ephemeral
   │     └─ .plugin_symlinks
   │        ├─ connectivity_plus
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ gradle.properties
   │        │  │  ├─ settings.gradle
   │        │  │  └─ src
   │        │  │     └─ main
   │        │  │        ├─ AndroidManifest.xml
   │        │  │        └─ java
   │        │  │           └─ dev
   │        │  │              └─ fluttercommunity
   │        │  │                 └─ plus
   │        │  │                    └─ connectivity
   │        │  │                       ├─ Connectivity.java
   │        │  │                       ├─ ConnectivityBroadcastReceiver.java
   │        │  │                       ├─ ConnectivityMethodChannelHandler.java
   │        │  │                       └─ ConnectivityPlugin.java
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle
   │        │  │  │  │  └─ src
   │        │  │  │  │     └─ main
   │        │  │  │  │        ├─ AndroidManifest.xml
   │        │  │  │  │        ├─ java
   │        │  │  │  │        │  └─ io
   │        │  │  │  │        │     └─ flutter
   │        │  │  │  │        │        └─ plugins
   │        │  │  │  │        │           └─ connectivityexample
   │        │  │  │  │        │              └─ FlutterActivityTest.java
   │        │  │  │  │        └─ res
   │        │  │  │  │           ├─ mipmap-hdpi
   │        │  │  │  │           │  └─ ic_launcher.png
   │        │  │  │  │           ├─ mipmap-mdpi
   │        │  │  │  │           │  └─ ic_launcher.png
   │        │  │  │  │           ├─ mipmap-xhdpi
   │        │  │  │  │           │  └─ ic_launcher.png
   │        │  │  │  │           ├─ mipmap-xxhdpi
   │        │  │  │  │           │  └─ ic_launcher.png
   │        │  │  │  │           └─ mipmap-xxxhdpi
   │        │  │  │  │              └─ ic_launcher.png
   │        │  │  │  ├─ build.gradle
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle
   │        │  │  ├─ integration_test
   │        │  │  │  └─ connectivity_plus_test.dart
   │        │  │  ├─ ios
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  ├─ Contents.json
   │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     ├─ LaunchImage.png
   │        │  │  │  │  │     ├─ LaunchImage@2x.png
   │        │  │  │  │  │     ├─ LaunchImage@3x.png
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  └─ Runner-Bridging-Header.h
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     ├─ swiftpm
   │        │  │  │  │  │     │  └─ configuration
   │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │     ├─ swiftpm
   │        │  │  │  │     │  └─ configuration
   │        │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ linux
   │        │  │  │  ├─ CMakeLists.txt
   │        │  │  │  ├─ flutter
   │        │  │  │  │  └─ CMakeLists.txt
   │        │  │  │  ├─ main.cc
   │        │  │  │  ├─ my_application.cc
   │        │  │  │  └─ my_application.h
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     └─ swiftpm
   │        │  │  │  │  │        └─ configuration
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │     └─ swiftpm
   │        │  │  │  │        └─ configuration
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ web
   │        │  │  │  ├─ favicon.png
   │        │  │  │  ├─ icons
   │        │  │  │  │  ├─ Icon-192.png
   │        │  │  │  │  ├─ Icon-512.png
   │        │  │  │  │  ├─ Icon-maskable-192.png
   │        │  │  │  │  └─ Icon-maskable-512.png
   │        │  │  │  ├─ index.html
   │        │  │  │  └─ manifest.json
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ run_loop.cpp
   │        │  │        ├─ run_loop.h
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ connectivity_plus
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ connectivity_plus
   │        │  │  │        ├─ ConnectivityPlusPlugin.swift
   │        │  │  │        ├─ ConnectivityProvider.swift
   │        │  │  │        ├─ PathMonitorConnectivityProvider.swift
   │        │  │  │        └─ PrivacyInfo.xcprivacy
   │        │  │  └─ connectivity_plus.podspec
   │        │  ├─ lib
   │        │  │  ├─ connectivity_plus.dart
   │        │  │  └─ src
   │        │  │     ├─ connectivity_plus_linux.dart
   │        │  │     ├─ connectivity_plus_web.dart
   │        │  │     └─ web
   │        │  │        └─ dart_html_connectivity_plugin.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ connectivity_plus
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ connectivity_plus
   │        │  │  │        ├─ ConnectivityPlusPlugin.swift
   │        │  │  │        ├─ ConnectivityProvider.swift
   │        │  │  │        ├─ PathMonitorConnectivityProvider.swift
   │        │  │  │        └─ PrivacyInfo.xcprivacy
   │        │  │  └─ connectivity_plus.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  ├─ connectivity_plus_linux_test.dart
   │        │  │  ├─ connectivity_plus_linux_test.mocks.dart
   │        │  │  └─ connectivity_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ connectivity_plus_plugin.cpp
   │        │     ├─ include
   │        │     │  └─ connectivity_plus
   │        │     │     ├─ connectivity_plus_windows_plugin.h
   │        │     │     └─ network_manager.h
   │        │     └─ network_manager.cpp
   │        ├─ desktop_webview_window
   │        │  ├─ analysis_options.yaml
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ linux
   │        │  │  │  ├─ CMakeLists.txt
   │        │  │  │  ├─ flutter
   │        │  │  │  │  └─ CMakeLists.txt
   │        │  │  │  ├─ main.cc
   │        │  │  │  ├─ my_application.cc
   │        │  │  │  └─ my_application.h
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        └─ IDEWorkspaceChecks.plist
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test
   │        │  │  │  └─ widget_test.dart
   │        │  │  ├─ test_web_pages
   │        │  │  │  ├─ login.html
   │        │  │  │  └─ test.html
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ desktop_webview_window.dart
   │        │  │  └─ src
   │        │  │     ├─ create_configuration.dart
   │        │  │     ├─ message_channel.dart
   │        │  │     ├─ title_bar.dart
   │        │  │     ├─ webview.dart
   │        │  │     └─ webview_impl.dart
   │        │  ├─ LICENSE
   │        │  ├─ linux
   │        │  │  ├─ CMakeLists.txt
   │        │  │  ├─ desktop_webview_window_plugin.cc
   │        │  │  ├─ include
   │        │  │  │  └─ desktop_webview_window
   │        │  │  │     └─ desktop_webview_window_plugin.h
   │        │  │  ├─ message_channel_plugin.cc
   │        │  │  ├─ message_channel_plugin.h
   │        │  │  ├─ webview_window.cc
   │        │  │  └─ webview_window.h
   │        │  ├─ macos
   │        │  │  ├─ Classes
   │        │  │  │  ├─ DesktopWebviewWindowPlugin.swift
   │        │  │  │  ├─ MessageChannelPlugin.swift
   │        │  │  │  ├─ WebViewLayoutController.swift
   │        │  │  │  ├─ WebViewLayoutController.xib
   │        │  │  │  └─ WebviewWindowController.swift
   │        │  │  └─ desktop_webview_window.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ run_local_test_server.sh
   │        │  ├─ test
   │        │  │  └─ desktop_webview_window_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ desktop_webview_window_plugin.cpp
   │        │     ├─ flutter_view.cc
   │        │     ├─ flutter_view.h
   │        │     ├─ include
   │        │     │  └─ desktop_webview_window
   │        │     │     └─ desktop_webview_window_plugin.h
   │        │     ├─ libs
   │        │     │  └─ x64
   │        │     │     ├─ WebView2Loader.dll
   │        │     │     └─ WebView2Loader.dll.lib
   │        │     ├─ message_channel_plugin.cc
   │        │     ├─ message_channel_plugin.h
   │        │     ├─ strconv.h
   │        │     ├─ utils.cc
   │        │     ├─ utils.h
   │        │     ├─ WebView2.h
   │        │     ├─ WebView2EnvironmentOptions.h
   │        │     ├─ webview_window.cc
   │        │     ├─ webview_window.h
   │        │     ├─ web_view.cc
   │        │     ├─ web_view.h
   │        │     ├─ web_view_window_plugin.cc
   │        │     ├─ web_view_window_plugin.h
   │        │     └─ wil
   │        │        ├─ com.h
   │        │        ├─ common.h
   │        │        ├─ cppwinrt.h
   │        │        ├─ filesystem.h
   │        │        ├─ LICENSE
   │        │        ├─ registry.h
   │        │        ├─ resource.h
   │        │        ├─ result.h
   │        │        ├─ result_macros.h
   │        │        ├─ result_originate.h
   │        │        ├─ rpc_helpers.h
   │        │        ├─ safecast.h
   │        │        ├─ stl.h
   │        │        ├─ ThirdPartyNotices.txt
   │        │        ├─ token_helpers.h
   │        │        ├─ win32_helpers.h
   │        │        ├─ winrt.h
   │        │        ├─ wistd_config.h
   │        │        ├─ wistd_functional.h
   │        │        ├─ wistd_memory.h
   │        │        ├─ wistd_type_traits.h
   │        │        └─ wrl.h
   │        ├─ file_picker
   │        │  ├─ analysis_options.yaml
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ proguard-rules.pro
   │        │  │  ├─ settings.gradle
   │        │  │  └─ src
   │        │  │     └─ main
   │        │  │        ├─ AndroidManifest.xml
   │        │  │        └─ kotlin
   │        │  │           └─ com
   │        │  │              └─ mr
   │        │  │                 └─ flutter
   │        │  │                    └─ plugin
   │        │  │                       └─ filepicker
   │        │  │                          ├─ FileInfo.kt
   │        │  │                          ├─ FilePickerDelegate.kt
   │        │  │                          ├─ FilePickerPlugin.kt
   │        │  │                          ├─ FileUtils.kt
   │        │  │                          └─ MethodResultWrapper.kt
   │        │  ├─ CHANGELOG.md
   │        │  ├─ CONTRIBUTING.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle.kts
   │        │  │  │  │  └─ src
   │        │  │  │  │     ├─ debug
   │        │  │  │  │     │  └─ AndroidManifest.xml
   │        │  │  │  │     ├─ main
   │        │  │  │  │     │  ├─ AndroidManifest.xml
   │        │  │  │  │     │  ├─ kotlin
   │        │  │  │  │     │  │  └─ com
   │        │  │  │  │     │  │     └─ mr
   │        │  │  │  │     │  │        └─ flutter
   │        │  │  │  │     │  │           └─ plugin
   │        │  │  │  │     │  │              └─ filepicker
   │        │  │  │  │     │  │                 └─ file_picker_example
   │        │  │  │  │     │  │                    └─ MainActivity.kt
   │        │  │  │  │     │  └─ res
   │        │  │  │  │     │     ├─ drawable
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ drawable-v21
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ mipmap-hdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-mdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ values
   │        │  │  │  │     │     │  └─ styles.xml
   │        │  │  │  │     │     └─ values-night
   │        │  │  │  │     │        └─ styles.xml
   │        │  │  │  │     └─ profile
   │        │  │  │  │        └─ AndroidManifest.xml
   │        │  │  │  ├─ build.gradle.kts
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle.kts
   │        │  │  ├─ ios
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ gpxgenerator_path.gpx
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.h
   │        │  │  │  │  ├─ AppDelegate.m
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  ├─ Contents.json
   │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     ├─ LaunchImage.png
   │        │  │  │  │  │     ├─ LaunchImage@2x.png
   │        │  │  │  │  │     ├─ LaunchImage@3x.png
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ File.swift
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ main.m
   │        │  │  │  │  └─ Runner-Bridging-Header.h
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     ├─ swiftpm
   │        │  │  │  │  │     │  └─ Package.resolved
   │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        ├─ IDEWorkspaceChecks.plist
   │        │  │  │        ├─ swiftpm
   │        │  │  │        │  └─ Package.resolved
   │        │  │  │        └─ WorkspaceSettings.xcsettings
   │        │  │  ├─ lib
   │        │  │  │  ├─ main.dart
   │        │  │  │  └─ src
   │        │  │  │     └─ file_picker_demo.dart
   │        │  │  ├─ linux
   │        │  │  │  ├─ CMakeLists.txt
   │        │  │  │  ├─ flutter
   │        │  │  │  │  └─ CMakeLists.txt
   │        │  │  │  ├─ main.cc
   │        │  │  │  ├─ my_application.cc
   │        │  │  │  └─ my_application.h
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ screenshots
   │        │  │  │  ├─ example_android.gif
   │        │  │  │  ├─ example_ios.gif
   │        │  │  │  ├─ example_linux.gif
   │        │  │  │  ├─ example_macos.gif
   │        │  │  │  └─ example_windows.gif
   │        │  │  ├─ web
   │        │  │  │  ├─ favicon.png
   │        │  │  │  ├─ icons
   │        │  │  │  │  ├─ Icon-192.png
   │        │  │  │  │  └─ Icon-512.png
   │        │  │  │  ├─ index.html
   │        │  │  │  └─ manifest.json
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ file_picker
   │        │  │  │  ├─ Package.resolved
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ file_picker
   │        │  │  │        ├─ FileInfo.m
   │        │  │  │        ├─ FilePickerPlugin.m
   │        │  │  │        ├─ FilePickerUtils.m
   │        │  │  │        ├─ ImageUtils.m
   │        │  │  │        ├─ include
   │        │  │  │        │  ├─ file_picker
   │        │  │  │        │  │  ├─ FileInfo.h
   │        │  │  │        │  │  ├─ FilePickerPlugin.h
   │        │  │  │        │  │  ├─ FilePickerUtils.h
   │        │  │  │        │  │  └─ ImageUtils.h
   │        │  │  │        │  ├─ file_picker-umbrella.h
   │        │  │  │        │  └─ file_picker.modulemap
   │        │  │  │        └─ PrivacyInfo.xcprivacy
   │        │  │  └─ file_picker.podspec
   │        │  ├─ lib
   │        │  │  ├─ file_picker.dart
   │        │  │  ├─ src
   │        │  │  │  ├─ exceptions.dart
   │        │  │  │  ├─ file_picker.dart
   │        │  │  │  ├─ file_picker_io.dart
   │        │  │  │  ├─ file_picker_macos.dart
   │        │  │  │  ├─ file_picker_result.dart
   │        │  │  │  ├─ linux
   │        │  │  │  │  ├─ file_picker_linux.dart
   │        │  │  │  │  ├─ filters.dart
   │        │  │  │  │  ├─ xdp_filechooser.dart
   │        │  │  │  │  └─ xdp_request.dart
   │        │  │  │  ├─ platform_file.dart
   │        │  │  │  ├─ utils.dart
   │        │  │  │  └─ windows
   │        │  │  │     ├─ file_picker_windows.dart
   │        │  │  │     ├─ file_picker_windows_ffi_types.dart
   │        │  │  │     └─ file_picker_windows_stub.dart
   │        │  │  └─ _internal
   │        │  │     └─ file_picker_web.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ file_picker
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ file_picker
   │        │  │  │        ├─ FilePickerPlugin.swift
   │        │  │  │        └─ PrivacyInfo.xcprivacy
   │        │  │  └─ file_picker.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  └─ test
   │        │     ├─ common.dart
   │        │     ├─ file_picker_macos_test.dart
   │        │     ├─ file_picker_utils_test.dart
   │        │     ├─ file_picker_windows_test.dart
   │        │     ├─ linux
   │        │     │  └─ xdp_filter_test.dart
   │        │     └─ test_files
   │        │        ├─ franz-michael-schneeberger-unsplash.jpg
   │        │        ├─ test.pdf
   │        │        └─ test.yml
   │        ├─ file_selector_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ lib
   │        │  │  │  ├─ get_directory_page.dart
   │        │  │  │  ├─ get_multiple_directories_page.dart
   │        │  │  │  ├─ home_page.dart
   │        │  │  │  ├─ main.dart
   │        │  │  │  ├─ open_image_page.dart
   │        │  │  │  ├─ open_multiple_images_page.dart
   │        │  │  │  ├─ open_text_page.dart
   │        │  │  │  └─ save_text_page.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ file_selector_windows.dart
   │        │  │  └─ src
   │        │  │     └─ messages.g.dart
   │        │  ├─ LICENSE
   │        │  ├─ pigeons
   │        │  │  ├─ copyright.txt
   │        │  │  └─ messages.dart
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  └─ file_selector_windows_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ file_dialog_controller.cpp
   │        │     ├─ file_dialog_controller.h
   │        │     ├─ file_selector_plugin.cpp
   │        │     ├─ file_selector_plugin.h
   │        │     ├─ file_selector_windows.cpp
   │        │     ├─ include
   │        │     │  └─ file_selector_windows
   │        │     │     └─ file_selector_windows.h
   │        │     ├─ messages.g.cpp
   │        │     ├─ messages.g.h
   │        │     ├─ string_utils.cpp
   │        │     ├─ string_utils.h
   │        │     └─ test
   │        │        ├─ file_selector_plugin_test.cpp
   │        │        ├─ test_file_dialog_controller.cpp
   │        │        ├─ test_file_dialog_controller.h
   │        │        ├─ test_main.cpp
   │        │        ├─ test_utils.cpp
   │        │        └─ test_utils.h
   │        ├─ firebase_auth
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ gradle.properties
   │        │  │  ├─ settings.gradle
   │        │  │  ├─ src
   │        │  │  │  └─ main
   │        │  │  │     ├─ AndroidManifest.xml
   │        │  │  │     └─ java
   │        │  │  │        └─ io
   │        │  │  │           └─ flutter
   │        │  │  │              └─ plugins
   │        │  │  │                 └─ firebase
   │        │  │  │                    └─ auth
   │        │  │  │                       ├─ AuthStateChannelStreamHandler.java
   │        │  │  │                       ├─ Constants.java
   │        │  │  │                       ├─ FlutterFirebaseAuthPlugin.java
   │        │  │  │                       ├─ FlutterFirebaseAuthPluginException.java
   │        │  │  │                       ├─ FlutterFirebaseAuthRegistrar.java
   │        │  │  │                       ├─ FlutterFirebaseAuthUser.java
   │        │  │  │                       ├─ FlutterFirebaseMultiFactor.java
   │        │  │  │                       ├─ FlutterFirebaseTotpMultiFactor.java
   │        │  │  │                       ├─ FlutterFirebaseTotpSecret.java
   │        │  │  │                       ├─ GeneratedAndroidFirebaseAuth.java
   │        │  │  │                       ├─ IdTokenChannelStreamHandler.java
   │        │  │  │                       ├─ PhoneNumberVerificationStreamHandler.java
   │        │  │  │                       └─ PigeonParser.java
   │        │  │  └─ user-agent.gradle
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle
   │        │  │  │  │  ├─ google-services.json
   │        │  │  │  │  └─ src
   │        │  │  │  │     ├─ debug
   │        │  │  │  │     │  └─ AndroidManifest.xml
   │        │  │  │  │     ├─ main
   │        │  │  │  │     │  ├─ AndroidManifest.xml
   │        │  │  │  │     │  ├─ kotlin
   │        │  │  │  │     │  │  └─ io
   │        │  │  │  │     │  │     └─ flutter
   │        │  │  │  │     │  │        └─ plugins
   │        │  │  │  │     │  │           └─ firebase
   │        │  │  │  │     │  │              └─ example
   │        │  │  │  │     │  │                 └─ MainActivity.kt
   │        │  │  │  │     │  └─ res
   │        │  │  │  │     │     ├─ drawable
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ drawable-v21
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ mipmap-hdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-mdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ values
   │        │  │  │  │     │     │  ├─ strings.xml
   │        │  │  │  │     │     │  └─ styles.xml
   │        │  │  │  │     │     └─ values-night
   │        │  │  │  │     │        └─ styles.xml
   │        │  │  │  │     └─ profile
   │        │  │  │  │        └─ AndroidManifest.xml
   │        │  │  │  ├─ build.gradle
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle
   │        │  │  ├─ ios
   │        │  │  │  ├─ firebase_app_id_file.json
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.h
   │        │  │  │  │  ├─ AppDelegate.m
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  ├─ Contents.json
   │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     ├─ LaunchImage.png
   │        │  │  │  │  │     ├─ LaunchImage@2x.png
   │        │  │  │  │  │     ├─ LaunchImage@3x.png
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ GoogleService-Info.plist
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ main.m
   │        │  │  │  │  ├─ Runner-Bridging-Header.h
   │        │  │  │  │  └─ Runner.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        ├─ IDEWorkspaceChecks.plist
   │        │  │  │        └─ WorkspaceSettings.xcsettings
   │        │  │  ├─ lib
   │        │  │  │  ├─ auth.dart
   │        │  │  │  ├─ firebase_options.dart
   │        │  │  │  ├─ main.dart
   │        │  │  │  └─ profile.dart
   │        │  │  ├─ macos
   │        │  │  │  ├─ firebase_app_id_file.json
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ GoogleService-Info.plist
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        ├─ IDEWorkspaceChecks.plist
   │        │  │  │        └─ WorkspaceSettings.xcsettings
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ web
   │        │  │  │  ├─ favicon.png
   │        │  │  │  ├─ index.html
   │        │  │  │  └─ manifest.json
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ Classes
   │        │  │  │  ├─ firebase_auth_messages.g.m
   │        │  │  │  ├─ FLTAuthStateChannelStreamHandler.m
   │        │  │  │  ├─ FLTFirebaseAuthPlugin.m
   │        │  │  │  ├─ FLTIdTokenChannelStreamHandler.m
   │        │  │  │  ├─ FLTPhoneNumberVerificationStreamHandler.m
   │        │  │  │  ├─ PigeonParser.m
   │        │  │  │  ├─ Private
   │        │  │  │  │  ├─ FLTAuthStateChannelStreamHandler.h
   │        │  │  │  │  ├─ FLTIdTokenChannelStreamHandler.h
   │        │  │  │  │  ├─ FLTPhoneNumberVerificationStreamHandler.h
   │        │  │  │  │  └─ PigeonParser.h
   │        │  │  │  └─ Public
   │        │  │  │     ├─ CustomPigeonHeader.h
   │        │  │  │     ├─ firebase_auth_messages.g.h
   │        │  │  │     └─ FLTFirebaseAuthPlugin.h
   │        │  │  └─ firebase_auth.podspec
   │        │  ├─ lib
   │        │  │  ├─ firebase_auth.dart
   │        │  │  └─ src
   │        │  │     ├─ confirmation_result.dart
   │        │  │     ├─ firebase_auth.dart
   │        │  │     ├─ multi_factor.dart
   │        │  │     ├─ recaptcha_verifier.dart
   │        │  │     ├─ user.dart
   │        │  │     └─ user_credential.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ Classes
   │        │  │  │  ├─ firebase_auth_messages.g.m
   │        │  │  │  ├─ FLTAuthStateChannelStreamHandler.m
   │        │  │  │  ├─ FLTFirebaseAuthPlugin.m
   │        │  │  │  ├─ FLTIdTokenChannelStreamHandler.m
   │        │  │  │  ├─ FLTPhoneNumberVerificationStreamHandler.m
   │        │  │  │  ├─ PigeonParser.m
   │        │  │  │  ├─ Private
   │        │  │  │  │  ├─ FLTAuthStateChannelStreamHandler.h
   │        │  │  │  │  ├─ FLTIdTokenChannelStreamHandler.h
   │        │  │  │  │  ├─ FLTPhoneNumberVerificationStreamHandler.h
   │        │  │  │  │  └─ PigeonParser.h
   │        │  │  │  └─ Public
   │        │  │  │     ├─ CustomPigeonHeader.h
   │        │  │  │     ├─ firebase_auth_messages.g.h
   │        │  │  │     └─ FLTFirebaseAuthPlugin.h
   │        │  │  └─ firebase_auth.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  ├─ firebase_auth_test.dart
   │        │  │  ├─ mock.dart
   │        │  │  └─ user_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ firebase_auth_plugin.cpp
   │        │     ├─ firebase_auth_plugin.h
   │        │     ├─ firebase_auth_plugin_c_api.cpp
   │        │     ├─ include
   │        │     │  └─ firebase_auth
   │        │     │     └─ firebase_auth_plugin_c_api.h
   │        │     ├─ messages.g.cpp
   │        │     ├─ messages.g.h
   │        │     └─ test
   │        │        └─ firebase_auth_plugin_test.cpp
   │        ├─ firebase_core
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ gradle.properties
   │        │  │  ├─ settings.gradle
   │        │  │  ├─ src
   │        │  │  │  └─ main
   │        │  │  │     ├─ AndroidManifest.xml
   │        │  │  │     └─ java
   │        │  │  │        └─ io
   │        │  │  │           └─ flutter
   │        │  │  │              └─ plugins
   │        │  │  │                 └─ firebase
   │        │  │  │                    └─ core
   │        │  │  │                       ├─ FlutterFirebaseCorePlugin.java
   │        │  │  │                       ├─ FlutterFirebaseCoreRegistrar.java
   │        │  │  │                       ├─ FlutterFirebasePlugin.java
   │        │  │  │                       ├─ FlutterFirebasePluginRegistry.java
   │        │  │  │                       └─ GeneratedAndroidFirebaseCore.java
   │        │  │  └─ user-agent.gradle
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle
   │        │  │  │  │  └─ src
   │        │  │  │  │     ├─ debug
   │        │  │  │  │     │  └─ AndroidManifest.xml
   │        │  │  │  │     ├─ main
   │        │  │  │  │     │  ├─ AndroidManifest.xml
   │        │  │  │  │     │  └─ res
   │        │  │  │  │     │     ├─ drawable
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ mipmap-hdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-mdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     └─ values
   │        │  │  │  │     │        ├─ styles.xml
   │        │  │  │  │     │        └─ values.xml
   │        │  │  │  │     └─ profile
   │        │  │  │  │        └─ AndroidManifest.xml
   │        │  │  │  ├─ build.gradle
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle
   │        │  │  ├─ ios
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.h
   │        │  │  │  │  ├─ AppDelegate.m
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  ├─ Contents.json
   │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     ├─ LaunchImage.png
   │        │  │  │  │  │     ├─ LaunchImage@2x.png
   │        │  │  │  │  │     ├─ LaunchImage@3x.png
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  └─ main.m
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        └─ IDEWorkspaceChecks.plist
   │        │  │  ├─ lib
   │        │  │  │  ├─ firebase_options.dart
   │        │  │  │  └─ main.dart
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        ├─ IDEWorkspaceChecks.plist
   │        │  │  │        └─ WorkspaceSettings.xcsettings
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ web
   │        │  │  │  └─ index.html
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ Classes
   │        │  │  │  ├─ FLTFirebaseCorePlugin.h
   │        │  │  │  ├─ FLTFirebaseCorePlugin.m
   │        │  │  │  ├─ FLTFirebasePlugin.h
   │        │  │  │  ├─ FLTFirebasePlugin.m
   │        │  │  │  ├─ FLTFirebasePluginRegistry.h
   │        │  │  │  ├─ FLTFirebasePluginRegistry.m
   │        │  │  │  ├─ messages.g.h
   │        │  │  │  └─ messages.g.m
   │        │  │  └─ firebase_core.podspec
   │        │  ├─ lib
   │        │  │  ├─ firebase_core.dart
   │        │  │  └─ src
   │        │  │     ├─ firebase.dart
   │        │  │     └─ firebase_app.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ Classes
   │        │  │  │  ├─ FLTFirebaseCorePlugin.h
   │        │  │  │  ├─ FLTFirebaseCorePlugin.m
   │        │  │  │  ├─ FLTFirebasePlugin.h
   │        │  │  │  ├─ FLTFirebasePlugin.m
   │        │  │  │  ├─ FLTFirebasePluginRegistry.h
   │        │  │  │  ├─ FLTFirebasePluginRegistry.m
   │        │  │  │  ├─ messages.g.h
   │        │  │  │  └─ messages.g.m
   │        │  │  └─ firebase_core.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  └─ firebase_core_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ firebase_core_plugin.cpp
   │        │     ├─ firebase_core_plugin.h
   │        │     ├─ firebase_core_plugin_c_api.cpp
   │        │     ├─ include
   │        │     │  └─ firebase_core
   │        │     │     └─ firebase_core_plugin_c_api.h
   │        │     ├─ messages.g.cpp
   │        │     └─ messages.g.h
   │        ├─ flutter_secure_storage_windows
   │        │  ├─ analysis_options.yaml
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ integration_test
   │        │  │  │  └─ app_test.dart
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ flutter_secure_storage_windows.dart
   │        │  │  └─ src
   │        │  │     ├─ flutter_secure_storage_windows_ffi.dart
   │        │  │     └─ flutter_secure_storage_windows_stub.dart
   │        │  ├─ LICENSE
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  └─ unit_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ flutter_secure_storage_windows_plugin.cpp
   │        │     └─ include
   │        │        └─ flutter_secure_storage_windows
   │        │           └─ flutter_secure_storage_windows_plugin.h
   │        ├─ flutter_web_auth_2
   │        │  ├─ analysis_options.yaml
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ gradle.properties
   │        │  │  ├─ settings.gradle
   │        │  │  └─ src
   │        │  │     └─ main
   │        │  │        ├─ AndroidManifest.xml
   │        │  │        └─ kotlin
   │        │  │           └─ com
   │        │  │              └─ linusu
   │        │  │                 └─ flutter_web_auth_2
   │        │  │                    ├─ AuthenticationManagementActivity.kt
   │        │  │                    ├─ CallbackActivity.kt
   │        │  │                    ├─ FlutterWebAuth2Plugin.kt
   │        │  │                    ├─ KeepAliveService.kt
   │        │  │                    ├─ TabBuilderWrapper.kt
   │        │  │                    └─ Utils.kt
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle
   │        │  │  │  │  └─ src
   │        │  │  │  │     ├─ debug
   │        │  │  │  │     │  └─ AndroidManifest.xml
   │        │  │  │  │     ├─ main
   │        │  │  │  │     │  ├─ AndroidManifest.xml
   │        │  │  │  │     │  ├─ java
   │        │  │  │  │     │  │  └─ io
   │        │  │  │  │     │  │     └─ flutter
   │        │  │  │  │     │  │        └─ plugins
   │        │  │  │  │     │  ├─ kotlin
   │        │  │  │  │     │  │  └─ com
   │        │  │  │  │     │  │     ├─ example
   │        │  │  │  │     │  │     │  └─ flutter_web_auth_example
   │        │  │  │  │     │  │     └─ linusu
   │        │  │  │  │     │  │        └─ flutter_web_auth_2_example
   │        │  │  │  │     │  │           └─ MainActivity.kt
   │        │  │  │  │     │  └─ res
   │        │  │  │  │     │     ├─ drawable
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ drawable-v21
   │        │  │  │  │     │     ├─ mipmap-hdpi
   │        │  │  │  │     │     ├─ mipmap-mdpi
   │        │  │  │  │     │     ├─ mipmap-xhdpi
   │        │  │  │  │     │     ├─ mipmap-xxhdpi
   │        │  │  │  │     │     ├─ mipmap-xxxhdpi
   │        │  │  │  │     │     ├─ values
   │        │  │  │  │     │     │  └─ styles.xml
   │        │  │  │  │     │     └─ values-night
   │        │  │  │  │     └─ profile
   │        │  │  │  │        └─ AndroidManifest.xml
   │        │  │  │  ├─ build.gradle
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle
   │        │  │  ├─ ios
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  └─ Contents.json
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  └─ Runner-Bridging-Header.h
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ linux
   │        │  │  │  ├─ CMakeLists.txt
   │        │  │  │  ├─ flutter
   │        │  │  │  │  └─ CMakeLists.txt
   │        │  │  │  ├─ main.cc
   │        │  │  │  ├─ my_application.cc
   │        │  │  │  └─ my_application.h
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test
   │        │  │  │  └─ widget_test.dart
   │        │  │  ├─ web
   │        │  │  │  ├─ auth.html
   │        │  │  │  ├─ icons
   │        │  │  │  ├─ index.html
   │        │  │  │  └─ manifest.json
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ flutter_web_auth_2
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ flutter_web_auth_2
   │        │  │  │        └─ FlutterWebAuth2Plugin.swift
   │        │  │  └─ flutter_web_auth_2.podspec
   │        │  ├─ lib
   │        │  │  ├─ flutter_web_auth_2.dart
   │        │  │  └─ src
   │        │  │     ├─ linows.dart
   │        │  │     ├─ macos.dart
   │        │  │     ├─ options.dart
   │        │  │     ├─ platform
   │        │  │     │  ├─ platform_is.dart
   │        │  │     │  ├─ universal_platform_none.dart
   │        │  │     │  ├─ universal_platform_vm.dart
   │        │  │     │  └─ universal_platform_web.dart
   │        │  │     ├─ server.dart
   │        │  │     ├─ unsupported.dart
   │        │  │     ├─ web.dart
   │        │  │     └─ webview.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ flutter_web_auth_2
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ flutter_web_auth_2
   │        │  │  │        └─ FlutterWebAuth2Plugin.swift
   │        │  │  └─ flutter_web_auth_2.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ screen-android.gif
   │        │  ├─ screen-ios.gif
   │        │  ├─ screen-macos.gif
   │        │  └─ test
   │        │     └─ flutter_web_auth_2_test.dart
   │        ├─ image_picker_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  └─ image_picker_windows.dart
   │        │  ├─ LICENSE
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  └─ test
   │        │     ├─ image_picker_windows_test.dart
   │        │     └─ image_picker_windows_test.mocks.dart
   │        ├─ path_provider_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ integration_test
   │        │  │  │  └─ path_provider_test.dart
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test_driver
   │        │  │  │  └─ integration_test.dart
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ run_loop.cpp
   │        │  │        ├─ run_loop.h
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ path_provider_windows.dart
   │        │  │  └─ src
   │        │  │     ├─ folders.dart
   │        │  │     ├─ folders_stub.dart
   │        │  │     ├─ guid.dart
   │        │  │     ├─ path_provider_windows_real.dart
   │        │  │     ├─ path_provider_windows_stub.dart
   │        │  │     └─ win32_wrappers.dart
   │        │  ├─ LICENSE
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  └─ test
   │        │     ├─ guid_test.dart
   │        │     └─ path_provider_windows_test.dart
   │        ├─ shared_preferences_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ AUTHORS
   │        │  │  ├─ integration_test
   │        │  │  │  └─ shared_preferences_test.dart
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ LICENSE
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test_driver
   │        │  │  │  └─ integration_test.dart
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ run_loop.cpp
   │        │  │        ├─ run_loop.h
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  └─ shared_preferences_windows.dart
   │        │  ├─ LICENSE
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  └─ test
   │        │     ├─ fake_path_provider_windows.dart
   │        │     ├─ legacy_shared_preferences_windows_test.dart
   │        │     └─ shared_preferences_windows_async_test.dart
   │        ├─ url_launcher_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ integration_test
   │        │  │  │  └─ url_launcher_test.dart
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test_driver
   │        │  │  │  └─ integration_test.dart
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ run_loop.cpp
   │        │  │        ├─ run_loop.h
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ src
   │        │  │  │  └─ messages.g.dart
   │        │  │  └─ url_launcher_windows.dart
   │        │  ├─ LICENSE
   │        │  ├─ pigeons
   │        │  │  ├─ copyright.txt
   │        │  │  └─ messages.dart
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  └─ url_launcher_windows_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ include
   │        │     │  └─ url_launcher_windows
   │        │     │     └─ url_launcher_windows.h
   │        │     ├─ messages.g.cpp
   │        │     ├─ messages.g.h
   │        │     ├─ system_apis.cpp
   │        │     ├─ system_apis.h
   │        │     ├─ test
   │        │     │  └─ url_launcher_windows_test.cpp
   │        │     ├─ url_launcher_plugin.cpp
   │        │     ├─ url_launcher_plugin.h
   │        │     └─ url_launcher_windows.cpp
   │        └─ window_to_front
   │           ├─ .metadata
   │           ├─ CHANGELOG.md
   │           ├─ example
   │           │  └─ readme.md
   │           ├─ lib
   │           │  └─ window_to_front.dart
   │           ├─ LICENSE
   │           ├─ linux
   │           │  ├─ CMakeLists.txt
   │           │  ├─ flutter
   │           │  │  └─ ephemeral
   │           │  │     └─ .plugin_symlinks
   │           │  │        └─ window_to_front
   │           │  │           ├─ CHANGELOG.md
   │           │  │           ├─ example
   │           │  │           │  └─ readme.md
   │           │  │           ├─ lib
   │           │  │           │  └─ window_to_front.dart
   │           │  │           ├─ LICENSE
   │           │  │           ├─ linux
   │           │  │           │  ├─ CMakeLists.txt
   │           │  │           │  ├─ flutter
   │           │  │           │  ├─ include
   │           │  │           │  │  └─ window_to_front
   │           │  │           │  │     └─ window_to_front_plugin.h
   │           │  │           │  └─ window_to_front_plugin.cc
   │           │  │           ├─ macos
   │           │  │           │  ├─ Classes
   │           │  │           │  │  └─ WindowToFrontPlugin.swift
   │           │  │           │  ├─ Flutter
   │           │  │           │  └─ window_to_front.podspec
   │           │  │           ├─ pubspec.yaml
   │           │  │           ├─ README.md
   │           │  │           └─ windows
   │           │  │              ├─ CMakeLists.txt
   │           │  │              ├─ flutter
   │           │  │              ├─ include
   │           │  │              │  └─ window_to_front
   │           │  │              │     └─ window_to_front_plugin.h
   │           │  │              └─ window_to_front_plugin.cpp
   │           │  ├─ include
   │           │  │  └─ window_to_front
   │           │  │     └─ window_to_front_plugin.h
   │           │  └─ window_to_front_plugin.cc
   │           ├─ macos
   │           │  ├─ Classes
   │           │  │  └─ WindowToFrontPlugin.swift
   │           │  ├─ Flutter
   │           │  └─ window_to_front.podspec
   │           ├─ pubspec.yaml
   │           ├─ README.md
   │           └─ windows
   │              ├─ CMakeLists.txt
   │              ├─ include
   │              │  └─ window_to_front
   │              │     └─ window_to_front_plugin.h
   │              └─ window_to_front_plugin.cpp
   └─ runner
      ├─ CMakeLists.txt
      ├─ flutter_window.cpp
      ├─ flutter_window.h
      ├─ main.cpp
      ├─ resource.h
      ├─ resources
      │  └─ app_icon.ico
      ├─ runner.exe.manifest
      ├─ Runner.rc
      ├─ utils.cpp
      ├─ utils.h
      ├─ win32_window.cpp
      └─ win32_window.h

```
```
Teamify
├─ .metadata
├─ analysis_options.yaml
├─ android
│  ├─ .kotlin
│  │  └─ sessions
│  ├─ app
│  │  ├─ build.gradle.kts
│  │  ├─ google-services.json
│  │  └─ src
│  │     ├─ debug
│  │     │  └─ AndroidManifest.xml
│  │     ├─ main
│  │     │  ├─ AndroidManifest.xml
│  │     │  ├─ java
│  │     │  │  └─ io
│  │     │  │     └─ flutter
│  │     │  │        └─ plugins
│  │     │  ├─ kotlin
│  │     │  │  └─ com
│  │     │  │     └─ example
│  │     │  │        └─ teamify
│  │     │  │           └─ MainActivity.kt
│  │     │  └─ res
│  │     │     ├─ drawable
│  │     │     │  └─ launch_background.xml
│  │     │     ├─ drawable-v21
│  │     │     │  └─ launch_background.xml
│  │     │     ├─ mipmap-hdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-mdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xxhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xxxhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ values
│  │     │     │  └─ styles.xml
│  │     │     └─ values-night
│  │     │        └─ styles.xml
│  │     └─ profile
│  │        └─ AndroidManifest.xml
│  ├─ build.gradle.kts
│  ├─ gradle
│  │  └─ wrapper
│  │     └─ gradle-wrapper.properties
│  ├─ gradle.properties
│  └─ settings.gradle.kts
├─ assets
│  └─ images
│     ├─ Icons
│     │  ├─ Apple.png
│     │  ├─ Github.png
│     │  ├─ Google.png
│     │  └─ Linkedin.png
│     ├─ logo.png
│     ├─ onboarding1.png
│     ├─ onboarding2.png
│     ├─ onboarding3.png
│     └─ SignUp
│        ├─ 1.png
│        ├─ 2.png
│        └─ 3.png
├─ devtools_options.yaml
├─ ios
│  ├─ Flutter
│  │  ├─ AppFrameworkInfo.plist
│  │  ├─ Debug.xcconfig
│  │  └─ Release.xcconfig
│  ├─ Runner
│  │  ├─ AppDelegate.swift
│  │  ├─ Assets.xcassets
│  │  │  ├─ AppIcon.appiconset
│  │  │  │  ├─ Contents.json
│  │  │  │  ├─ Icon-App-1024x1024@1x.png
│  │  │  │  ├─ Icon-App-20x20@1x.png
│  │  │  │  ├─ Icon-App-20x20@2x.png
│  │  │  │  ├─ Icon-App-20x20@3x.png
│  │  │  │  ├─ Icon-App-29x29@1x.png
│  │  │  │  ├─ Icon-App-29x29@2x.png
│  │  │  │  ├─ Icon-App-29x29@3x.png
│  │  │  │  ├─ Icon-App-40x40@1x.png
│  │  │  │  ├─ Icon-App-40x40@2x.png
│  │  │  │  ├─ Icon-App-40x40@3x.png
│  │  │  │  ├─ Icon-App-60x60@2x.png
│  │  │  │  ├─ Icon-App-60x60@3x.png
│  │  │  │  ├─ Icon-App-76x76@1x.png
│  │  │  │  ├─ Icon-App-76x76@2x.png
│  │  │  │  └─ Icon-App-83.5x83.5@2x.png
│  │  │  └─ LaunchImage.imageset
│  │  │     ├─ Contents.json
│  │  │     ├─ LaunchImage.png
│  │  │     ├─ LaunchImage@2x.png
│  │  │     ├─ LaunchImage@3x.png
│  │  │     └─ README.md
│  │  ├─ Base.lproj
│  │  │  ├─ LaunchScreen.storyboard
│  │  │  └─ Main.storyboard
│  │  ├─ Info.plist
│  │  ├─ Runner-Bridging-Header.h
│  │  └─ SceneDelegate.swift
│  ├─ Runner.xcodeproj
│  │  ├─ project.pbxproj
│  │  ├─ project.xcworkspace
│  │  │  ├─ contents.xcworkspacedata
│  │  │  └─ xcshareddata
│  │  │     ├─ IDEWorkspaceChecks.plist
│  │  │     └─ WorkspaceSettings.xcsettings
│  │  └─ xcshareddata
│  │     └─ xcschemes
│  │        └─ Runner.xcscheme
│  ├─ Runner.xcworkspace
│  │  ├─ contents.xcworkspacedata
│  │  └─ xcshareddata
│  │     ├─ IDEWorkspaceChecks.plist
│  │     └─ WorkspaceSettings.xcsettings
│  └─ RunnerTests
│     └─ RunnerTests.swift
├─ lib
│  ├─ core
│  │  ├─ constants
│  │  │  └─ app_constants.dart
│  │  ├─ di
│  │  │  └─ service_locator.dart
│  │  ├─ errors
│  │  │  ├─ exceptions.dart
│  │  │  └─ failures.dart
│  │  ├─ network
│  │  │  ├─ api_client.dart
│  │  │  ├─ dio_client.dart
│  │  │  ├─ network_info.dart
│  │  │  └─ role_storage.dart
│  │  ├─ routing
│  │  │  └─ app_router.dart
│  │  ├─ storage
│  │  │  └─ token_storage.dart
│  │  ├─ usecase
│  │  │  └─ usecase.dart
│  │  └─ utils
│  │     ├─ helpers.dart
│  │     └─ validators.dart
│  ├─ features
│  │  ├─ auth
│  │  │  ├─ data
│  │  │  │  ├─ datasource
│  │  │  │  │  ├─ auth_local_datasource.dart
│  │  │  │  │  └─ auth_remote_datasource.dart
│  │  │  │  ├─ google_auth_service.dart
│  │  │  │  ├─ models
│  │  │  │  │  └─ user_model.dart
│  │  │  │  └─ repositories
│  │  │  │     └─ auth_repository_impl.dart
│  │  │  ├─ domain
│  │  │  │  ├─ entities
│  │  │  │  │  └─ user.dart
│  │  │  │  ├─ repositories
│  │  │  │  │  └─ auth_repository.dart
│  │  │  │  └─ usecases
│  │  │  │     ├─ AppleLoginUseCase.dart
│  │  │  │     ├─ check_auth_usecase.dart
│  │  │  │     ├─ GitHubLoginUseCase.dart
│  │  │  │     ├─ GoogleLoginUseCase.dart
│  │  │  │     ├─ LinkedinLoginUseCase.dart
│  │  │  │     ├─ login_usecase.dart
│  │  │  │     ├─ logout_usecase.dart
│  │  │  │     └─ register_usecase.dart
│  │  │  └─ presentation
│  │  │     ├─ cubit
│  │  │     │  ├─ auth_cubit.dart
│  │  │     │  ├─ auth_guard_cubit.dart
│  │  │     │  ├─ auth_guard_state.dart
│  │  │     │  ├─ auth_state.dart
│  │  │     │  └─ login_cubit.dart
│  │  │     ├─ provider
│  │  │     │  └─ auth_provider.dart
│  │  │     ├─ screens
│  │  │     │  ├─ choose_role_screen.dart
│  │  │     │  ├─ login_screen.dart
│  │  │     │  ├─ otp_screen.dart
│  │  │     │  ├─ register_screen.dart
│  │  │     │  ├─ reset_password_screen.dart
│  │  │     │  ├─ success_page.dart
│  │  │     │  └─ verify_email_screen.dart
│  │  │     └─ widgets
│  │  │        ├─ auth_button.dart
│  │  │        ├─ field_card.dart
│  │  │        ├─ field_selection_step.dart
│  │  │        ├─ freelancer_details_step.dart
│  │  │        ├─ guest_details_step.dart
│  │  │        ├─ role_selector.dart
│  │  │        ├─ skills_selection_step.dart
│  │  │        ├─ skill_chip.dart
│  │  │        ├─ stat_card.dart
│  │  │        ├─ student_details_step.dart
│  │  │        └─ task_list_tile.dart
│  │  ├─ chat
│  │  │  └─ data
│  │  ├─ home
│  │  │  ├─ 2
│  │  │  │  └─ pla.dart
│  │  │  └─ presentation
│  │  │     ├─ home_screen.dart
│  │  │     └─ widgets
│  │  │        ├─ activity_item.dart
│  │  │        ├─ header_widget.dart
│  │  │        ├─ project_card.dart
│  │  │        ├─ stat_card.dart
│  │  │        └─ task_item.dart
│  │  ├─ onboarding
│  │  │  └─ presentation
│  │  │     └─ screens
│  │  │        └─ onboarding_screen.dart
│  │  ├─ projects
│  │  │  ├─ data
│  │  │  │  ├─ datasources
│  │  │  │  │  └─ project_remote_data_source.dart
│  │  │  │  ├─ models
│  │  │  │  │  └─ project_model.dart
│  │  │  │  └─ repositories
│  │  │  │     └─ project_repository_impl.dart
│  │  │  ├─ domain
│  │  │  │  ├─ entities
│  │  │  │  │  ├─ activity_entity.dart
│  │  │  │  │  ├─ project.dart
│  │  │  │  │  └─ project_entity.dart
│  │  │  │  ├─ repositories
│  │  │  │  │  └─ project_repository.dart
│  │  │  │  └─ usecases
│  │  │  │     └─ get_projects_usecase.dart
│  │  │  └─ presentation
│  │  │     ├─ cubit
│  │  │     │  ├─ activity_cubit.dart
│  │  │     │  ├─ activity_state.dart
│  │  │     │  ├─ projects_cubit.dart
│  │  │     │  └─ projects_state.dart
│  │  │     └─ screens
│  │  │        ├─ projects_screen.dart
│  │  │        └─ project_details_screen.dart
│  │  ├─ splash
│  │  │  └─ presentation
│  │  │     └─ screens
│  │  │        └─ splash_screen.dart
│  │  └─ tasks
│  │     ├─ data
│  │     │  ├─ datasources
│  │     │  │  └─ task_remote_data_source.dart
│  │     │  ├─ models
│  │     │  │  └─ task_model.dart
│  │     │  └─ repositories
│  │     │     └─ task_repository_impl.dart
│  │     ├─ domain
│  │     │  ├─ entities
│  │     │  │  └─ task_entity.dart
│  │     │  ├─ repositories
│  │     │  │  └─ task_repository.dart
│  │     │  └─ usecases
│  │     │     ├─ add_task_usecase.dart
│  │     │     └─ get_tasks_usecase.dart
│  │     └─ presentation
│  │        ├─ cubit
│  │        │  ├─ task_cubit.dart
│  │        │  └─ task_state.dart
│  │        ├─ pages
│  │        │  ├─ add_project_screen.dart
│  │        │  ├─ add_task_screen.dart
│  │        │  ├─ task_details_screen.dart
│  │        │  └─ task_list_screen.dart
│  │        └─ widgets
│  │           ├─ stat_card.dart
│  │           └─ task_list_tile.dart
│  └─ main.dart
├─ linux
│  ├─ CMakeLists.txt
│  ├─ flutter
│  │  ├─ CMakeLists.txt
│  │  └─ ephemeral
│  │     └─ .plugin_symlinks
│  │        ├─ connectivity_plus
│  │        │  ├─ android
│  │        │  │  ├─ build.gradle
│  │        │  │  ├─ gradle
│  │        │  │  │  └─ wrapper
│  │        │  │  │     └─ gradle-wrapper.properties
│  │        │  │  ├─ gradle.properties
│  │        │  │  ├─ settings.gradle
│  │        │  │  └─ src
│  │        │  │     └─ main
│  │        │  │        ├─ AndroidManifest.xml
│  │        │  │        └─ java
│  │        │  │           └─ dev
│  │        │  │              └─ fluttercommunity
│  │        │  │                 └─ plus
│  │        │  │                    └─ connectivity
│  │        │  │                       ├─ Connectivity.java
│  │        │  │                       ├─ ConnectivityBroadcastReceiver.java
│  │        │  │                       ├─ ConnectivityMethodChannelHandler.java
│  │        │  │                       └─ ConnectivityPlugin.java
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ analysis_options.yaml
│  │        │  │  ├─ android
│  │        │  │  │  ├─ app
│  │        │  │  │  │  ├─ build.gradle
│  │        │  │  │  │  └─ src
│  │        │  │  │  │     └─ main
│  │        │  │  │  │        ├─ AndroidManifest.xml
│  │        │  │  │  │        ├─ java
│  │        │  │  │  │        │  └─ io
│  │        │  │  │  │        │     └─ flutter
│  │        │  │  │  │        │        └─ plugins
│  │        │  │  │  │        │           └─ connectivityexample
│  │        │  │  │  │        │              └─ FlutterActivityTest.java
│  │        │  │  │  │        └─ res
│  │        │  │  │  │           ├─ mipmap-hdpi
│  │        │  │  │  │           │  └─ ic_launcher.png
│  │        │  │  │  │           ├─ mipmap-mdpi
│  │        │  │  │  │           │  └─ ic_launcher.png
│  │        │  │  │  │           ├─ mipmap-xhdpi
│  │        │  │  │  │           │  └─ ic_launcher.png
│  │        │  │  │  │           ├─ mipmap-xxhdpi
│  │        │  │  │  │           │  └─ ic_launcher.png
│  │        │  │  │  │           └─ mipmap-xxxhdpi
│  │        │  │  │  │              └─ ic_launcher.png
│  │        │  │  │  ├─ build.gradle
│  │        │  │  │  ├─ gradle
│  │        │  │  │  │  └─ wrapper
│  │        │  │  │  │     └─ gradle-wrapper.properties
│  │        │  │  │  ├─ gradle.properties
│  │        │  │  │  └─ settings.gradle
│  │        │  │  ├─ integration_test
│  │        │  │  │  └─ connectivity_plus_test.dart
│  │        │  │  ├─ ios
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ AppFrameworkInfo.plist
│  │        │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  └─ Release.xcconfig
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  ├─ AppIcon.appiconset
│  │        │  │  │  │  │  │  ├─ Contents.json
│  │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
│  │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
│  │        │  │  │  │  │  └─ LaunchImage.imageset
│  │        │  │  │  │  │     ├─ Contents.json
│  │        │  │  │  │  │     ├─ LaunchImage.png
│  │        │  │  │  │  │     ├─ LaunchImage@2x.png
│  │        │  │  │  │  │     ├─ LaunchImage@3x.png
│  │        │  │  │  │  │     └─ README.md
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  ├─ LaunchScreen.storyboard
│  │        │  │  │  │  │  └─ Main.storyboard
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  └─ Runner-Bridging-Header.h
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  │     ├─ swiftpm
│  │        │  │  │  │  │     │  └─ configuration
│  │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │     ├─ swiftpm
│  │        │  │  │  │     │  └─ configuration
│  │        │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ macos
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │        │  │  │  │  └─ Flutter-Release.xcconfig
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  └─ AppIcon.appiconset
│  │        │  │  │  │  │     ├─ app_icon_1024.png
│  │        │  │  │  │  │     ├─ app_icon_128.png
│  │        │  │  │  │  │     ├─ app_icon_16.png
│  │        │  │  │  │  │     ├─ app_icon_256.png
│  │        │  │  │  │  │     ├─ app_icon_32.png
│  │        │  │  │  │  │     ├─ app_icon_512.png
│  │        │  │  │  │  │     ├─ app_icon_64.png
│  │        │  │  │  │  │     └─ Contents.json
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  └─ MainMenu.xib
│  │        │  │  │  │  ├─ Configs
│  │        │  │  │  │  │  ├─ AppInfo.xcconfig
│  │        │  │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  │  ├─ Release.xcconfig
│  │        │  │  │  │  │  └─ Warnings.xcconfig
│  │        │  │  │  │  ├─ DebugProfile.entitlements
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ MainFlutterWindow.swift
│  │        │  │  │  │  └─ Release.entitlements
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  │     └─ swiftpm
│  │        │  │  │  │  │        └─ configuration
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │     └─ swiftpm
│  │        │  │  │  │        └─ configuration
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  ├─ web
│  │        │  │  │  ├─ favicon.png
│  │        │  │  │  ├─ icons
│  │        │  │  │  │  ├─ Icon-192.png
│  │        │  │  │  │  ├─ Icon-512.png
│  │        │  │  │  │  ├─ Icon-maskable-192.png
│  │        │  │  │  │  └─ Icon-maskable-512.png
│  │        │  │  │  ├─ index.html
│  │        │  │  │  └─ manifest.json
│  │        │  │  └─ windows
│  │        │  │     ├─ CMakeLists.txt
│  │        │  │     ├─ flutter
│  │        │  │     │  └─ CMakeLists.txt
│  │        │  │     └─ runner
│  │        │  │        ├─ CMakeLists.txt
│  │        │  │        ├─ flutter_window.cpp
│  │        │  │        ├─ flutter_window.h
│  │        │  │        ├─ main.cpp
│  │        │  │        ├─ resource.h
│  │        │  │        ├─ resources
│  │        │  │        │  └─ app_icon.ico
│  │        │  │        ├─ runner.exe.manifest
│  │        │  │        ├─ Runner.rc
│  │        │  │        ├─ run_loop.cpp
│  │        │  │        ├─ run_loop.h
│  │        │  │        ├─ utils.cpp
│  │        │  │        ├─ utils.h
│  │        │  │        ├─ win32_window.cpp
│  │        │  │        └─ win32_window.h
│  │        │  ├─ ios
│  │        │  │  ├─ connectivity_plus
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ connectivity_plus
│  │        │  │  │        ├─ ConnectivityPlusPlugin.swift
│  │        │  │  │        ├─ ConnectivityProvider.swift
│  │        │  │  │        ├─ PathMonitorConnectivityProvider.swift
│  │        │  │  │        └─ PrivacyInfo.xcprivacy
│  │        │  │  └─ connectivity_plus.podspec
│  │        │  ├─ lib
│  │        │  │  ├─ connectivity_plus.dart
│  │        │  │  └─ src
│  │        │  │     ├─ connectivity_plus_linux.dart
│  │        │  │     ├─ connectivity_plus_web.dart
│  │        │  │     └─ web
│  │        │  │        └─ dart_html_connectivity_plugin.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ macos
│  │        │  │  ├─ connectivity_plus
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ connectivity_plus
│  │        │  │  │        ├─ ConnectivityPlusPlugin.swift
│  │        │  │  │        ├─ ConnectivityProvider.swift
│  │        │  │  │        ├─ PathMonitorConnectivityProvider.swift
│  │        │  │  │        └─ PrivacyInfo.xcprivacy
│  │        │  │  └─ connectivity_plus.podspec
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  ├─ test
│  │        │  │  ├─ connectivity_plus_linux_test.dart
│  │        │  │  ├─ connectivity_plus_linux_test.mocks.dart
│  │        │  │  └─ connectivity_test.dart
│  │        │  └─ windows
│  │        │     ├─ CMakeLists.txt
│  │        │     ├─ connectivity_plus_plugin.cpp
│  │        │     ├─ include
│  │        │     │  └─ connectivity_plus
│  │        │     │     ├─ connectivity_plus_windows_plugin.h
│  │        │     │     └─ network_manager.h
│  │        │     └─ network_manager.cpp
│  │        ├─ desktop_webview_window
│  │        │  ├─ analysis_options.yaml
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ analysis_options.yaml
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ macos
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │        │  │  │  │  └─ Flutter-Release.xcconfig
│  │        │  │  │  ├─ Podfile
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  └─ AppIcon.appiconset
│  │        │  │  │  │  │     ├─ app_icon_1024.png
│  │        │  │  │  │  │     ├─ app_icon_128.png
│  │        │  │  │  │  │     ├─ app_icon_16.png
│  │        │  │  │  │  │     ├─ app_icon_256.png
│  │        │  │  │  │  │     ├─ app_icon_32.png
│  │        │  │  │  │  │     ├─ app_icon_512.png
│  │        │  │  │  │  │     ├─ app_icon_64.png
│  │        │  │  │  │  │     └─ Contents.json
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  └─ MainMenu.xib
│  │        │  │  │  │  ├─ Configs
│  │        │  │  │  │  │  ├─ AppInfo.xcconfig
│  │        │  │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  │  ├─ Release.xcconfig
│  │        │  │  │  │  │  └─ Warnings.xcconfig
│  │        │  │  │  │  ├─ DebugProfile.entitlements
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ MainFlutterWindow.swift
│  │        │  │  │  │  └─ Release.entitlements
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  └─ Runner.xcworkspace
│  │        │  │  │     ├─ contents.xcworkspacedata
│  │        │  │  │     └─ xcshareddata
│  │        │  │  │        └─ IDEWorkspaceChecks.plist
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  ├─ test
│  │        │  │  │  └─ widget_test.dart
│  │        │  │  ├─ test_web_pages
│  │        │  │  │  ├─ login.html
│  │        │  │  │  └─ test.html
│  │        │  │  └─ windows
│  │        │  │     ├─ CMakeLists.txt
│  │        │  │     ├─ flutter
│  │        │  │     │  └─ CMakeLists.txt
│  │        │  │     └─ runner
│  │        │  │        ├─ CMakeLists.txt
│  │        │  │        ├─ flutter_window.cpp
│  │        │  │        ├─ flutter_window.h
│  │        │  │        ├─ main.cpp
│  │        │  │        ├─ resource.h
│  │        │  │        ├─ resources
│  │        │  │        │  └─ app_icon.ico
│  │        │  │        ├─ runner.exe.manifest
│  │        │  │        ├─ Runner.rc
│  │        │  │        ├─ utils.cpp
│  │        │  │        ├─ utils.h
│  │        │  │        ├─ win32_window.cpp
│  │        │  │        └─ win32_window.h
│  │        │  ├─ lib
│  │        │  │  ├─ desktop_webview_window.dart
│  │        │  │  └─ src
│  │        │  │     ├─ create_configuration.dart
│  │        │  │     ├─ message_channel.dart
│  │        │  │     ├─ title_bar.dart
│  │        │  │     ├─ webview.dart
│  │        │  │     └─ webview_impl.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ linux
│  │        │  │  ├─ CMakeLists.txt
│  │        │  │  ├─ desktop_webview_window_plugin.cc
│  │        │  │  ├─ include
│  │        │  │  │  └─ desktop_webview_window
│  │        │  │  │     └─ desktop_webview_window_plugin.h
│  │        │  │  ├─ message_channel_plugin.cc
│  │        │  │  ├─ message_channel_plugin.h
│  │        │  │  ├─ webview_window.cc
│  │        │  │  └─ webview_window.h
│  │        │  ├─ macos
│  │        │  │  ├─ Classes
│  │        │  │  │  ├─ DesktopWebviewWindowPlugin.swift
│  │        │  │  │  ├─ MessageChannelPlugin.swift
│  │        │  │  │  ├─ WebViewLayoutController.swift
│  │        │  │  │  ├─ WebViewLayoutController.xib
│  │        │  │  │  └─ WebviewWindowController.swift
│  │        │  │  └─ desktop_webview_window.podspec
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  ├─ run_local_test_server.sh
│  │        │  ├─ test
│  │        │  │  └─ desktop_webview_window_test.dart
│  │        │  └─ windows
│  │        │     ├─ CMakeLists.txt
│  │        │     ├─ desktop_webview_window_plugin.cpp
│  │        │     ├─ flutter_view.cc
│  │        │     ├─ flutter_view.h
│  │        │     ├─ include
│  │        │     │  └─ desktop_webview_window
│  │        │     │     └─ desktop_webview_window_plugin.h
│  │        │     ├─ libs
│  │        │     │  └─ x64
│  │        │     │     ├─ WebView2Loader.dll
│  │        │     │     └─ WebView2Loader.dll.lib
│  │        │     ├─ message_channel_plugin.cc
│  │        │     ├─ message_channel_plugin.h
│  │        │     ├─ strconv.h
│  │        │     ├─ utils.cc
│  │        │     ├─ utils.h
│  │        │     ├─ WebView2.h
│  │        │     ├─ WebView2EnvironmentOptions.h
│  │        │     ├─ webview_window.cc
│  │        │     ├─ webview_window.h
│  │        │     ├─ web_view.cc
│  │        │     ├─ web_view.h
│  │        │     ├─ web_view_window_plugin.cc
│  │        │     ├─ web_view_window_plugin.h
│  │        │     └─ wil
│  │        │        ├─ com.h
│  │        │        ├─ common.h
│  │        │        ├─ cppwinrt.h
│  │        │        ├─ filesystem.h
│  │        │        ├─ LICENSE
│  │        │        ├─ registry.h
│  │        │        ├─ resource.h
│  │        │        ├─ result.h
│  │        │        ├─ result_macros.h
│  │        │        ├─ result_originate.h
│  │        │        ├─ rpc_helpers.h
│  │        │        ├─ safecast.h
│  │        │        ├─ stl.h
│  │        │        ├─ ThirdPartyNotices.txt
│  │        │        ├─ token_helpers.h
│  │        │        ├─ win32_helpers.h
│  │        │        ├─ winrt.h
│  │        │        ├─ wistd_config.h
│  │        │        ├─ wistd_functional.h
│  │        │        ├─ wistd_memory.h
│  │        │        ├─ wistd_type_traits.h
│  │        │        └─ wrl.h
│  │        ├─ file_picker
│  │        │  ├─ analysis_options.yaml
│  │        │  ├─ android
│  │        │  │  ├─ build.gradle
│  │        │  │  ├─ gradle
│  │        │  │  │  └─ wrapper
│  │        │  │  │     └─ gradle-wrapper.properties
│  │        │  │  ├─ proguard-rules.pro
│  │        │  │  ├─ settings.gradle
│  │        │  │  └─ src
│  │        │  │     └─ main
│  │        │  │        ├─ AndroidManifest.xml
│  │        │  │        └─ kotlin
│  │        │  │           └─ com
│  │        │  │              └─ mr
│  │        │  │                 └─ flutter
│  │        │  │                    └─ plugin
│  │        │  │                       └─ filepicker
│  │        │  │                          ├─ FileInfo.kt
│  │        │  │                          ├─ FilePickerDelegate.kt
│  │        │  │                          ├─ FilePickerPlugin.kt
│  │        │  │                          ├─ FileUtils.kt
│  │        │  │                          └─ MethodResultWrapper.kt
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ CONTRIBUTING.md
│  │        │  ├─ example
│  │        │  │  ├─ analysis_options.yaml
│  │        │  │  ├─ android
│  │        │  │  │  ├─ app
│  │        │  │  │  │  ├─ build.gradle.kts
│  │        │  │  │  │  └─ src
│  │        │  │  │  │     ├─ debug
│  │        │  │  │  │     │  └─ AndroidManifest.xml
│  │        │  │  │  │     ├─ main
│  │        │  │  │  │     │  ├─ AndroidManifest.xml
│  │        │  │  │  │     │  ├─ kotlin
│  │        │  │  │  │     │  │  └─ com
│  │        │  │  │  │     │  │     └─ mr
│  │        │  │  │  │     │  │        └─ flutter
│  │        │  │  │  │     │  │           └─ plugin
│  │        │  │  │  │     │  │              └─ filepicker
│  │        │  │  │  │     │  │                 └─ file_picker_example
│  │        │  │  │  │     │  │                    └─ MainActivity.kt
│  │        │  │  │  │     │  └─ res
│  │        │  │  │  │     │     ├─ drawable
│  │        │  │  │  │     │     │  └─ launch_background.xml
│  │        │  │  │  │     │     ├─ drawable-v21
│  │        │  │  │  │     │     │  └─ launch_background.xml
│  │        │  │  │  │     │     ├─ mipmap-hdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ mipmap-mdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ mipmap-xhdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ mipmap-xxhdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ mipmap-xxxhdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ values
│  │        │  │  │  │     │     │  └─ styles.xml
│  │        │  │  │  │     │     └─ values-night
│  │        │  │  │  │     │        └─ styles.xml
│  │        │  │  │  │     └─ profile
│  │        │  │  │  │        └─ AndroidManifest.xml
│  │        │  │  │  ├─ build.gradle.kts
│  │        │  │  │  ├─ gradle
│  │        │  │  │  │  └─ wrapper
│  │        │  │  │  │     └─ gradle-wrapper.properties
│  │        │  │  │  ├─ gradle.properties
│  │        │  │  │  └─ settings.gradle.kts
│  │        │  │  ├─ ios
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ AppFrameworkInfo.plist
│  │        │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  └─ Release.xcconfig
│  │        │  │  │  ├─ gpxgenerator_path.gpx
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.h
│  │        │  │  │  │  ├─ AppDelegate.m
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  ├─ AppIcon.appiconset
│  │        │  │  │  │  │  │  ├─ Contents.json
│  │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
│  │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
│  │        │  │  │  │  │  └─ LaunchImage.imageset
│  │        │  │  │  │  │     ├─ Contents.json
│  │        │  │  │  │  │     ├─ LaunchImage.png
│  │        │  │  │  │  │     ├─ LaunchImage@2x.png
│  │        │  │  │  │  │     ├─ LaunchImage@3x.png
│  │        │  │  │  │  │     └─ README.md
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  ├─ LaunchScreen.storyboard
│  │        │  │  │  │  │  └─ Main.storyboard
│  │        │  │  │  │  ├─ File.swift
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ main.m
│  │        │  │  │  │  └─ Runner-Bridging-Header.h
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  │     ├─ swiftpm
│  │        │  │  │  │  │     │  └─ Package.resolved
│  │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  └─ Runner.xcworkspace
│  │        │  │  │     ├─ contents.xcworkspacedata
│  │        │  │  │     └─ xcshareddata
│  │        │  │  │        ├─ IDEWorkspaceChecks.plist
│  │        │  │  │        ├─ swiftpm
│  │        │  │  │        │  └─ Package.resolved
│  │        │  │  │        └─ WorkspaceSettings.xcsettings
│  │        │  │  ├─ lib
│  │        │  │  │  ├─ main.dart
│  │        │  │  │  └─ src
│  │        │  │  │     └─ file_picker_demo.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ macos
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │        │  │  │  │  └─ Flutter-Release.xcconfig
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  └─ AppIcon.appiconset
│  │        │  │  │  │  │     ├─ app_icon_1024.png
│  │        │  │  │  │  │     ├─ app_icon_128.png
│  │        │  │  │  │  │     ├─ app_icon_16.png
│  │        │  │  │  │  │     ├─ app_icon_256.png
│  │        │  │  │  │  │     ├─ app_icon_32.png
│  │        │  │  │  │  │     ├─ app_icon_512.png
│  │        │  │  │  │  │     ├─ app_icon_64.png
│  │        │  │  │  │  │     └─ Contents.json
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  └─ MainMenu.xib
│  │        │  │  │  │  ├─ Configs
│  │        │  │  │  │  │  ├─ AppInfo.xcconfig
│  │        │  │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  │  ├─ Release.xcconfig
│  │        │  │  │  │  │  └─ Warnings.xcconfig
│  │        │  │  │  │  ├─ DebugProfile.entitlements
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ MainFlutterWindow.swift
│  │        │  │  │  │  └─ Release.entitlements
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  ├─ screenshots
│  │        │  │  │  ├─ example_android.gif
│  │        │  │  │  ├─ example_ios.gif
│  │        │  │  │  ├─ example_linux.gif
│  │        │  │  │  ├─ example_macos.gif
│  │        │  │  │  └─ example_windows.gif
│  │        │  │  ├─ web
│  │        │  │  │  ├─ favicon.png
│  │        │  │  │  ├─ icons
│  │        │  │  │  │  ├─ Icon-192.png
│  │        │  │  │  │  └─ Icon-512.png
│  │        │  │  │  ├─ index.html
│  │        │  │  │  └─ manifest.json
│  │        │  │  └─ windows
│  │        │  │     ├─ CMakeLists.txt
│  │        │  │     ├─ flutter
│  │        │  │     │  └─ CMakeLists.txt
│  │        │  │     └─ runner
│  │        │  │        ├─ CMakeLists.txt
│  │        │  │        ├─ flutter_window.cpp
│  │        │  │        ├─ flutter_window.h
│  │        │  │        ├─ main.cpp
│  │        │  │        ├─ resource.h
│  │        │  │        ├─ resources
│  │        │  │        │  └─ app_icon.ico
│  │        │  │        ├─ runner.exe.manifest
│  │        │  │        ├─ Runner.rc
│  │        │  │        ├─ utils.cpp
│  │        │  │        ├─ utils.h
│  │        │  │        ├─ win32_window.cpp
│  │        │  │        └─ win32_window.h
│  │        │  ├─ ios
│  │        │  │  ├─ file_picker
│  │        │  │  │  ├─ Package.resolved
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ file_picker
│  │        │  │  │        ├─ FileInfo.m
│  │        │  │  │        ├─ FilePickerPlugin.m
│  │        │  │  │        ├─ FilePickerUtils.m
│  │        │  │  │        ├─ ImageUtils.m
│  │        │  │  │        ├─ include
│  │        │  │  │        │  ├─ file_picker
│  │        │  │  │        │  │  ├─ FileInfo.h
│  │        │  │  │        │  │  ├─ FilePickerPlugin.h
│  │        │  │  │        │  │  ├─ FilePickerUtils.h
│  │        │  │  │        │  │  └─ ImageUtils.h
│  │        │  │  │        │  ├─ file_picker-umbrella.h
│  │        │  │  │        │  └─ file_picker.modulemap
│  │        │  │  │        └─ PrivacyInfo.xcprivacy
│  │        │  │  └─ file_picker.podspec
│  │        │  ├─ lib
│  │        │  │  ├─ file_picker.dart
│  │        │  │  ├─ src
│  │        │  │  │  ├─ exceptions.dart
│  │        │  │  │  ├─ file_picker.dart
│  │        │  │  │  ├─ file_picker_io.dart
│  │        │  │  │  ├─ file_picker_macos.dart
│  │        │  │  │  ├─ file_picker_result.dart
│  │        │  │  │  ├─ linux
│  │        │  │  │  │  ├─ file_picker_linux.dart
│  │        │  │  │  │  ├─ filters.dart
│  │        │  │  │  │  ├─ xdp_filechooser.dart
│  │        │  │  │  │  └─ xdp_request.dart
│  │        │  │  │  ├─ platform_file.dart
│  │        │  │  │  ├─ utils.dart
│  │        │  │  │  └─ windows
│  │        │  │  │     ├─ file_picker_windows.dart
│  │        │  │  │     ├─ file_picker_windows_ffi_types.dart
│  │        │  │  │     └─ file_picker_windows_stub.dart
│  │        │  │  └─ _internal
│  │        │  │     └─ file_picker_web.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ macos
│  │        │  │  ├─ file_picker
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ file_picker
│  │        │  │  │        ├─ FilePickerPlugin.swift
│  │        │  │  │        └─ PrivacyInfo.xcprivacy
│  │        │  │  └─ file_picker.podspec
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     ├─ common.dart
│  │        │     ├─ file_picker_macos_test.dart
│  │        │     ├─ file_picker_utils_test.dart
│  │        │     ├─ file_picker_windows_test.dart
│  │        │     ├─ linux
│  │        │     │  └─ xdp_filter_test.dart
│  │        │     └─ test_files
│  │        │        ├─ franz-michael-schneeberger-unsplash.jpg
│  │        │        ├─ test.pdf
│  │        │        └─ test.yml
│  │        ├─ file_selector_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ lib
│  │        │  │  │  ├─ get_directory_page.dart
│  │        │  │  │  ├─ get_multiple_directories_page.dart
│  │        │  │  │  ├─ home_page.dart
│  │        │  │  │  ├─ main.dart
│  │        │  │  │  ├─ open_image_page.dart
│  │        │  │  │  ├─ open_multiple_images_page.dart
│  │        │  │  │  ├─ open_text_page.dart
│  │        │  │  │  └─ save_text_page.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  └─ README.md
│  │        │  ├─ lib
│  │        │  │  ├─ file_selector_linux.dart
│  │        │  │  └─ src
│  │        │  │     └─ messages.g.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ linux
│  │        │  │  ├─ CMakeLists.txt
│  │        │  │  ├─ file_selector_plugin.cc
│  │        │  │  ├─ file_selector_plugin_private.h
│  │        │  │  ├─ include
│  │        │  │  │  └─ file_selector_linux
│  │        │  │  │     └─ file_selector_plugin.h
│  │        │  │  ├─ messages.g.cc
│  │        │  │  ├─ messages.g.h
│  │        │  │  └─ test
│  │        │  │     ├─ file_selector_plugin_test.cc
│  │        │  │     └─ test_main.cc
│  │        │  ├─ pigeons
│  │        │  │  ├─ copyright.txt
│  │        │  │  └─ messages.dart
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     └─ file_selector_linux_test.dart
│  │        ├─ flutter_secure_storage_linux
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ LICENSE
│  │        │  ├─ linux
│  │        │  │  ├─ CMakeLists.txt
│  │        │  │  ├─ flutter_secure_storage_linux_plugin.cc
│  │        │  │  └─ include
│  │        │  │     ├─ FHashTable.hpp
│  │        │  │     ├─ flutter_secure_storage_linux
│  │        │  │     │  └─ flutter_secure_storage_linux_plugin.h
│  │        │  │     ├─ json.hpp
│  │        │  │     └─ Secret.hpp
│  │        │  ├─ pubspec.yaml
│  │        │  └─ README.md
│  │        ├─ flutter_web_auth_2
│  │        │  ├─ analysis_options.yaml
│  │        │  ├─ android
│  │        │  │  ├─ build.gradle
│  │        │  │  ├─ gradle
│  │        │  │  │  └─ wrapper
│  │        │  │  │     └─ gradle-wrapper.properties
│  │        │  │  ├─ gradle.properties
│  │        │  │  ├─ settings.gradle
│  │        │  │  └─ src
│  │        │  │     └─ main
│  │        │  │        ├─ AndroidManifest.xml
│  │        │  │        └─ kotlin
│  │        │  │           └─ com
│  │        │  │              └─ linusu
│  │        │  │                 └─ flutter_web_auth_2
│  │        │  │                    ├─ AuthenticationManagementActivity.kt
│  │        │  │                    ├─ CallbackActivity.kt
│  │        │  │                    ├─ FlutterWebAuth2Plugin.kt
│  │        │  │                    ├─ KeepAliveService.kt
│  │        │  │                    ├─ TabBuilderWrapper.kt
│  │        │  │                    └─ Utils.kt
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ analysis_options.yaml
│  │        │  │  ├─ android
│  │        │  │  │  ├─ app
│  │        │  │  │  │  ├─ build.gradle
│  │        │  │  │  │  └─ src
│  │        │  │  │  │     ├─ debug
│  │        │  │  │  │     │  └─ AndroidManifest.xml
│  │        │  │  │  │     ├─ main
│  │        │  │  │  │     │  ├─ AndroidManifest.xml
│  │        │  │  │  │     │  ├─ java
│  │        │  │  │  │     │  │  └─ io
│  │        │  │  │  │     │  │     └─ flutter
│  │        │  │  │  │     │  │        └─ plugins
│  │        │  │  │  │     │  ├─ kotlin
│  │        │  │  │  │     │  │  └─ com
│  │        │  │  │  │     │  │     ├─ example
│  │        │  │  │  │     │  │     │  └─ flutter_web_auth_example
│  │        │  │  │  │     │  │     └─ linusu
│  │        │  │  │  │     │  │        └─ flutter_web_auth_2_example
│  │        │  │  │  │     │  │           └─ MainActivity.kt
│  │        │  │  │  │     │  └─ res
│  │        │  │  │  │     │     ├─ drawable
│  │        │  │  │  │     │     │  └─ launch_background.xml
│  │        │  │  │  │     │     ├─ drawable-v21
│  │        │  │  │  │     │     ├─ mipmap-hdpi
│  │        │  │  │  │     │     ├─ mipmap-mdpi
│  │        │  │  │  │     │     ├─ mipmap-xhdpi
│  │        │  │  │  │     │     ├─ mipmap-xxhdpi
│  │        │  │  │  │     │     ├─ mipmap-xxxhdpi
│  │        │  │  │  │     │     ├─ values
│  │        │  │  │  │     │     │  └─ styles.xml
│  │        │  │  │  │     │     └─ values-night
│  │        │  │  │  │     └─ profile
│  │        │  │  │  │        └─ AndroidManifest.xml
│  │        │  │  │  ├─ build.gradle
│  │        │  │  │  ├─ gradle
│  │        │  │  │  │  └─ wrapper
│  │        │  │  │  │     └─ gradle-wrapper.properties
│  │        │  │  │  ├─ gradle.properties
│  │        │  │  │  └─ settings.gradle
│  │        │  │  ├─ ios
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ AppFrameworkInfo.plist
│  │        │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  └─ Release.xcconfig
│  │        │  │  │  ├─ Podfile
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  ├─ AppIcon.appiconset
│  │        │  │  │  │  │  │  └─ Contents.json
│  │        │  │  │  │  │  └─ LaunchImage.imageset
│  │        │  │  │  │  │     ├─ Contents.json
│  │        │  │  │  │  │     └─ README.md
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  ├─ LaunchScreen.storyboard
│  │        │  │  │  │  │  └─ Main.storyboard
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  └─ Runner-Bridging-Header.h
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ macos
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │        │  │  │  │  └─ Flutter-Release.xcconfig
│  │        │  │  │  ├─ Podfile
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  └─ AppIcon.appiconset
│  │        │  │  │  │  │     └─ Contents.json
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  └─ MainMenu.xib
│  │        │  │  │  │  ├─ Configs
│  │        │  │  │  │  │  ├─ AppInfo.xcconfig
│  │        │  │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  │  ├─ Release.xcconfig
│  │        │  │  │  │  │  └─ Warnings.xcconfig
│  │        │  │  │  │  ├─ DebugProfile.entitlements
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ MainFlutterWindow.swift
│  │        │  │  │  │  └─ Release.entitlements
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  ├─ test
│  │        │  │  │  └─ widget_test.dart
│  │        │  │  ├─ web
│  │        │  │  │  ├─ auth.html
│  │        │  │  │  ├─ icons
│  │        │  │  │  ├─ index.html
│  │        │  │  │  └─ manifest.json
│  │        │  │  └─ windows
│  │        │  │     ├─ CMakeLists.txt
│  │        │  │     ├─ flutter
│  │        │  │     │  └─ CMakeLists.txt
│  │        │  │     └─ runner
│  │        │  │        ├─ CMakeLists.txt
│  │        │  │        ├─ flutter_window.cpp
│  │        │  │        ├─ flutter_window.h
│  │        │  │        ├─ main.cpp
│  │        │  │        ├─ resource.h
│  │        │  │        ├─ resources
│  │        │  │        │  └─ app_icon.ico
│  │        │  │        ├─ runner.exe.manifest
│  │        │  │        ├─ Runner.rc
│  │        │  │        ├─ utils.cpp
│  │        │  │        ├─ utils.h
│  │        │  │        ├─ win32_window.cpp
│  │        │  │        └─ win32_window.h
│  │        │  ├─ ios
│  │        │  │  ├─ flutter_web_auth_2
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ flutter_web_auth_2
│  │        │  │  │        └─ FlutterWebAuth2Plugin.swift
│  │        │  │  └─ flutter_web_auth_2.podspec
│  │        │  ├─ lib
│  │        │  │  ├─ flutter_web_auth_2.dart
│  │        │  │  └─ src
│  │        │  │     ├─ linows.dart
│  │        │  │     ├─ macos.dart
│  │        │  │     ├─ options.dart
│  │        │  │     ├─ platform
│  │        │  │     │  ├─ platform_is.dart
│  │        │  │     │  ├─ universal_platform_none.dart
│  │        │  │     │  ├─ universal_platform_vm.dart
│  │        │  │     │  └─ universal_platform_web.dart
│  │        │  │     ├─ server.dart
│  │        │  │     ├─ unsupported.dart
│  │        │  │     ├─ web.dart
│  │        │  │     └─ webview.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ macos
│  │        │  │  ├─ flutter_web_auth_2
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ flutter_web_auth_2
│  │        │  │  │        └─ FlutterWebAuth2Plugin.swift
│  │        │  │  └─ flutter_web_auth_2.podspec
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  ├─ screen-android.gif
│  │        │  ├─ screen-ios.gif
│  │        │  ├─ screen-macos.gif
│  │        │  └─ test
│  │        │     └─ flutter_web_auth_2_test.dart
│  │        ├─ image_picker_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  └─ README.md
│  │        │  ├─ lib
│  │        │  │  └─ image_picker_linux.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     ├─ image_picker_linux_test.dart
│  │        │     └─ image_picker_linux_test.mocks.dart
│  │        ├─ path_provider_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ integration_test
│  │        │  │  │  └─ path_provider_test.dart
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  └─ test_driver
│  │        │  │     └─ integration_test.dart
│  │        │  ├─ lib
│  │        │  │  ├─ path_provider_linux.dart
│  │        │  │  └─ src
│  │        │  │     ├─ get_application_id.dart
│  │        │  │     ├─ get_application_id_real.dart
│  │        │  │     ├─ get_application_id_stub.dart
│  │        │  │     └─ path_provider_linux.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     ├─ get_application_id_test.dart
│  │        │     └─ path_provider_linux_test.dart
│  │        ├─ shared_preferences_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ integration_test
│  │        │  │  │  └─ shared_preferences_test.dart
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  └─ test_driver
│  │        │  │     └─ integration_test.dart
│  │        │  ├─ lib
│  │        │  │  └─ shared_preferences_linux.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     ├─ fake_path_provider_linux.dart
│  │        │     ├─ legacy_shared_preferences_linux_test.dart
│  │        │     └─ shared_preferences_linux_async_test.dart
│  │        ├─ url_launcher_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ integration_test
│  │        │  │  │  └─ url_launcher_test.dart
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  └─ test_driver
│  │        │  │     └─ integration_test.dart
│  │        │  ├─ lib
│  │        │  │  ├─ src
│  │        │  │  │  └─ messages.g.dart
│  │        │  │  └─ url_launcher_linux.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ linux
│  │        │  │  ├─ CMakeLists.txt
│  │        │  │  ├─ include
│  │        │  │  │  └─ url_launcher_linux
│  │        │  │  │     └─ url_launcher_plugin.h
│  │        │  │  ├─ messages.g.cc
│  │        │  │  ├─ messages.g.h
│  │        │  │  ├─ test
│  │        │  │  │  └─ url_launcher_linux_test.cc
│  │        │  │  ├─ url_launcher_plugin.cc
│  │        │  │  └─ url_launcher_plugin_private.h
│  │        │  ├─ pigeons
│  │        │  │  ├─ copyright.txt
│  │        │  │  └─ messages.dart
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     └─ url_launcher_linux_test.dart
│  │        └─ window_to_front
│  │           ├─ .metadata
│  │           ├─ CHANGELOG.md
│  │           ├─ example
│  │           │  └─ readme.md
│  │           ├─ lib
│  │           │  └─ window_to_front.dart
│  │           ├─ LICENSE
│  │           ├─ linux
│  │           │  ├─ CMakeLists.txt
│  │           │  ├─ flutter
│  │           │  │  └─ ephemeral
│  │           │  │     └─ .plugin_symlinks
│  │           │  │        └─ window_to_front
│  │           │  │           ├─ CHANGELOG.md
│  │           │  │           ├─ example
│  │           │  │           │  └─ readme.md
│  │           │  │           ├─ lib
│  │           │  │           │  └─ window_to_front.dart
│  │           │  │           ├─ LICENSE
│  │           │  │           ├─ linux
│  │           │  │           │  ├─ CMakeLists.txt
│  │           │  │           │  ├─ flutter
│  │           │  │           │  ├─ include
│  │           │  │           │  │  └─ window_to_front
│  │           │  │           │  │     └─ window_to_front_plugin.h
│  │           │  │           │  └─ window_to_front_plugin.cc
│  │           │  │           ├─ macos
│  │           │  │           │  ├─ Classes
│  │           │  │           │  │  └─ WindowToFrontPlugin.swift
│  │           │  │           │  ├─ Flutter
│  │           │  │           │  └─ window_to_front.podspec
│  │           │  │           ├─ pubspec.yaml
│  │           │  │           ├─ README.md
│  │           │  │           └─ windows
│  │           │  │              ├─ CMakeLists.txt
│  │           │  │              ├─ flutter
│  │           │  │              ├─ include
│  │           │  │              │  └─ window_to_front
│  │           │  │              │     └─ window_to_front_plugin.h
│  │           │  │              └─ window_to_front_plugin.cpp
│  │           │  ├─ include
│  │           │  │  └─ window_to_front
│  │           │  │     └─ window_to_front_plugin.h
│  │           │  └─ window_to_front_plugin.cc
│  │           ├─ macos
│  │           │  ├─ Classes
│  │           │  │  └─ WindowToFrontPlugin.swift
│  │           │  ├─ Flutter
│  │           │  └─ window_to_front.podspec
│  │           ├─ pubspec.yaml
│  │           ├─ README.md
│  │           └─ windows
│  │              ├─ CMakeLists.txt
│  │              ├─ include
│  │              │  └─ window_to_front
│  │              │     └─ window_to_front_plugin.h
│  │              └─ window_to_front_plugin.cpp
│  └─ runner
│     ├─ CMakeLists.txt
│     ├─ main.cc
│     ├─ my_application.cc
│     └─ my_application.h
├─ macos
│  ├─ Flutter
│  │  ├─ Flutter-Debug.xcconfig
│  │  └─ Flutter-Release.xcconfig
│  ├─ Runner
│  │  ├─ AppDelegate.swift
│  │  ├─ Assets.xcassets
│  │  │  └─ AppIcon.appiconset
│  │  │     ├─ app_icon_1024.png
│  │  │     ├─ app_icon_128.png
│  │  │     ├─ app_icon_16.png
│  │  │     ├─ app_icon_256.png
│  │  │     ├─ app_icon_32.png
│  │  │     ├─ app_icon_512.png
│  │  │     ├─ app_icon_64.png
│  │  │     └─ Contents.json
│  │  ├─ Base.lproj
│  │  │  └─ MainMenu.xib
│  │  ├─ Configs
│  │  │  ├─ AppInfo.xcconfig
│  │  │  ├─ Debug.xcconfig
│  │  │  ├─ Release.xcconfig
│  │  │  └─ Warnings.xcconfig
│  │  ├─ DebugProfile.entitlements
│  │  ├─ Info.plist
│  │  ├─ MainFlutterWindow.swift
│  │  └─ Release.entitlements
│  ├─ Runner.xcodeproj
│  │  ├─ project.pbxproj
│  │  ├─ project.xcworkspace
│  │  │  └─ xcshareddata
│  │  │     └─ IDEWorkspaceChecks.plist
│  │  └─ xcshareddata
│  │     └─ xcschemes
│  │        └─ Runner.xcscheme
│  ├─ Runner.xcworkspace
│  │  ├─ contents.xcworkspacedata
│  │  └─ xcshareddata
│  │     └─ IDEWorkspaceChecks.plist
│  └─ RunnerTests
│     └─ RunnerTests.swift
├─ pubspec.yaml
├─ README.md
├─ test
│  └─ widget_test.dart
├─ web
│  ├─ favicon.png
│  ├─ icons
│  │  ├─ Icon-192.png
│  │  ├─ Icon-512.png
│  │  ├─ Icon-maskable-192.png
│  │  └─ Icon-maskable-512.png
│  ├─ index.html
│  └─ manifest.json
└─ windows
   ├─ CMakeLists.txt
   ├─ flutter
   │  ├─ CMakeLists.txt
   │  └─ ephemeral
   │     └─ .plugin_symlinks
   │        ├─ connectivity_plus
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ gradle.properties
   │        │  │  ├─ settings.gradle
   │        │  │  └─ src
   │        │  │     └─ main
   │        │  │        ├─ AndroidManifest.xml
   │        │  │        └─ java
   │        │  │           └─ dev
   │        │  │              └─ fluttercommunity
   │        │  │                 └─ plus
   │        │  │                    └─ connectivity
   │        │  │                       ├─ Connectivity.java
   │        │  │                       ├─ ConnectivityBroadcastReceiver.java
   │        │  │                       ├─ ConnectivityMethodChannelHandler.java
   │        │  │                       └─ ConnectivityPlugin.java
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle
   │        │  │  │  │  └─ src
   │        │  │  │  │     └─ main
   │        │  │  │  │        ├─ AndroidManifest.xml
   │        │  │  │  │        ├─ java
   │        │  │  │  │        │  └─ io
   │        │  │  │  │        │     └─ flutter
   │        │  │  │  │        │        └─ plugins
   │        │  │  │  │        │           └─ connectivityexample
   │        │  │  │  │        │              └─ FlutterActivityTest.java
   │        │  │  │  │        └─ res
   │        │  │  │  │           ├─ mipmap-hdpi
   │        │  │  │  │           │  └─ ic_launcher.png
   │        │  │  │  │           ├─ mipmap-mdpi
   │        │  │  │  │           │  └─ ic_launcher.png
   │        │  │  │  │           ├─ mipmap-xhdpi
   │        │  │  │  │           │  └─ ic_launcher.png
   │        │  │  │  │           ├─ mipmap-xxhdpi
   │        │  │  │  │           │  └─ ic_launcher.png
   │        │  │  │  │           └─ mipmap-xxxhdpi
   │        │  │  │  │              └─ ic_launcher.png
   │        │  │  │  ├─ build.gradle
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle
   │        │  │  ├─ integration_test
   │        │  │  │  └─ connectivity_plus_test.dart
   │        │  │  ├─ ios
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  ├─ Contents.json
   │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     ├─ LaunchImage.png
   │        │  │  │  │  │     ├─ LaunchImage@2x.png
   │        │  │  │  │  │     ├─ LaunchImage@3x.png
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  └─ Runner-Bridging-Header.h
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     ├─ swiftpm
   │        │  │  │  │  │     │  └─ configuration
   │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │     ├─ swiftpm
   │        │  │  │  │     │  └─ configuration
   │        │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ linux
   │        │  │  │  ├─ CMakeLists.txt
   │        │  │  │  ├─ flutter
   │        │  │  │  │  └─ CMakeLists.txt
   │        │  │  │  ├─ main.cc
   │        │  │  │  ├─ my_application.cc
   │        │  │  │  └─ my_application.h
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     └─ swiftpm
   │        │  │  │  │  │        └─ configuration
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │     └─ swiftpm
   │        │  │  │  │        └─ configuration
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ web
   │        │  │  │  ├─ favicon.png
   │        │  │  │  ├─ icons
   │        │  │  │  │  ├─ Icon-192.png
   │        │  │  │  │  ├─ Icon-512.png
   │        │  │  │  │  ├─ Icon-maskable-192.png
   │        │  │  │  │  └─ Icon-maskable-512.png
   │        │  │  │  ├─ index.html
   │        │  │  │  └─ manifest.json
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ run_loop.cpp
   │        │  │        ├─ run_loop.h
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ connectivity_plus
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ connectivity_plus
   │        │  │  │        ├─ ConnectivityPlusPlugin.swift
   │        │  │  │        ├─ ConnectivityProvider.swift
   │        │  │  │        ├─ PathMonitorConnectivityProvider.swift
   │        │  │  │        └─ PrivacyInfo.xcprivacy
   │        │  │  └─ connectivity_plus.podspec
   │        │  ├─ lib
   │        │  │  ├─ connectivity_plus.dart
   │        │  │  └─ src
   │        │  │     ├─ connectivity_plus_linux.dart
   │        │  │     ├─ connectivity_plus_web.dart
   │        │  │     └─ web
   │        │  │        └─ dart_html_connectivity_plugin.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ connectivity_plus
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ connectivity_plus
   │        │  │  │        ├─ ConnectivityPlusPlugin.swift
   │        │  │  │        ├─ ConnectivityProvider.swift
   │        │  │  │        ├─ PathMonitorConnectivityProvider.swift
   │        │  │  │        └─ PrivacyInfo.xcprivacy
   │        │  │  └─ connectivity_plus.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  ├─ connectivity_plus_linux_test.dart
   │        │  │  ├─ connectivity_plus_linux_test.mocks.dart
   │        │  │  └─ connectivity_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ connectivity_plus_plugin.cpp
   │        │     ├─ include
   │        │     │  └─ connectivity_plus
   │        │     │     ├─ connectivity_plus_windows_plugin.h
   │        │     │     └─ network_manager.h
   │        │     └─ network_manager.cpp
   │        ├─ desktop_webview_window
   │        │  ├─ analysis_options.yaml
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ linux
   │        │  │  │  ├─ CMakeLists.txt
   │        │  │  │  ├─ flutter
   │        │  │  │  │  └─ CMakeLists.txt
   │        │  │  │  ├─ main.cc
   │        │  │  │  ├─ my_application.cc
   │        │  │  │  └─ my_application.h
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        └─ IDEWorkspaceChecks.plist
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test
   │        │  │  │  └─ widget_test.dart
   │        │  │  ├─ test_web_pages
   │        │  │  │  ├─ login.html
   │        │  │  │  └─ test.html
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ desktop_webview_window.dart
   │        │  │  └─ src
   │        │  │     ├─ create_configuration.dart
   │        │  │     ├─ message_channel.dart
   │        │  │     ├─ title_bar.dart
   │        │  │     ├─ webview.dart
   │        │  │     └─ webview_impl.dart
   │        │  ├─ LICENSE
   │        │  ├─ linux
   │        │  │  ├─ CMakeLists.txt
   │        │  │  ├─ desktop_webview_window_plugin.cc
   │        │  │  ├─ include
   │        │  │  │  └─ desktop_webview_window
   │        │  │  │     └─ desktop_webview_window_plugin.h
   │        │  │  ├─ message_channel_plugin.cc
   │        │  │  ├─ message_channel_plugin.h
   │        │  │  ├─ webview_window.cc
   │        │  │  └─ webview_window.h
   │        │  ├─ macos
   │        │  │  ├─ Classes
   │        │  │  │  ├─ DesktopWebviewWindowPlugin.swift
   │        │  │  │  ├─ MessageChannelPlugin.swift
   │        │  │  │  ├─ WebViewLayoutController.swift
   │        │  │  │  ├─ WebViewLayoutController.xib
   │        │  │  │  └─ WebviewWindowController.swift
   │        │  │  └─ desktop_webview_window.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ run_local_test_server.sh
   │        │  ├─ test
   │        │  │  └─ desktop_webview_window_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ desktop_webview_window_plugin.cpp
   │        │     ├─ flutter_view.cc
   │        │     ├─ flutter_view.h
   │        │     ├─ include
   │        │     │  └─ desktop_webview_window
   │        │     │     └─ desktop_webview_window_plugin.h
   │        │     ├─ libs
   │        │     │  └─ x64
   │        │     │     ├─ WebView2Loader.dll
   │        │     │     └─ WebView2Loader.dll.lib
   │        │     ├─ message_channel_plugin.cc
   │        │     ├─ message_channel_plugin.h
   │        │     ├─ strconv.h
   │        │     ├─ utils.cc
   │        │     ├─ utils.h
   │        │     ├─ WebView2.h
   │        │     ├─ WebView2EnvironmentOptions.h
   │        │     ├─ webview_window.cc
   │        │     ├─ webview_window.h
   │        │     ├─ web_view.cc
   │        │     ├─ web_view.h
   │        │     ├─ web_view_window_plugin.cc
   │        │     ├─ web_view_window_plugin.h
   │        │     └─ wil
   │        │        ├─ com.h
   │        │        ├─ common.h
   │        │        ├─ cppwinrt.h
   │        │        ├─ filesystem.h
   │        │        ├─ LICENSE
   │        │        ├─ registry.h
   │        │        ├─ resource.h
   │        │        ├─ result.h
   │        │        ├─ result_macros.h
   │        │        ├─ result_originate.h
   │        │        ├─ rpc_helpers.h
   │        │        ├─ safecast.h
   │        │        ├─ stl.h
   │        │        ├─ ThirdPartyNotices.txt
   │        │        ├─ token_helpers.h
   │        │        ├─ win32_helpers.h
   │        │        ├─ winrt.h
   │        │        ├─ wistd_config.h
   │        │        ├─ wistd_functional.h
   │        │        ├─ wistd_memory.h
   │        │        ├─ wistd_type_traits.h
   │        │        └─ wrl.h
   │        ├─ file_picker
   │        │  ├─ analysis_options.yaml
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ proguard-rules.pro
   │        │  │  ├─ settings.gradle
   │        │  │  └─ src
   │        │  │     └─ main
   │        │  │        ├─ AndroidManifest.xml
   │        │  │        └─ kotlin
   │        │  │           └─ com
   │        │  │              └─ mr
   │        │  │                 └─ flutter
   │        │  │                    └─ plugin
   │        │  │                       └─ filepicker
   │        │  │                          ├─ FileInfo.kt
   │        │  │                          ├─ FilePickerDelegate.kt
   │        │  │                          ├─ FilePickerPlugin.kt
   │        │  │                          ├─ FileUtils.kt
   │        │  │                          └─ MethodResultWrapper.kt
   │        │  ├─ CHANGELOG.md
   │        │  ├─ CONTRIBUTING.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle.kts
   │        │  │  │  │  └─ src
   │        │  │  │  │     ├─ debug
   │        │  │  │  │     │  └─ AndroidManifest.xml
   │        │  │  │  │     ├─ main
   │        │  │  │  │     │  ├─ AndroidManifest.xml
   │        │  │  │  │     │  ├─ kotlin
   │        │  │  │  │     │  │  └─ com
   │        │  │  │  │     │  │     └─ mr
   │        │  │  │  │     │  │        └─ flutter
   │        │  │  │  │     │  │           └─ plugin
   │        │  │  │  │     │  │              └─ filepicker
   │        │  │  │  │     │  │                 └─ file_picker_example
   │        │  │  │  │     │  │                    └─ MainActivity.kt
   │        │  │  │  │     │  └─ res
   │        │  │  │  │     │     ├─ drawable
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ drawable-v21
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ mipmap-hdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-mdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ values
   │        │  │  │  │     │     │  └─ styles.xml
   │        │  │  │  │     │     └─ values-night
   │        │  │  │  │     │        └─ styles.xml
   │        │  │  │  │     └─ profile
   │        │  │  │  │        └─ AndroidManifest.xml
   │        │  │  │  ├─ build.gradle.kts
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle.kts
   │        │  │  ├─ ios
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ gpxgenerator_path.gpx
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.h
   │        │  │  │  │  ├─ AppDelegate.m
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  ├─ Contents.json
   │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     ├─ LaunchImage.png
   │        │  │  │  │  │     ├─ LaunchImage@2x.png
   │        │  │  │  │  │     ├─ LaunchImage@3x.png
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ File.swift
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ main.m
   │        │  │  │  │  └─ Runner-Bridging-Header.h
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     ├─ swiftpm
   │        │  │  │  │  │     │  └─ Package.resolved
   │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        ├─ IDEWorkspaceChecks.plist
   │        │  │  │        ├─ swiftpm
   │        │  │  │        │  └─ Package.resolved
   │        │  │  │        └─ WorkspaceSettings.xcsettings
   │        │  │  ├─ lib
   │        │  │  │  ├─ main.dart
   │        │  │  │  └─ src
   │        │  │  │     └─ file_picker_demo.dart
   │        │  │  ├─ linux
   │        │  │  │  ├─ CMakeLists.txt
   │        │  │  │  ├─ flutter
   │        │  │  │  │  └─ CMakeLists.txt
   │        │  │  │  ├─ main.cc
   │        │  │  │  ├─ my_application.cc
   │        │  │  │  └─ my_application.h
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ screenshots
   │        │  │  │  ├─ example_android.gif
   │        │  │  │  ├─ example_ios.gif
   │        │  │  │  ├─ example_linux.gif
   │        │  │  │  ├─ example_macos.gif
   │        │  │  │  └─ example_windows.gif
   │        │  │  ├─ web
   │        │  │  │  ├─ favicon.png
   │        │  │  │  ├─ icons
   │        │  │  │  │  ├─ Icon-192.png
   │        │  │  │  │  └─ Icon-512.png
   │        │  │  │  ├─ index.html
   │        │  │  │  └─ manifest.json
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ file_picker
   │        │  │  │  ├─ Package.resolved
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ file_picker
   │        │  │  │        ├─ FileInfo.m
   │        │  │  │        ├─ FilePickerPlugin.m
   │        │  │  │        ├─ FilePickerUtils.m
   │        │  │  │        ├─ ImageUtils.m
   │        │  │  │        ├─ include
   │        │  │  │        │  ├─ file_picker
   │        │  │  │        │  │  ├─ FileInfo.h
   │        │  │  │        │  │  ├─ FilePickerPlugin.h
   │        │  │  │        │  │  ├─ FilePickerUtils.h
   │        │  │  │        │  │  └─ ImageUtils.h
   │        │  │  │        │  ├─ file_picker-umbrella.h
   │        │  │  │        │  └─ file_picker.modulemap
   │        │  │  │        └─ PrivacyInfo.xcprivacy
   │        │  │  └─ file_picker.podspec
   │        │  ├─ lib
   │        │  │  ├─ file_picker.dart
   │        │  │  ├─ src
   │        │  │  │  ├─ exceptions.dart
   │        │  │  │  ├─ file_picker.dart
   │        │  │  │  ├─ file_picker_io.dart
   │        │  │  │  ├─ file_picker_macos.dart
   │        │  │  │  ├─ file_picker_result.dart
   │        │  │  │  ├─ linux
   │        │  │  │  │  ├─ file_picker_linux.dart
   │        │  │  │  │  ├─ filters.dart
   │        │  │  │  │  ├─ xdp_filechooser.dart
   │        │  │  │  │  └─ xdp_request.dart
   │        │  │  │  ├─ platform_file.dart
   │        │  │  │  ├─ utils.dart
   │        │  │  │  └─ windows
   │        │  │  │     ├─ file_picker_windows.dart
   │        │  │  │     ├─ file_picker_windows_ffi_types.dart
   │        │  │  │     └─ file_picker_windows_stub.dart
   │        │  │  └─ _internal
   │        │  │     └─ file_picker_web.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ file_picker
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ file_picker
   │        │  │  │        ├─ FilePickerPlugin.swift
   │        │  │  │        └─ PrivacyInfo.xcprivacy
   │        │  │  └─ file_picker.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  └─ test
   │        │     ├─ common.dart
   │        │     ├─ file_picker_macos_test.dart
   │        │     ├─ file_picker_utils_test.dart
   │        │     ├─ file_picker_windows_test.dart
   │        │     ├─ linux
   │        │     │  └─ xdp_filter_test.dart
   │        │     └─ test_files
   │        │        ├─ franz-michael-schneeberger-unsplash.jpg
   │        │        ├─ test.pdf
   │        │        └─ test.yml
   │        ├─ file_selector_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ lib
   │        │  │  │  ├─ get_directory_page.dart
   │        │  │  │  ├─ get_multiple_directories_page.dart
   │        │  │  │  ├─ home_page.dart
   │        │  │  │  ├─ main.dart
   │        │  │  │  ├─ open_image_page.dart
   │        │  │  │  ├─ open_multiple_images_page.dart
   │        │  │  │  ├─ open_text_page.dart
   │        │  │  │  └─ save_text_page.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ file_selector_windows.dart
   │        │  │  └─ src
   │        │  │     └─ messages.g.dart
   │        │  ├─ LICENSE
   │        │  ├─ pigeons
   │        │  │  ├─ copyright.txt
   │        │  │  └─ messages.dart
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  └─ file_selector_windows_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ file_dialog_controller.cpp
   │        │     ├─ file_dialog_controller.h
   │        │     ├─ file_selector_plugin.cpp
   │        │     ├─ file_selector_plugin.h
   │        │     ├─ file_selector_windows.cpp
   │        │     ├─ include
   │        │     │  └─ file_selector_windows
   │        │     │     └─ file_selector_windows.h
   │        │     ├─ messages.g.cpp
   │        │     ├─ messages.g.h
   │        │     ├─ string_utils.cpp
   │        │     ├─ string_utils.h
   │        │     └─ test
   │        │        ├─ file_selector_plugin_test.cpp
   │        │        ├─ test_file_dialog_controller.cpp
   │        │        ├─ test_file_dialog_controller.h
   │        │        ├─ test_main.cpp
   │        │        ├─ test_utils.cpp
   │        │        └─ test_utils.h
   │        ├─ firebase_auth
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ gradle.properties
   │        │  │  ├─ settings.gradle
   │        │  │  ├─ src
   │        │  │  │  └─ main
   │        │  │  │     ├─ AndroidManifest.xml
   │        │  │  │     └─ java
   │        │  │  │        └─ io
   │        │  │  │           └─ flutter
   │        │  │  │              └─ plugins
   │        │  │  │                 └─ firebase
   │        │  │  │                    └─ auth
   │        │  │  │                       ├─ AuthStateChannelStreamHandler.java
   │        │  │  │                       ├─ Constants.java
   │        │  │  │                       ├─ FlutterFirebaseAuthPlugin.java
   │        │  │  │                       ├─ FlutterFirebaseAuthPluginException.java
   │        │  │  │                       ├─ FlutterFirebaseAuthRegistrar.java
   │        │  │  │                       ├─ FlutterFirebaseAuthUser.java
   │        │  │  │                       ├─ FlutterFirebaseMultiFactor.java
   │        │  │  │                       ├─ FlutterFirebaseTotpMultiFactor.java
   │        │  │  │                       ├─ FlutterFirebaseTotpSecret.java
   │        │  │  │                       ├─ GeneratedAndroidFirebaseAuth.java
   │        │  │  │                       ├─ IdTokenChannelStreamHandler.java
   │        │  │  │                       ├─ PhoneNumberVerificationStreamHandler.java
   │        │  │  │                       └─ PigeonParser.java
   │        │  │  └─ user-agent.gradle
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle
   │        │  │  │  │  ├─ google-services.json
   │        │  │  │  │  └─ src
   │        │  │  │  │     ├─ debug
   │        │  │  │  │     │  └─ AndroidManifest.xml
   │        │  │  │  │     ├─ main
   │        │  │  │  │     │  ├─ AndroidManifest.xml
   │        │  │  │  │     │  ├─ kotlin
   │        │  │  │  │     │  │  └─ io
   │        │  │  │  │     │  │     └─ flutter
   │        │  │  │  │     │  │        └─ plugins
   │        │  │  │  │     │  │           └─ firebase
   │        │  │  │  │     │  │              └─ example
   │        │  │  │  │     │  │                 └─ MainActivity.kt
   │        │  │  │  │     │  └─ res
   │        │  │  │  │     │     ├─ drawable
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ drawable-v21
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ mipmap-hdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-mdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ values
   │        │  │  │  │     │     │  ├─ strings.xml
   │        │  │  │  │     │     │  └─ styles.xml
   │        │  │  │  │     │     └─ values-night
   │        │  │  │  │     │        └─ styles.xml
   │        │  │  │  │     └─ profile
   │        │  │  │  │        └─ AndroidManifest.xml
   │        │  │  │  ├─ build.gradle
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle
   │        │  │  ├─ ios
   │        │  │  │  ├─ firebase_app_id_file.json
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.h
   │        │  │  │  │  ├─ AppDelegate.m
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  ├─ Contents.json
   │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     ├─ LaunchImage.png
   │        │  │  │  │  │     ├─ LaunchImage@2x.png
   │        │  │  │  │  │     ├─ LaunchImage@3x.png
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ GoogleService-Info.plist
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ main.m
   │        │  │  │  │  ├─ Runner-Bridging-Header.h
   │        │  │  │  │  └─ Runner.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        ├─ IDEWorkspaceChecks.plist
   │        │  │  │        └─ WorkspaceSettings.xcsettings
   │        │  │  ├─ lib
   │        │  │  │  ├─ auth.dart
   │        │  │  │  ├─ firebase_options.dart
   │        │  │  │  ├─ main.dart
   │        │  │  │  └─ profile.dart
   │        │  │  ├─ macos
   │        │  │  │  ├─ firebase_app_id_file.json
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ GoogleService-Info.plist
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        ├─ IDEWorkspaceChecks.plist
   │        │  │  │        └─ WorkspaceSettings.xcsettings
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ web
   │        │  │  │  ├─ favicon.png
   │        │  │  │  ├─ index.html
   │        │  │  │  └─ manifest.json
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ Classes
   │        │  │  │  ├─ firebase_auth_messages.g.m
   │        │  │  │  ├─ FLTAuthStateChannelStreamHandler.m
   │        │  │  │  ├─ FLTFirebaseAuthPlugin.m
   │        │  │  │  ├─ FLTIdTokenChannelStreamHandler.m
   │        │  │  │  ├─ FLTPhoneNumberVerificationStreamHandler.m
   │        │  │  │  ├─ PigeonParser.m
   │        │  │  │  ├─ Private
   │        │  │  │  │  ├─ FLTAuthStateChannelStreamHandler.h
   │        │  │  │  │  ├─ FLTIdTokenChannelStreamHandler.h
   │        │  │  │  │  ├─ FLTPhoneNumberVerificationStreamHandler.h
   │        │  │  │  │  └─ PigeonParser.h
   │        │  │  │  └─ Public
   │        │  │  │     ├─ CustomPigeonHeader.h
   │        │  │  │     ├─ firebase_auth_messages.g.h
   │        │  │  │     └─ FLTFirebaseAuthPlugin.h
   │        │  │  └─ firebase_auth.podspec
   │        │  ├─ lib
   │        │  │  ├─ firebase_auth.dart
   │        │  │  └─ src
   │        │  │     ├─ confirmation_result.dart
   │        │  │     ├─ firebase_auth.dart
   │        │  │     ├─ multi_factor.dart
   │        │  │     ├─ recaptcha_verifier.dart
   │        │  │     ├─ user.dart
   │        │  │     └─ user_credential.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ Classes
   │        │  │  │  ├─ firebase_auth_messages.g.m
   │        │  │  │  ├─ FLTAuthStateChannelStreamHandler.m
   │        │  │  │  ├─ FLTFirebaseAuthPlugin.m
   │        │  │  │  ├─ FLTIdTokenChannelStreamHandler.m
   │        │  │  │  ├─ FLTPhoneNumberVerificationStreamHandler.m
   │        │  │  │  ├─ PigeonParser.m
   │        │  │  │  ├─ Private
   │        │  │  │  │  ├─ FLTAuthStateChannelStreamHandler.h
   │        │  │  │  │  ├─ FLTIdTokenChannelStreamHandler.h
   │        │  │  │  │  ├─ FLTPhoneNumberVerificationStreamHandler.h
   │        │  │  │  │  └─ PigeonParser.h
   │        │  │  │  └─ Public
   │        │  │  │     ├─ CustomPigeonHeader.h
   │        │  │  │     ├─ firebase_auth_messages.g.h
   │        │  │  │     └─ FLTFirebaseAuthPlugin.h
   │        │  │  └─ firebase_auth.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  ├─ firebase_auth_test.dart
   │        │  │  ├─ mock.dart
   │        │  │  └─ user_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ firebase_auth_plugin.cpp
   │        │     ├─ firebase_auth_plugin.h
   │        │     ├─ firebase_auth_plugin_c_api.cpp
   │        │     ├─ include
   │        │     │  └─ firebase_auth
   │        │     │     └─ firebase_auth_plugin_c_api.h
   │        │     ├─ messages.g.cpp
   │        │     ├─ messages.g.h
   │        │     └─ test
   │        │        └─ firebase_auth_plugin_test.cpp
   │        ├─ firebase_core
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ gradle.properties
   │        │  │  ├─ settings.gradle
   │        │  │  ├─ src
   │        │  │  │  └─ main
   │        │  │  │     ├─ AndroidManifest.xml
   │        │  │  │     └─ java
   │        │  │  │        └─ io
   │        │  │  │           └─ flutter
   │        │  │  │              └─ plugins
   │        │  │  │                 └─ firebase
   │        │  │  │                    └─ core
   │        │  │  │                       ├─ FlutterFirebaseCorePlugin.java
   │        │  │  │                       ├─ FlutterFirebaseCoreRegistrar.java
   │        │  │  │                       ├─ FlutterFirebasePlugin.java
   │        │  │  │                       ├─ FlutterFirebasePluginRegistry.java
   │        │  │  │                       └─ GeneratedAndroidFirebaseCore.java
   │        │  │  └─ user-agent.gradle
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle
   │        │  │  │  │  └─ src
   │        │  │  │  │     ├─ debug
   │        │  │  │  │     │  └─ AndroidManifest.xml
   │        │  │  │  │     ├─ main
   │        │  │  │  │     │  ├─ AndroidManifest.xml
   │        │  │  │  │     │  └─ res
   │        │  │  │  │     │     ├─ drawable
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ mipmap-hdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-mdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     └─ values
   │        │  │  │  │     │        ├─ styles.xml
   │        │  │  │  │     │        └─ values.xml
   │        │  │  │  │     └─ profile
   │        │  │  │  │        └─ AndroidManifest.xml
   │        │  │  │  ├─ build.gradle
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle
   │        │  │  ├─ ios
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.h
   │        │  │  │  │  ├─ AppDelegate.m
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  ├─ Contents.json
   │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     ├─ LaunchImage.png
   │        │  │  │  │  │     ├─ LaunchImage@2x.png
   │        │  │  │  │  │     ├─ LaunchImage@3x.png
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  └─ main.m
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        └─ IDEWorkspaceChecks.plist
   │        │  │  ├─ lib
   │        │  │  │  ├─ firebase_options.dart
   │        │  │  │  └─ main.dart
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        ├─ IDEWorkspaceChecks.plist
   │        │  │  │        └─ WorkspaceSettings.xcsettings
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ web
   │        │  │  │  └─ index.html
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ Classes
   │        │  │  │  ├─ FLTFirebaseCorePlugin.h
   │        │  │  │  ├─ FLTFirebaseCorePlugin.m
   │        │  │  │  ├─ FLTFirebasePlugin.h
   │        │  │  │  ├─ FLTFirebasePlugin.m
   │        │  │  │  ├─ FLTFirebasePluginRegistry.h
   │        │  │  │  ├─ FLTFirebasePluginRegistry.m
   │        │  │  │  ├─ messages.g.h
   │        │  │  │  └─ messages.g.m
   │        │  │  └─ firebase_core.podspec
   │        │  ├─ lib
   │        │  │  ├─ firebase_core.dart
   │        │  │  └─ src
   │        │  │     ├─ firebase.dart
   │        │  │     └─ firebase_app.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ Classes
   │        │  │  │  ├─ FLTFirebaseCorePlugin.h
   │        │  │  │  ├─ FLTFirebaseCorePlugin.m
   │        │  │  │  ├─ FLTFirebasePlugin.h
   │        │  │  │  ├─ FLTFirebasePlugin.m
   │        │  │  │  ├─ FLTFirebasePluginRegistry.h
   │        │  │  │  ├─ FLTFirebasePluginRegistry.m
   │        │  │  │  ├─ messages.g.h
   │        │  │  │  └─ messages.g.m
   │        │  │  └─ firebase_core.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  └─ firebase_core_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ firebase_core_plugin.cpp
   │        │     ├─ firebase_core_plugin.h
   │        │     ├─ firebase_core_plugin_c_api.cpp
   │        │     ├─ include
   │        │     │  └─ firebase_core
   │        │     │     └─ firebase_core_plugin_c_api.h
   │        │     ├─ messages.g.cpp
   │        │     └─ messages.g.h
   │        ├─ flutter_secure_storage_windows
   │        │  ├─ analysis_options.yaml
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ integration_test
   │        │  │  │  └─ app_test.dart
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ flutter_secure_storage_windows.dart
   │        │  │  └─ src
   │        │  │     ├─ flutter_secure_storage_windows_ffi.dart
   │        │  │     └─ flutter_secure_storage_windows_stub.dart
   │        │  ├─ LICENSE
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  └─ unit_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ flutter_secure_storage_windows_plugin.cpp
   │        │     └─ include
   │        │        └─ flutter_secure_storage_windows
   │        │           └─ flutter_secure_storage_windows_plugin.h
   │        ├─ flutter_web_auth_2
   │        │  ├─ analysis_options.yaml
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ gradle.properties
   │        │  │  ├─ settings.gradle
   │        │  │  └─ src
   │        │  │     └─ main
   │        │  │        ├─ AndroidManifest.xml
   │        │  │        └─ kotlin
   │        │  │           └─ com
   │        │  │              └─ linusu
   │        │  │                 └─ flutter_web_auth_2
   │        │  │                    ├─ AuthenticationManagementActivity.kt
   │        │  │                    ├─ CallbackActivity.kt
   │        │  │                    ├─ FlutterWebAuth2Plugin.kt
   │        │  │                    ├─ KeepAliveService.kt
   │        │  │                    ├─ TabBuilderWrapper.kt
   │        │  │                    └─ Utils.kt
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle
   │        │  │  │  │  └─ src
   │        │  │  │  │     ├─ debug
   │        │  │  │  │     │  └─ AndroidManifest.xml
   │        │  │  │  │     ├─ main
   │        │  │  │  │     │  ├─ AndroidManifest.xml
   │        │  │  │  │     │  ├─ java
   │        │  │  │  │     │  │  └─ io
   │        │  │  │  │     │  │     └─ flutter
   │        │  │  │  │     │  │        └─ plugins
   │        │  │  │  │     │  ├─ kotlin
   │        │  │  │  │     │  │  └─ com
   │        │  │  │  │     │  │     ├─ example
   │        │  │  │  │     │  │     │  └─ flutter_web_auth_example
   │        │  │  │  │     │  │     └─ linusu
   │        │  │  │  │     │  │        └─ flutter_web_auth_2_example
   │        │  │  │  │     │  │           └─ MainActivity.kt
   │        │  │  │  │     │  └─ res
   │        │  │  │  │     │     ├─ drawable
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ drawable-v21
   │        │  │  │  │     │     ├─ mipmap-hdpi
   │        │  │  │  │     │     ├─ mipmap-mdpi
   │        │  │  │  │     │     ├─ mipmap-xhdpi
   │        │  │  │  │     │     ├─ mipmap-xxhdpi
   │        │  │  │  │     │     ├─ mipmap-xxxhdpi
   │        │  │  │  │     │     ├─ values
   │        │  │  │  │     │     │  └─ styles.xml
   │        │  │  │  │     │     └─ values-night
   │        │  │  │  │     └─ profile
   │        │  │  │  │        └─ AndroidManifest.xml
   │        │  │  │  ├─ build.gradle
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle
   │        │  │  ├─ ios
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  └─ Contents.json
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  └─ Runner-Bridging-Header.h
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ linux
   │        │  │  │  ├─ CMakeLists.txt
   │        │  │  │  ├─ flutter
   │        │  │  │  │  └─ CMakeLists.txt
   │        │  │  │  ├─ main.cc
   │        │  │  │  ├─ my_application.cc
   │        │  │  │  └─ my_application.h
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test
   │        │  │  │  └─ widget_test.dart
   │        │  │  ├─ web
   │        │  │  │  ├─ auth.html
   │        │  │  │  ├─ icons
   │        │  │  │  ├─ index.html
   │        │  │  │  └─ manifest.json
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ flutter_web_auth_2
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ flutter_web_auth_2
   │        │  │  │        └─ FlutterWebAuth2Plugin.swift
   │        │  │  └─ flutter_web_auth_2.podspec
   │        │  ├─ lib
   │        │  │  ├─ flutter_web_auth_2.dart
   │        │  │  └─ src
   │        │  │     ├─ linows.dart
   │        │  │     ├─ macos.dart
   │        │  │     ├─ options.dart
   │        │  │     ├─ platform
   │        │  │     │  ├─ platform_is.dart
   │        │  │     │  ├─ universal_platform_none.dart
   │        │  │     │  ├─ universal_platform_vm.dart
   │        │  │     │  └─ universal_platform_web.dart
   │        │  │     ├─ server.dart
   │        │  │     ├─ unsupported.dart
   │        │  │     ├─ web.dart
   │        │  │     └─ webview.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ flutter_web_auth_2
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ flutter_web_auth_2
   │        │  │  │        └─ FlutterWebAuth2Plugin.swift
   │        │  │  └─ flutter_web_auth_2.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ screen-android.gif
   │        │  ├─ screen-ios.gif
   │        │  ├─ screen-macos.gif
   │        │  └─ test
   │        │     └─ flutter_web_auth_2_test.dart
   │        ├─ image_picker_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  └─ image_picker_windows.dart
   │        │  ├─ LICENSE
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  └─ test
   │        │     ├─ image_picker_windows_test.dart
   │        │     └─ image_picker_windows_test.mocks.dart
   │        ├─ path_provider_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ integration_test
   │        │  │  │  └─ path_provider_test.dart
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test_driver
   │        │  │  │  └─ integration_test.dart
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ run_loop.cpp
   │        │  │        ├─ run_loop.h
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ path_provider_windows.dart
   │        │  │  └─ src
   │        │  │     ├─ folders.dart
   │        │  │     ├─ folders_stub.dart
   │        │  │     ├─ guid.dart
   │        │  │     ├─ path_provider_windows_real.dart
   │        │  │     ├─ path_provider_windows_stub.dart
   │        │  │     └─ win32_wrappers.dart
   │        │  ├─ LICENSE
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  └─ test
   │        │     ├─ guid_test.dart
   │        │     └─ path_provider_windows_test.dart
   │        ├─ shared_preferences_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ AUTHORS
   │        │  │  ├─ integration_test
   │        │  │  │  └─ shared_preferences_test.dart
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ LICENSE
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test_driver
   │        │  │  │  └─ integration_test.dart
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ run_loop.cpp
   │        │  │        ├─ run_loop.h
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  └─ shared_preferences_windows.dart
   │        │  ├─ LICENSE
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  └─ test
   │        │     ├─ fake_path_provider_windows.dart
   │        │     ├─ legacy_shared_preferences_windows_test.dart
   │        │     └─ shared_preferences_windows_async_test.dart
   │        ├─ url_launcher_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ integration_test
   │        │  │  │  └─ url_launcher_test.dart
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test_driver
   │        │  │  │  └─ integration_test.dart
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ run_loop.cpp
   │        │  │        ├─ run_loop.h
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ src
   │        │  │  │  └─ messages.g.dart
   │        │  │  └─ url_launcher_windows.dart
   │        │  ├─ LICENSE
   │        │  ├─ pigeons
   │        │  │  ├─ copyright.txt
   │        │  │  └─ messages.dart
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  └─ url_launcher_windows_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ include
   │        │     │  └─ url_launcher_windows
   │        │     │     └─ url_launcher_windows.h
   │        │     ├─ messages.g.cpp
   │        │     ├─ messages.g.h
   │        │     ├─ system_apis.cpp
   │        │     ├─ system_apis.h
   │        │     ├─ test
   │        │     │  └─ url_launcher_windows_test.cpp
   │        │     ├─ url_launcher_plugin.cpp
   │        │     ├─ url_launcher_plugin.h
   │        │     └─ url_launcher_windows.cpp
   │        └─ window_to_front
   │           ├─ .metadata
   │           ├─ CHANGELOG.md
   │           ├─ example
   │           │  └─ readme.md
   │           ├─ lib
   │           │  └─ window_to_front.dart
   │           ├─ LICENSE
   │           ├─ linux
   │           │  ├─ CMakeLists.txt
   │           │  ├─ flutter
   │           │  │  └─ ephemeral
   │           │  │     └─ .plugin_symlinks
   │           │  │        └─ window_to_front
   │           │  │           ├─ CHANGELOG.md
   │           │  │           ├─ example
   │           │  │           │  └─ readme.md
   │           │  │           ├─ lib
   │           │  │           │  └─ window_to_front.dart
   │           │  │           ├─ LICENSE
   │           │  │           ├─ linux
   │           │  │           │  ├─ CMakeLists.txt
   │           │  │           │  ├─ flutter
   │           │  │           │  ├─ include
   │           │  │           │  │  └─ window_to_front
   │           │  │           │  │     └─ window_to_front_plugin.h
   │           │  │           │  └─ window_to_front_plugin.cc
   │           │  │           ├─ macos
   │           │  │           │  ├─ Classes
   │           │  │           │  │  └─ WindowToFrontPlugin.swift
   │           │  │           │  ├─ Flutter
   │           │  │           │  └─ window_to_front.podspec
   │           │  │           ├─ pubspec.yaml
   │           │  │           ├─ README.md
   │           │  │           └─ windows
   │           │  │              ├─ CMakeLists.txt
   │           │  │              ├─ flutter
   │           │  │              ├─ include
   │           │  │              │  └─ window_to_front
   │           │  │              │     └─ window_to_front_plugin.h
   │           │  │              └─ window_to_front_plugin.cpp
   │           │  ├─ include
   │           │  │  └─ window_to_front
   │           │  │     └─ window_to_front_plugin.h
   │           │  └─ window_to_front_plugin.cc
   │           ├─ macos
   │           │  ├─ Classes
   │           │  │  └─ WindowToFrontPlugin.swift
   │           │  ├─ Flutter
   │           │  └─ window_to_front.podspec
   │           ├─ pubspec.yaml
   │           ├─ README.md
   │           └─ windows
   │              ├─ CMakeLists.txt
   │              ├─ include
   │              │  └─ window_to_front
   │              │     └─ window_to_front_plugin.h
   │              └─ window_to_front_plugin.cpp
   └─ runner
      ├─ CMakeLists.txt
      ├─ flutter_window.cpp
      ├─ flutter_window.h
      ├─ main.cpp
      ├─ resource.h
      ├─ resources
      │  └─ app_icon.ico
      ├─ runner.exe.manifest
      ├─ Runner.rc
      ├─ utils.cpp
      ├─ utils.h
      ├─ win32_window.cpp
      └─ win32_window.h

```
```
Teamify
├─ .metadata
├─ analysis_options.yaml
├─ android
│  ├─ .kotlin
│  │  └─ sessions
│  ├─ app
│  │  ├─ build.gradle.kts
│  │  ├─ google-services.json
│  │  └─ src
│  │     ├─ debug
│  │     │  └─ AndroidManifest.xml
│  │     ├─ main
│  │     │  ├─ AndroidManifest.xml
│  │     │  ├─ java
│  │     │  │  └─ io
│  │     │  │     └─ flutter
│  │     │  │        └─ plugins
│  │     │  ├─ kotlin
│  │     │  │  └─ com
│  │     │  │     └─ example
│  │     │  │        └─ teamify
│  │     │  │           └─ MainActivity.kt
│  │     │  └─ res
│  │     │     ├─ drawable
│  │     │     │  └─ launch_background.xml
│  │     │     ├─ drawable-v21
│  │     │     │  └─ launch_background.xml
│  │     │     ├─ mipmap-hdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-mdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xxhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xxxhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ values
│  │     │     │  └─ styles.xml
│  │     │     └─ values-night
│  │     │        └─ styles.xml
│  │     └─ profile
│  │        └─ AndroidManifest.xml
│  ├─ build.gradle.kts
│  ├─ gradle
│  │  └─ wrapper
│  │     └─ gradle-wrapper.properties
│  ├─ gradle.properties
│  └─ settings.gradle.kts
├─ assets
│  └─ images
│     ├─ Icons
│     │  ├─ Apple.png
│     │  ├─ Github.png
│     │  ├─ Google.png
│     │  └─ Linkedin.png
│     ├─ logo.png
│     ├─ onboarding1.png
│     ├─ onboarding2.png
│     ├─ onboarding3.png
│     └─ SignUp
│        ├─ 1.png
│        ├─ 2.png
│        └─ 3.png
├─ devtools_options.yaml
├─ ios
│  ├─ Flutter
│  │  ├─ AppFrameworkInfo.plist
│  │  ├─ Debug.xcconfig
│  │  └─ Release.xcconfig
│  ├─ Runner
│  │  ├─ AppDelegate.swift
│  │  ├─ Assets.xcassets
│  │  │  ├─ AppIcon.appiconset
│  │  │  │  ├─ Contents.json
│  │  │  │  ├─ Icon-App-1024x1024@1x.png
│  │  │  │  ├─ Icon-App-20x20@1x.png
│  │  │  │  ├─ Icon-App-20x20@2x.png
│  │  │  │  ├─ Icon-App-20x20@3x.png
│  │  │  │  ├─ Icon-App-29x29@1x.png
│  │  │  │  ├─ Icon-App-29x29@2x.png
│  │  │  │  ├─ Icon-App-29x29@3x.png
│  │  │  │  ├─ Icon-App-40x40@1x.png
│  │  │  │  ├─ Icon-App-40x40@2x.png
│  │  │  │  ├─ Icon-App-40x40@3x.png
│  │  │  │  ├─ Icon-App-60x60@2x.png
│  │  │  │  ├─ Icon-App-60x60@3x.png
│  │  │  │  ├─ Icon-App-76x76@1x.png
│  │  │  │  ├─ Icon-App-76x76@2x.png
│  │  │  │  └─ Icon-App-83.5x83.5@2x.png
│  │  │  └─ LaunchImage.imageset
│  │  │     ├─ Contents.json
│  │  │     ├─ LaunchImage.png
│  │  │     ├─ LaunchImage@2x.png
│  │  │     ├─ LaunchImage@3x.png
│  │  │     └─ README.md
│  │  ├─ Base.lproj
│  │  │  ├─ LaunchScreen.storyboard
│  │  │  └─ Main.storyboard
│  │  ├─ Info.plist
│  │  ├─ Runner-Bridging-Header.h
│  │  └─ SceneDelegate.swift
│  ├─ Runner.xcodeproj
│  │  ├─ project.pbxproj
│  │  ├─ project.xcworkspace
│  │  │  ├─ contents.xcworkspacedata
│  │  │  └─ xcshareddata
│  │  │     ├─ IDEWorkspaceChecks.plist
│  │  │     └─ WorkspaceSettings.xcsettings
│  │  └─ xcshareddata
│  │     └─ xcschemes
│  │        └─ Runner.xcscheme
│  ├─ Runner.xcworkspace
│  │  ├─ contents.xcworkspacedata
│  │  └─ xcshareddata
│  │     ├─ IDEWorkspaceChecks.plist
│  │     └─ WorkspaceSettings.xcsettings
│  └─ RunnerTests
│     └─ RunnerTests.swift
├─ lib
│  ├─ core
│  │  ├─ constants
│  │  │  └─ app_constants.dart
│  │  ├─ di
│  │  │  └─ service_locator.dart
│  │  ├─ errors
│  │  │  ├─ exceptions.dart
│  │  │  └─ failures.dart
│  │  ├─ network
│  │  │  ├─ api_client.dart
│  │  │  ├─ dio_client.dart
│  │  │  ├─ network_info.dart
│  │  │  └─ role_storage.dart
│  │  ├─ routing
│  │  │  └─ app_router.dart
│  │  ├─ storage
│  │  │  └─ token_storage.dart
│  │  ├─ usecase
│  │  │  └─ usecase.dart
│  │  └─ utils
│  │     ├─ helpers.dart
│  │     └─ validators.dart
│  ├─ features
│  │  ├─ auth
│  │  │  ├─ data
│  │  │  │  ├─ datasource
│  │  │  │  │  ├─ auth_local_datasource.dart
│  │  │  │  │  └─ auth_remote_datasource.dart
│  │  │  │  ├─ google_auth_service.dart
│  │  │  │  ├─ models
│  │  │  │  │  └─ user_model.dart
│  │  │  │  └─ repositories
│  │  │  │     └─ auth_repository_impl.dart
│  │  │  ├─ domain
│  │  │  │  ├─ entities
│  │  │  │  │  └─ user.dart
│  │  │  │  ├─ repositories
│  │  │  │  │  └─ auth_repository.dart
│  │  │  │  └─ usecases
│  │  │  │     ├─ AppleLoginUseCase.dart
│  │  │  │     ├─ check_auth_usecase.dart
│  │  │  │     ├─ GitHubLoginUseCase.dart
│  │  │  │     ├─ GoogleLoginUseCase.dart
│  │  │  │     ├─ LinkedinLoginUseCase.dart
│  │  │  │     ├─ login_usecase.dart
│  │  │  │     ├─ logout_usecase.dart
│  │  │  │     └─ register_usecase.dart
│  │  │  └─ presentation
│  │  │     ├─ cubit
│  │  │     │  ├─ auth_cubit.dart
│  │  │     │  ├─ auth_guard_cubit.dart
│  │  │     │  ├─ auth_guard_state.dart
│  │  │     │  ├─ auth_state.dart
│  │  │     │  └─ login_cubit.dart
│  │  │     ├─ provider
│  │  │     │  └─ auth_provider.dart
│  │  │     ├─ screens
│  │  │     │  ├─ choose_role_screen.dart
│  │  │     │  ├─ login_screen.dart
│  │  │     │  ├─ otp_screen.dart
│  │  │     │  ├─ register_screen.dart
│  │  │     │  ├─ reset_password_screen.dart
│  │  │     │  ├─ success_page.dart
│  │  │     │  └─ verify_email_screen.dart
│  │  │     └─ widgets
│  │  │        ├─ auth_button.dart
│  │  │        ├─ field_card.dart
│  │  │        ├─ field_selection_step.dart
│  │  │        ├─ freelancer_details_step.dart
│  │  │        ├─ guest_details_step.dart
│  │  │        ├─ role_selector.dart
│  │  │        ├─ skills_selection_step.dart
│  │  │        ├─ skill_chip.dart
│  │  │        ├─ stat_card.dart
│  │  │        ├─ student_details_step.dart
│  │  │        └─ task_list_tile.dart
│  │  ├─ chat
│  │  │  └─ data
│  │  ├─ home
│  │  │  ├─ 2
│  │  │  │  └─ pla.dart
│  │  │  └─ presentation
│  │  │     ├─ home_screen.dart
│  │  │     └─ widgets
│  │  │        ├─ activity_item.dart
│  │  │        ├─ header_widget.dart
│  │  │        ├─ project_card.dart
│  │  │        ├─ stat_card.dart
│  │  │        └─ task_item.dart
│  │  ├─ onboarding
│  │  │  └─ presentation
│  │  │     └─ screens
│  │  │        └─ onboarding_screen.dart
│  │  ├─ projects
│  │  │  ├─ data
│  │  │  │  ├─ datasources
│  │  │  │  │  └─ project_remote_data_source.dart
│  │  │  │  ├─ models
│  │  │  │  │  └─ project_model.dart
│  │  │  │  └─ repositories
│  │  │  │     └─ project_repository_impl.dart
│  │  │  ├─ domain
│  │  │  │  ├─ entities
│  │  │  │  │  ├─ activity_entity.dart
│  │  │  │  │  ├─ project.dart
│  │  │  │  │  └─ project_entity.dart
│  │  │  │  ├─ repositories
│  │  │  │  │  └─ project_repository.dart
│  │  │  │  └─ usecases
│  │  │  │     └─ get_projects_usecase.dart
│  │  │  └─ presentation
│  │  │     ├─ cubit
│  │  │     │  ├─ activity_cubit.dart
│  │  │     │  ├─ activity_state.dart
│  │  │     │  ├─ projects_cubit.dart
│  │  │     │  └─ projects_state.dart
│  │  │     └─ screens
│  │  │        ├─ projects_screen.dart
│  │  │        └─ project_details_screen.dart
│  │  ├─ splash
│  │  │  └─ presentation
│  │  │     └─ screens
│  │  │        └─ splash_screen.dart
│  │  └─ tasks
│  │     ├─ data
│  │     │  ├─ datasources
│  │     │  │  └─ task_remote_data_source.dart
│  │     │  ├─ models
│  │     │  │  └─ task_model.dart
│  │     │  └─ repositories
│  │     │     └─ task_repository_impl.dart
│  │     ├─ domain
│  │     │  ├─ entities
│  │     │  │  └─ task_entity.dart
│  │     │  ├─ repositories
│  │     │  │  └─ task_repository.dart
│  │     │  └─ usecases
│  │     │     ├─ add_task_usecase.dart
│  │     │     └─ get_tasks_usecase.dart
│  │     └─ presentation
│  │        ├─ cubit
│  │        │  ├─ task_cubit.dart
│  │        │  └─ task_state.dart
│  │        ├─ pages
│  │        │  ├─ add_project_screen.dart
│  │        │  ├─ add_task_screen.dart
│  │        │  ├─ task_details_screen.dart
│  │        │  └─ task_list_screen.dart
│  │        └─ widgets
│  │           ├─ stat_card.dart
│  │           └─ task_list_tile.dart
│  └─ main.dart
├─ linux
│  ├─ CMakeLists.txt
│  ├─ flutter
│  │  ├─ CMakeLists.txt
│  │  └─ ephemeral
│  │     └─ .plugin_symlinks
│  │        ├─ connectivity_plus
│  │        │  ├─ android
│  │        │  │  ├─ build.gradle
│  │        │  │  ├─ gradle
│  │        │  │  │  └─ wrapper
│  │        │  │  │     └─ gradle-wrapper.properties
│  │        │  │  ├─ gradle.properties
│  │        │  │  ├─ settings.gradle
│  │        │  │  └─ src
│  │        │  │     └─ main
│  │        │  │        ├─ AndroidManifest.xml
│  │        │  │        └─ java
│  │        │  │           └─ dev
│  │        │  │              └─ fluttercommunity
│  │        │  │                 └─ plus
│  │        │  │                    └─ connectivity
│  │        │  │                       ├─ Connectivity.java
│  │        │  │                       ├─ ConnectivityBroadcastReceiver.java
│  │        │  │                       ├─ ConnectivityMethodChannelHandler.java
│  │        │  │                       └─ ConnectivityPlugin.java
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ analysis_options.yaml
│  │        │  │  ├─ android
│  │        │  │  │  ├─ app
│  │        │  │  │  │  ├─ build.gradle
│  │        │  │  │  │  └─ src
│  │        │  │  │  │     └─ main
│  │        │  │  │  │        ├─ AndroidManifest.xml
│  │        │  │  │  │        ├─ java
│  │        │  │  │  │        │  └─ io
│  │        │  │  │  │        │     └─ flutter
│  │        │  │  │  │        │        └─ plugins
│  │        │  │  │  │        │           └─ connectivityexample
│  │        │  │  │  │        │              └─ FlutterActivityTest.java
│  │        │  │  │  │        └─ res
│  │        │  │  │  │           ├─ mipmap-hdpi
│  │        │  │  │  │           │  └─ ic_launcher.png
│  │        │  │  │  │           ├─ mipmap-mdpi
│  │        │  │  │  │           │  └─ ic_launcher.png
│  │        │  │  │  │           ├─ mipmap-xhdpi
│  │        │  │  │  │           │  └─ ic_launcher.png
│  │        │  │  │  │           ├─ mipmap-xxhdpi
│  │        │  │  │  │           │  └─ ic_launcher.png
│  │        │  │  │  │           └─ mipmap-xxxhdpi
│  │        │  │  │  │              └─ ic_launcher.png
│  │        │  │  │  ├─ build.gradle
│  │        │  │  │  ├─ gradle
│  │        │  │  │  │  └─ wrapper
│  │        │  │  │  │     └─ gradle-wrapper.properties
│  │        │  │  │  ├─ gradle.properties
│  │        │  │  │  └─ settings.gradle
│  │        │  │  ├─ integration_test
│  │        │  │  │  └─ connectivity_plus_test.dart
│  │        │  │  ├─ ios
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ AppFrameworkInfo.plist
│  │        │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  └─ Release.xcconfig
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  ├─ AppIcon.appiconset
│  │        │  │  │  │  │  │  ├─ Contents.json
│  │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
│  │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
│  │        │  │  │  │  │  └─ LaunchImage.imageset
│  │        │  │  │  │  │     ├─ Contents.json
│  │        │  │  │  │  │     ├─ LaunchImage.png
│  │        │  │  │  │  │     ├─ LaunchImage@2x.png
│  │        │  │  │  │  │     ├─ LaunchImage@3x.png
│  │        │  │  │  │  │     └─ README.md
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  ├─ LaunchScreen.storyboard
│  │        │  │  │  │  │  └─ Main.storyboard
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  └─ Runner-Bridging-Header.h
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  │     ├─ swiftpm
│  │        │  │  │  │  │     │  └─ configuration
│  │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │     ├─ swiftpm
│  │        │  │  │  │     │  └─ configuration
│  │        │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ macos
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │        │  │  │  │  └─ Flutter-Release.xcconfig
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  └─ AppIcon.appiconset
│  │        │  │  │  │  │     ├─ app_icon_1024.png
│  │        │  │  │  │  │     ├─ app_icon_128.png
│  │        │  │  │  │  │     ├─ app_icon_16.png
│  │        │  │  │  │  │     ├─ app_icon_256.png
│  │        │  │  │  │  │     ├─ app_icon_32.png
│  │        │  │  │  │  │     ├─ app_icon_512.png
│  │        │  │  │  │  │     ├─ app_icon_64.png
│  │        │  │  │  │  │     └─ Contents.json
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  └─ MainMenu.xib
│  │        │  │  │  │  ├─ Configs
│  │        │  │  │  │  │  ├─ AppInfo.xcconfig
│  │        │  │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  │  ├─ Release.xcconfig
│  │        │  │  │  │  │  └─ Warnings.xcconfig
│  │        │  │  │  │  ├─ DebugProfile.entitlements
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ MainFlutterWindow.swift
│  │        │  │  │  │  └─ Release.entitlements
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  │     └─ swiftpm
│  │        │  │  │  │  │        └─ configuration
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │     └─ swiftpm
│  │        │  │  │  │        └─ configuration
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  ├─ web
│  │        │  │  │  ├─ favicon.png
│  │        │  │  │  ├─ icons
│  │        │  │  │  │  ├─ Icon-192.png
│  │        │  │  │  │  ├─ Icon-512.png
│  │        │  │  │  │  ├─ Icon-maskable-192.png
│  │        │  │  │  │  └─ Icon-maskable-512.png
│  │        │  │  │  ├─ index.html
│  │        │  │  │  └─ manifest.json
│  │        │  │  └─ windows
│  │        │  │     ├─ CMakeLists.txt
│  │        │  │     ├─ flutter
│  │        │  │     │  └─ CMakeLists.txt
│  │        │  │     └─ runner
│  │        │  │        ├─ CMakeLists.txt
│  │        │  │        ├─ flutter_window.cpp
│  │        │  │        ├─ flutter_window.h
│  │        │  │        ├─ main.cpp
│  │        │  │        ├─ resource.h
│  │        │  │        ├─ resources
│  │        │  │        │  └─ app_icon.ico
│  │        │  │        ├─ runner.exe.manifest
│  │        │  │        ├─ Runner.rc
│  │        │  │        ├─ run_loop.cpp
│  │        │  │        ├─ run_loop.h
│  │        │  │        ├─ utils.cpp
│  │        │  │        ├─ utils.h
│  │        │  │        ├─ win32_window.cpp
│  │        │  │        └─ win32_window.h
│  │        │  ├─ ios
│  │        │  │  ├─ connectivity_plus
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ connectivity_plus
│  │        │  │  │        ├─ ConnectivityPlusPlugin.swift
│  │        │  │  │        ├─ ConnectivityProvider.swift
│  │        │  │  │        ├─ PathMonitorConnectivityProvider.swift
│  │        │  │  │        └─ PrivacyInfo.xcprivacy
│  │        │  │  └─ connectivity_plus.podspec
│  │        │  ├─ lib
│  │        │  │  ├─ connectivity_plus.dart
│  │        │  │  └─ src
│  │        │  │     ├─ connectivity_plus_linux.dart
│  │        │  │     ├─ connectivity_plus_web.dart
│  │        │  │     └─ web
│  │        │  │        └─ dart_html_connectivity_plugin.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ macos
│  │        │  │  ├─ connectivity_plus
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ connectivity_plus
│  │        │  │  │        ├─ ConnectivityPlusPlugin.swift
│  │        │  │  │        ├─ ConnectivityProvider.swift
│  │        │  │  │        ├─ PathMonitorConnectivityProvider.swift
│  │        │  │  │        └─ PrivacyInfo.xcprivacy
│  │        │  │  └─ connectivity_plus.podspec
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  ├─ test
│  │        │  │  ├─ connectivity_plus_linux_test.dart
│  │        │  │  ├─ connectivity_plus_linux_test.mocks.dart
│  │        │  │  └─ connectivity_test.dart
│  │        │  └─ windows
│  │        │     ├─ CMakeLists.txt
│  │        │     ├─ connectivity_plus_plugin.cpp
│  │        │     ├─ include
│  │        │     │  └─ connectivity_plus
│  │        │     │     ├─ connectivity_plus_windows_plugin.h
│  │        │     │     └─ network_manager.h
│  │        │     └─ network_manager.cpp
│  │        ├─ desktop_webview_window
│  │        │  ├─ analysis_options.yaml
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ analysis_options.yaml
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ macos
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │        │  │  │  │  └─ Flutter-Release.xcconfig
│  │        │  │  │  ├─ Podfile
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  └─ AppIcon.appiconset
│  │        │  │  │  │  │     ├─ app_icon_1024.png
│  │        │  │  │  │  │     ├─ app_icon_128.png
│  │        │  │  │  │  │     ├─ app_icon_16.png
│  │        │  │  │  │  │     ├─ app_icon_256.png
│  │        │  │  │  │  │     ├─ app_icon_32.png
│  │        │  │  │  │  │     ├─ app_icon_512.png
│  │        │  │  │  │  │     ├─ app_icon_64.png
│  │        │  │  │  │  │     └─ Contents.json
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  └─ MainMenu.xib
│  │        │  │  │  │  ├─ Configs
│  │        │  │  │  │  │  ├─ AppInfo.xcconfig
│  │        │  │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  │  ├─ Release.xcconfig
│  │        │  │  │  │  │  └─ Warnings.xcconfig
│  │        │  │  │  │  ├─ DebugProfile.entitlements
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ MainFlutterWindow.swift
│  │        │  │  │  │  └─ Release.entitlements
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  └─ Runner.xcworkspace
│  │        │  │  │     ├─ contents.xcworkspacedata
│  │        │  │  │     └─ xcshareddata
│  │        │  │  │        └─ IDEWorkspaceChecks.plist
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  ├─ test
│  │        │  │  │  └─ widget_test.dart
│  │        │  │  ├─ test_web_pages
│  │        │  │  │  ├─ login.html
│  │        │  │  │  └─ test.html
│  │        │  │  └─ windows
│  │        │  │     ├─ CMakeLists.txt
│  │        │  │     ├─ flutter
│  │        │  │     │  └─ CMakeLists.txt
│  │        │  │     └─ runner
│  │        │  │        ├─ CMakeLists.txt
│  │        │  │        ├─ flutter_window.cpp
│  │        │  │        ├─ flutter_window.h
│  │        │  │        ├─ main.cpp
│  │        │  │        ├─ resource.h
│  │        │  │        ├─ resources
│  │        │  │        │  └─ app_icon.ico
│  │        │  │        ├─ runner.exe.manifest
│  │        │  │        ├─ Runner.rc
│  │        │  │        ├─ utils.cpp
│  │        │  │        ├─ utils.h
│  │        │  │        ├─ win32_window.cpp
│  │        │  │        └─ win32_window.h
│  │        │  ├─ lib
│  │        │  │  ├─ desktop_webview_window.dart
│  │        │  │  └─ src
│  │        │  │     ├─ create_configuration.dart
│  │        │  │     ├─ message_channel.dart
│  │        │  │     ├─ title_bar.dart
│  │        │  │     ├─ webview.dart
│  │        │  │     └─ webview_impl.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ linux
│  │        │  │  ├─ CMakeLists.txt
│  │        │  │  ├─ desktop_webview_window_plugin.cc
│  │        │  │  ├─ include
│  │        │  │  │  └─ desktop_webview_window
│  │        │  │  │     └─ desktop_webview_window_plugin.h
│  │        │  │  ├─ message_channel_plugin.cc
│  │        │  │  ├─ message_channel_plugin.h
│  │        │  │  ├─ webview_window.cc
│  │        │  │  └─ webview_window.h
│  │        │  ├─ macos
│  │        │  │  ├─ Classes
│  │        │  │  │  ├─ DesktopWebviewWindowPlugin.swift
│  │        │  │  │  ├─ MessageChannelPlugin.swift
│  │        │  │  │  ├─ WebViewLayoutController.swift
│  │        │  │  │  ├─ WebViewLayoutController.xib
│  │        │  │  │  └─ WebviewWindowController.swift
│  │        │  │  └─ desktop_webview_window.podspec
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  ├─ run_local_test_server.sh
│  │        │  ├─ test
│  │        │  │  └─ desktop_webview_window_test.dart
│  │        │  └─ windows
│  │        │     ├─ CMakeLists.txt
│  │        │     ├─ desktop_webview_window_plugin.cpp
│  │        │     ├─ flutter_view.cc
│  │        │     ├─ flutter_view.h
│  │        │     ├─ include
│  │        │     │  └─ desktop_webview_window
│  │        │     │     └─ desktop_webview_window_plugin.h
│  │        │     ├─ libs
│  │        │     │  └─ x64
│  │        │     │     ├─ WebView2Loader.dll
│  │        │     │     └─ WebView2Loader.dll.lib
│  │        │     ├─ message_channel_plugin.cc
│  │        │     ├─ message_channel_plugin.h
│  │        │     ├─ strconv.h
│  │        │     ├─ utils.cc
│  │        │     ├─ utils.h
│  │        │     ├─ WebView2.h
│  │        │     ├─ WebView2EnvironmentOptions.h
│  │        │     ├─ webview_window.cc
│  │        │     ├─ webview_window.h
│  │        │     ├─ web_view.cc
│  │        │     ├─ web_view.h
│  │        │     ├─ web_view_window_plugin.cc
│  │        │     ├─ web_view_window_plugin.h
│  │        │     └─ wil
│  │        │        ├─ com.h
│  │        │        ├─ common.h
│  │        │        ├─ cppwinrt.h
│  │        │        ├─ filesystem.h
│  │        │        ├─ LICENSE
│  │        │        ├─ registry.h
│  │        │        ├─ resource.h
│  │        │        ├─ result.h
│  │        │        ├─ result_macros.h
│  │        │        ├─ result_originate.h
│  │        │        ├─ rpc_helpers.h
│  │        │        ├─ safecast.h
│  │        │        ├─ stl.h
│  │        │        ├─ ThirdPartyNotices.txt
│  │        │        ├─ token_helpers.h
│  │        │        ├─ win32_helpers.h
│  │        │        ├─ winrt.h
│  │        │        ├─ wistd_config.h
│  │        │        ├─ wistd_functional.h
│  │        │        ├─ wistd_memory.h
│  │        │        ├─ wistd_type_traits.h
│  │        │        └─ wrl.h
│  │        ├─ file_picker
│  │        │  ├─ analysis_options.yaml
│  │        │  ├─ android
│  │        │  │  ├─ build.gradle
│  │        │  │  ├─ gradle
│  │        │  │  │  └─ wrapper
│  │        │  │  │     └─ gradle-wrapper.properties
│  │        │  │  ├─ proguard-rules.pro
│  │        │  │  ├─ settings.gradle
│  │        │  │  └─ src
│  │        │  │     └─ main
│  │        │  │        ├─ AndroidManifest.xml
│  │        │  │        └─ kotlin
│  │        │  │           └─ com
│  │        │  │              └─ mr
│  │        │  │                 └─ flutter
│  │        │  │                    └─ plugin
│  │        │  │                       └─ filepicker
│  │        │  │                          ├─ FileInfo.kt
│  │        │  │                          ├─ FilePickerDelegate.kt
│  │        │  │                          ├─ FilePickerPlugin.kt
│  │        │  │                          ├─ FileUtils.kt
│  │        │  │                          └─ MethodResultWrapper.kt
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ CONTRIBUTING.md
│  │        │  ├─ example
│  │        │  │  ├─ analysis_options.yaml
│  │        │  │  ├─ android
│  │        │  │  │  ├─ app
│  │        │  │  │  │  ├─ build.gradle.kts
│  │        │  │  │  │  └─ src
│  │        │  │  │  │     ├─ debug
│  │        │  │  │  │     │  └─ AndroidManifest.xml
│  │        │  │  │  │     ├─ main
│  │        │  │  │  │     │  ├─ AndroidManifest.xml
│  │        │  │  │  │     │  ├─ kotlin
│  │        │  │  │  │     │  │  └─ com
│  │        │  │  │  │     │  │     └─ mr
│  │        │  │  │  │     │  │        └─ flutter
│  │        │  │  │  │     │  │           └─ plugin
│  │        │  │  │  │     │  │              └─ filepicker
│  │        │  │  │  │     │  │                 └─ file_picker_example
│  │        │  │  │  │     │  │                    └─ MainActivity.kt
│  │        │  │  │  │     │  └─ res
│  │        │  │  │  │     │     ├─ drawable
│  │        │  │  │  │     │     │  └─ launch_background.xml
│  │        │  │  │  │     │     ├─ drawable-v21
│  │        │  │  │  │     │     │  └─ launch_background.xml
│  │        │  │  │  │     │     ├─ mipmap-hdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ mipmap-mdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ mipmap-xhdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ mipmap-xxhdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ mipmap-xxxhdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ values
│  │        │  │  │  │     │     │  └─ styles.xml
│  │        │  │  │  │     │     └─ values-night
│  │        │  │  │  │     │        └─ styles.xml
│  │        │  │  │  │     └─ profile
│  │        │  │  │  │        └─ AndroidManifest.xml
│  │        │  │  │  ├─ build.gradle.kts
│  │        │  │  │  ├─ gradle
│  │        │  │  │  │  └─ wrapper
│  │        │  │  │  │     └─ gradle-wrapper.properties
│  │        │  │  │  ├─ gradle.properties
│  │        │  │  │  └─ settings.gradle.kts
│  │        │  │  ├─ ios
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ AppFrameworkInfo.plist
│  │        │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  └─ Release.xcconfig
│  │        │  │  │  ├─ gpxgenerator_path.gpx
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.h
│  │        │  │  │  │  ├─ AppDelegate.m
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  ├─ AppIcon.appiconset
│  │        │  │  │  │  │  │  ├─ Contents.json
│  │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
│  │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
│  │        │  │  │  │  │  └─ LaunchImage.imageset
│  │        │  │  │  │  │     ├─ Contents.json
│  │        │  │  │  │  │     ├─ LaunchImage.png
│  │        │  │  │  │  │     ├─ LaunchImage@2x.png
│  │        │  │  │  │  │     ├─ LaunchImage@3x.png
│  │        │  │  │  │  │     └─ README.md
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  ├─ LaunchScreen.storyboard
│  │        │  │  │  │  │  └─ Main.storyboard
│  │        │  │  │  │  ├─ File.swift
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ main.m
│  │        │  │  │  │  └─ Runner-Bridging-Header.h
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  │     ├─ swiftpm
│  │        │  │  │  │  │     │  └─ Package.resolved
│  │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  └─ Runner.xcworkspace
│  │        │  │  │     ├─ contents.xcworkspacedata
│  │        │  │  │     └─ xcshareddata
│  │        │  │  │        ├─ IDEWorkspaceChecks.plist
│  │        │  │  │        ├─ swiftpm
│  │        │  │  │        │  └─ Package.resolved
│  │        │  │  │        └─ WorkspaceSettings.xcsettings
│  │        │  │  ├─ lib
│  │        │  │  │  ├─ main.dart
│  │        │  │  │  └─ src
│  │        │  │  │     └─ file_picker_demo.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ macos
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │        │  │  │  │  └─ Flutter-Release.xcconfig
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  └─ AppIcon.appiconset
│  │        │  │  │  │  │     ├─ app_icon_1024.png
│  │        │  │  │  │  │     ├─ app_icon_128.png
│  │        │  │  │  │  │     ├─ app_icon_16.png
│  │        │  │  │  │  │     ├─ app_icon_256.png
│  │        │  │  │  │  │     ├─ app_icon_32.png
│  │        │  │  │  │  │     ├─ app_icon_512.png
│  │        │  │  │  │  │     ├─ app_icon_64.png
│  │        │  │  │  │  │     └─ Contents.json
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  └─ MainMenu.xib
│  │        │  │  │  │  ├─ Configs
│  │        │  │  │  │  │  ├─ AppInfo.xcconfig
│  │        │  │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  │  ├─ Release.xcconfig
│  │        │  │  │  │  │  └─ Warnings.xcconfig
│  │        │  │  │  │  ├─ DebugProfile.entitlements
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ MainFlutterWindow.swift
│  │        │  │  │  │  └─ Release.entitlements
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  ├─ screenshots
│  │        │  │  │  ├─ example_android.gif
│  │        │  │  │  ├─ example_ios.gif
│  │        │  │  │  ├─ example_linux.gif
│  │        │  │  │  ├─ example_macos.gif
│  │        │  │  │  └─ example_windows.gif
│  │        │  │  ├─ web
│  │        │  │  │  ├─ favicon.png
│  │        │  │  │  ├─ icons
│  │        │  │  │  │  ├─ Icon-192.png
│  │        │  │  │  │  └─ Icon-512.png
│  │        │  │  │  ├─ index.html
│  │        │  │  │  └─ manifest.json
│  │        │  │  └─ windows
│  │        │  │     ├─ CMakeLists.txt
│  │        │  │     ├─ flutter
│  │        │  │     │  └─ CMakeLists.txt
│  │        │  │     └─ runner
│  │        │  │        ├─ CMakeLists.txt
│  │        │  │        ├─ flutter_window.cpp
│  │        │  │        ├─ flutter_window.h
│  │        │  │        ├─ main.cpp
│  │        │  │        ├─ resource.h
│  │        │  │        ├─ resources
│  │        │  │        │  └─ app_icon.ico
│  │        │  │        ├─ runner.exe.manifest
│  │        │  │        ├─ Runner.rc
│  │        │  │        ├─ utils.cpp
│  │        │  │        ├─ utils.h
│  │        │  │        ├─ win32_window.cpp
│  │        │  │        └─ win32_window.h
│  │        │  ├─ ios
│  │        │  │  ├─ file_picker
│  │        │  │  │  ├─ Package.resolved
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ file_picker
│  │        │  │  │        ├─ FileInfo.m
│  │        │  │  │        ├─ FilePickerPlugin.m
│  │        │  │  │        ├─ FilePickerUtils.m
│  │        │  │  │        ├─ ImageUtils.m
│  │        │  │  │        ├─ include
│  │        │  │  │        │  ├─ file_picker
│  │        │  │  │        │  │  ├─ FileInfo.h
│  │        │  │  │        │  │  ├─ FilePickerPlugin.h
│  │        │  │  │        │  │  ├─ FilePickerUtils.h
│  │        │  │  │        │  │  └─ ImageUtils.h
│  │        │  │  │        │  ├─ file_picker-umbrella.h
│  │        │  │  │        │  └─ file_picker.modulemap
│  │        │  │  │        └─ PrivacyInfo.xcprivacy
│  │        │  │  └─ file_picker.podspec
│  │        │  ├─ lib
│  │        │  │  ├─ file_picker.dart
│  │        │  │  ├─ src
│  │        │  │  │  ├─ exceptions.dart
│  │        │  │  │  ├─ file_picker.dart
│  │        │  │  │  ├─ file_picker_io.dart
│  │        │  │  │  ├─ file_picker_macos.dart
│  │        │  │  │  ├─ file_picker_result.dart
│  │        │  │  │  ├─ linux
│  │        │  │  │  │  ├─ file_picker_linux.dart
│  │        │  │  │  │  ├─ filters.dart
│  │        │  │  │  │  ├─ xdp_filechooser.dart
│  │        │  │  │  │  └─ xdp_request.dart
│  │        │  │  │  ├─ platform_file.dart
│  │        │  │  │  ├─ utils.dart
│  │        │  │  │  └─ windows
│  │        │  │  │     ├─ file_picker_windows.dart
│  │        │  │  │     ├─ file_picker_windows_ffi_types.dart
│  │        │  │  │     └─ file_picker_windows_stub.dart
│  │        │  │  └─ _internal
│  │        │  │     └─ file_picker_web.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ macos
│  │        │  │  ├─ file_picker
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ file_picker
│  │        │  │  │        ├─ FilePickerPlugin.swift
│  │        │  │  │        └─ PrivacyInfo.xcprivacy
│  │        │  │  └─ file_picker.podspec
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     ├─ common.dart
│  │        │     ├─ file_picker_macos_test.dart
│  │        │     ├─ file_picker_utils_test.dart
│  │        │     ├─ file_picker_windows_test.dart
│  │        │     ├─ linux
│  │        │     │  └─ xdp_filter_test.dart
│  │        │     └─ test_files
│  │        │        ├─ franz-michael-schneeberger-unsplash.jpg
│  │        │        ├─ test.pdf
│  │        │        └─ test.yml
│  │        ├─ file_selector_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ lib
│  │        │  │  │  ├─ get_directory_page.dart
│  │        │  │  │  ├─ get_multiple_directories_page.dart
│  │        │  │  │  ├─ home_page.dart
│  │        │  │  │  ├─ main.dart
│  │        │  │  │  ├─ open_image_page.dart
│  │        │  │  │  ├─ open_multiple_images_page.dart
│  │        │  │  │  ├─ open_text_page.dart
│  │        │  │  │  └─ save_text_page.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  └─ README.md
│  │        │  ├─ lib
│  │        │  │  ├─ file_selector_linux.dart
│  │        │  │  └─ src
│  │        │  │     └─ messages.g.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ linux
│  │        │  │  ├─ CMakeLists.txt
│  │        │  │  ├─ file_selector_plugin.cc
│  │        │  │  ├─ file_selector_plugin_private.h
│  │        │  │  ├─ include
│  │        │  │  │  └─ file_selector_linux
│  │        │  │  │     └─ file_selector_plugin.h
│  │        │  │  ├─ messages.g.cc
│  │        │  │  ├─ messages.g.h
│  │        │  │  └─ test
│  │        │  │     ├─ file_selector_plugin_test.cc
│  │        │  │     └─ test_main.cc
│  │        │  ├─ pigeons
│  │        │  │  ├─ copyright.txt
│  │        │  │  └─ messages.dart
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     └─ file_selector_linux_test.dart
│  │        ├─ flutter_secure_storage_linux
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ LICENSE
│  │        │  ├─ linux
│  │        │  │  ├─ CMakeLists.txt
│  │        │  │  ├─ flutter_secure_storage_linux_plugin.cc
│  │        │  │  └─ include
│  │        │  │     ├─ FHashTable.hpp
│  │        │  │     ├─ flutter_secure_storage_linux
│  │        │  │     │  └─ flutter_secure_storage_linux_plugin.h
│  │        │  │     ├─ json.hpp
│  │        │  │     └─ Secret.hpp
│  │        │  ├─ pubspec.yaml
│  │        │  └─ README.md
│  │        ├─ flutter_web_auth_2
│  │        │  ├─ analysis_options.yaml
│  │        │  ├─ android
│  │        │  │  ├─ build.gradle
│  │        │  │  ├─ gradle
│  │        │  │  │  └─ wrapper
│  │        │  │  │     └─ gradle-wrapper.properties
│  │        │  │  ├─ gradle.properties
│  │        │  │  ├─ settings.gradle
│  │        │  │  └─ src
│  │        │  │     └─ main
│  │        │  │        ├─ AndroidManifest.xml
│  │        │  │        └─ kotlin
│  │        │  │           └─ com
│  │        │  │              └─ linusu
│  │        │  │                 └─ flutter_web_auth_2
│  │        │  │                    ├─ AuthenticationManagementActivity.kt
│  │        │  │                    ├─ CallbackActivity.kt
│  │        │  │                    ├─ FlutterWebAuth2Plugin.kt
│  │        │  │                    ├─ KeepAliveService.kt
│  │        │  │                    ├─ TabBuilderWrapper.kt
│  │        │  │                    └─ Utils.kt
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ analysis_options.yaml
│  │        │  │  ├─ android
│  │        │  │  │  ├─ app
│  │        │  │  │  │  ├─ build.gradle
│  │        │  │  │  │  └─ src
│  │        │  │  │  │     ├─ debug
│  │        │  │  │  │     │  └─ AndroidManifest.xml
│  │        │  │  │  │     ├─ main
│  │        │  │  │  │     │  ├─ AndroidManifest.xml
│  │        │  │  │  │     │  ├─ java
│  │        │  │  │  │     │  │  └─ io
│  │        │  │  │  │     │  │     └─ flutter
│  │        │  │  │  │     │  │        └─ plugins
│  │        │  │  │  │     │  ├─ kotlin
│  │        │  │  │  │     │  │  └─ com
│  │        │  │  │  │     │  │     ├─ example
│  │        │  │  │  │     │  │     │  └─ flutter_web_auth_example
│  │        │  │  │  │     │  │     └─ linusu
│  │        │  │  │  │     │  │        └─ flutter_web_auth_2_example
│  │        │  │  │  │     │  │           └─ MainActivity.kt
│  │        │  │  │  │     │  └─ res
│  │        │  │  │  │     │     ├─ drawable
│  │        │  │  │  │     │     │  └─ launch_background.xml
│  │        │  │  │  │     │     ├─ drawable-v21
│  │        │  │  │  │     │     ├─ mipmap-hdpi
│  │        │  │  │  │     │     ├─ mipmap-mdpi
│  │        │  │  │  │     │     ├─ mipmap-xhdpi
│  │        │  │  │  │     │     ├─ mipmap-xxhdpi
│  │        │  │  │  │     │     ├─ mipmap-xxxhdpi
│  │        │  │  │  │     │     ├─ values
│  │        │  │  │  │     │     │  └─ styles.xml
│  │        │  │  │  │     │     └─ values-night
│  │        │  │  │  │     └─ profile
│  │        │  │  │  │        └─ AndroidManifest.xml
│  │        │  │  │  ├─ build.gradle
│  │        │  │  │  ├─ gradle
│  │        │  │  │  │  └─ wrapper
│  │        │  │  │  │     └─ gradle-wrapper.properties
│  │        │  │  │  ├─ gradle.properties
│  │        │  │  │  └─ settings.gradle
│  │        │  │  ├─ ios
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ AppFrameworkInfo.plist
│  │        │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  └─ Release.xcconfig
│  │        │  │  │  ├─ Podfile
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  ├─ AppIcon.appiconset
│  │        │  │  │  │  │  │  └─ Contents.json
│  │        │  │  │  │  │  └─ LaunchImage.imageset
│  │        │  │  │  │  │     ├─ Contents.json
│  │        │  │  │  │  │     └─ README.md
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  ├─ LaunchScreen.storyboard
│  │        │  │  │  │  │  └─ Main.storyboard
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  └─ Runner-Bridging-Header.h
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ macos
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │        │  │  │  │  └─ Flutter-Release.xcconfig
│  │        │  │  │  ├─ Podfile
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  └─ AppIcon.appiconset
│  │        │  │  │  │  │     └─ Contents.json
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  └─ MainMenu.xib
│  │        │  │  │  │  ├─ Configs
│  │        │  │  │  │  │  ├─ AppInfo.xcconfig
│  │        │  │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  │  ├─ Release.xcconfig
│  │        │  │  │  │  │  └─ Warnings.xcconfig
│  │        │  │  │  │  ├─ DebugProfile.entitlements
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ MainFlutterWindow.swift
│  │        │  │  │  │  └─ Release.entitlements
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  ├─ test
│  │        │  │  │  └─ widget_test.dart
│  │        │  │  ├─ web
│  │        │  │  │  ├─ auth.html
│  │        │  │  │  ├─ icons
│  │        │  │  │  ├─ index.html
│  │        │  │  │  └─ manifest.json
│  │        │  │  └─ windows
│  │        │  │     ├─ CMakeLists.txt
│  │        │  │     ├─ flutter
│  │        │  │     │  └─ CMakeLists.txt
│  │        │  │     └─ runner
│  │        │  │        ├─ CMakeLists.txt
│  │        │  │        ├─ flutter_window.cpp
│  │        │  │        ├─ flutter_window.h
│  │        │  │        ├─ main.cpp
│  │        │  │        ├─ resource.h
│  │        │  │        ├─ resources
│  │        │  │        │  └─ app_icon.ico
│  │        │  │        ├─ runner.exe.manifest
│  │        │  │        ├─ Runner.rc
│  │        │  │        ├─ utils.cpp
│  │        │  │        ├─ utils.h
│  │        │  │        ├─ win32_window.cpp
│  │        │  │        └─ win32_window.h
│  │        │  ├─ ios
│  │        │  │  ├─ flutter_web_auth_2
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ flutter_web_auth_2
│  │        │  │  │        └─ FlutterWebAuth2Plugin.swift
│  │        │  │  └─ flutter_web_auth_2.podspec
│  │        │  ├─ lib
│  │        │  │  ├─ flutter_web_auth_2.dart
│  │        │  │  └─ src
│  │        │  │     ├─ linows.dart
│  │        │  │     ├─ macos.dart
│  │        │  │     ├─ options.dart
│  │        │  │     ├─ platform
│  │        │  │     │  ├─ platform_is.dart
│  │        │  │     │  ├─ universal_platform_none.dart
│  │        │  │     │  ├─ universal_platform_vm.dart
│  │        │  │     │  └─ universal_platform_web.dart
│  │        │  │     ├─ server.dart
│  │        │  │     ├─ unsupported.dart
│  │        │  │     ├─ web.dart
│  │        │  │     └─ webview.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ macos
│  │        │  │  ├─ flutter_web_auth_2
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ flutter_web_auth_2
│  │        │  │  │        └─ FlutterWebAuth2Plugin.swift
│  │        │  │  └─ flutter_web_auth_2.podspec
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  ├─ screen-android.gif
│  │        │  ├─ screen-ios.gif
│  │        │  ├─ screen-macos.gif
│  │        │  └─ test
│  │        │     └─ flutter_web_auth_2_test.dart
│  │        ├─ image_picker_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  └─ README.md
│  │        │  ├─ lib
│  │        │  │  └─ image_picker_linux.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     ├─ image_picker_linux_test.dart
│  │        │     └─ image_picker_linux_test.mocks.dart
│  │        ├─ path_provider_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ integration_test
│  │        │  │  │  └─ path_provider_test.dart
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  └─ test_driver
│  │        │  │     └─ integration_test.dart
│  │        │  ├─ lib
│  │        │  │  ├─ path_provider_linux.dart
│  │        │  │  └─ src
│  │        │  │     ├─ get_application_id.dart
│  │        │  │     ├─ get_application_id_real.dart
│  │        │  │     ├─ get_application_id_stub.dart
│  │        │  │     └─ path_provider_linux.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     ├─ get_application_id_test.dart
│  │        │     └─ path_provider_linux_test.dart
│  │        ├─ shared_preferences_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ integration_test
│  │        │  │  │  └─ shared_preferences_test.dart
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  └─ test_driver
│  │        │  │     └─ integration_test.dart
│  │        │  ├─ lib
│  │        │  │  └─ shared_preferences_linux.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     ├─ fake_path_provider_linux.dart
│  │        │     ├─ legacy_shared_preferences_linux_test.dart
│  │        │     └─ shared_preferences_linux_async_test.dart
│  │        ├─ url_launcher_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ integration_test
│  │        │  │  │  └─ url_launcher_test.dart
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  └─ test_driver
│  │        │  │     └─ integration_test.dart
│  │        │  ├─ lib
│  │        │  │  ├─ src
│  │        │  │  │  └─ messages.g.dart
│  │        │  │  └─ url_launcher_linux.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ linux
│  │        │  │  ├─ CMakeLists.txt
│  │        │  │  ├─ include
│  │        │  │  │  └─ url_launcher_linux
│  │        │  │  │     └─ url_launcher_plugin.h
│  │        │  │  ├─ messages.g.cc
│  │        │  │  ├─ messages.g.h
│  │        │  │  ├─ test
│  │        │  │  │  └─ url_launcher_linux_test.cc
│  │        │  │  ├─ url_launcher_plugin.cc
│  │        │  │  └─ url_launcher_plugin_private.h
│  │        │  ├─ pigeons
│  │        │  │  ├─ copyright.txt
│  │        │  │  └─ messages.dart
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     └─ url_launcher_linux_test.dart
│  │        └─ window_to_front
│  │           ├─ .metadata
│  │           ├─ CHANGELOG.md
│  │           ├─ example
│  │           │  └─ readme.md
│  │           ├─ lib
│  │           │  └─ window_to_front.dart
│  │           ├─ LICENSE
│  │           ├─ linux
│  │           │  ├─ CMakeLists.txt
│  │           │  ├─ flutter
│  │           │  │  └─ ephemeral
│  │           │  │     └─ .plugin_symlinks
│  │           │  │        └─ window_to_front
│  │           │  │           ├─ CHANGELOG.md
│  │           │  │           ├─ example
│  │           │  │           │  └─ readme.md
│  │           │  │           ├─ lib
│  │           │  │           │  └─ window_to_front.dart
│  │           │  │           ├─ LICENSE
│  │           │  │           ├─ linux
│  │           │  │           │  ├─ CMakeLists.txt
│  │           │  │           │  ├─ flutter
│  │           │  │           │  ├─ include
│  │           │  │           │  │  └─ window_to_front
│  │           │  │           │  │     └─ window_to_front_plugin.h
│  │           │  │           │  └─ window_to_front_plugin.cc
│  │           │  │           ├─ macos
│  │           │  │           │  ├─ Classes
│  │           │  │           │  │  └─ WindowToFrontPlugin.swift
│  │           │  │           │  ├─ Flutter
│  │           │  │           │  └─ window_to_front.podspec
│  │           │  │           ├─ pubspec.yaml
│  │           │  │           ├─ README.md
│  │           │  │           └─ windows
│  │           │  │              ├─ CMakeLists.txt
│  │           │  │              ├─ flutter
│  │           │  │              ├─ include
│  │           │  │              │  └─ window_to_front
│  │           │  │              │     └─ window_to_front_plugin.h
│  │           │  │              └─ window_to_front_plugin.cpp
│  │           │  ├─ include
│  │           │  │  └─ window_to_front
│  │           │  │     └─ window_to_front_plugin.h
│  │           │  └─ window_to_front_plugin.cc
│  │           ├─ macos
│  │           │  ├─ Classes
│  │           │  │  └─ WindowToFrontPlugin.swift
│  │           │  ├─ Flutter
│  │           │  └─ window_to_front.podspec
│  │           ├─ pubspec.yaml
│  │           ├─ README.md
│  │           └─ windows
│  │              ├─ CMakeLists.txt
│  │              ├─ include
│  │              │  └─ window_to_front
│  │              │     └─ window_to_front_plugin.h
│  │              └─ window_to_front_plugin.cpp
│  └─ runner
│     ├─ CMakeLists.txt
│     ├─ main.cc
│     ├─ my_application.cc
│     └─ my_application.h
├─ macos
│  ├─ Flutter
│  │  ├─ Flutter-Debug.xcconfig
│  │  └─ Flutter-Release.xcconfig
│  ├─ Runner
│  │  ├─ AppDelegate.swift
│  │  ├─ Assets.xcassets
│  │  │  └─ AppIcon.appiconset
│  │  │     ├─ app_icon_1024.png
│  │  │     ├─ app_icon_128.png
│  │  │     ├─ app_icon_16.png
│  │  │     ├─ app_icon_256.png
│  │  │     ├─ app_icon_32.png
│  │  │     ├─ app_icon_512.png
│  │  │     ├─ app_icon_64.png
│  │  │     └─ Contents.json
│  │  ├─ Base.lproj
│  │  │  └─ MainMenu.xib
│  │  ├─ Configs
│  │  │  ├─ AppInfo.xcconfig
│  │  │  ├─ Debug.xcconfig
│  │  │  ├─ Release.xcconfig
│  │  │  └─ Warnings.xcconfig
│  │  ├─ DebugProfile.entitlements
│  │  ├─ Info.plist
│  │  ├─ MainFlutterWindow.swift
│  │  └─ Release.entitlements
│  ├─ Runner.xcodeproj
│  │  ├─ project.pbxproj
│  │  ├─ project.xcworkspace
│  │  │  └─ xcshareddata
│  │  │     └─ IDEWorkspaceChecks.plist
│  │  └─ xcshareddata
│  │     └─ xcschemes
│  │        └─ Runner.xcscheme
│  ├─ Runner.xcworkspace
│  │  ├─ contents.xcworkspacedata
│  │  └─ xcshareddata
│  │     └─ IDEWorkspaceChecks.plist
│  └─ RunnerTests
│     └─ RunnerTests.swift
├─ pubspec.yaml
├─ README.md
├─ test
│  └─ widget_test.dart
├─ web
│  ├─ favicon.png
│  ├─ icons
│  │  ├─ Icon-192.png
│  │  ├─ Icon-512.png
│  │  ├─ Icon-maskable-192.png
│  │  └─ Icon-maskable-512.png
│  ├─ index.html
│  └─ manifest.json
└─ windows
   ├─ CMakeLists.txt
   ├─ flutter
   │  ├─ CMakeLists.txt
   │  └─ ephemeral
   │     └─ .plugin_symlinks
   │        ├─ connectivity_plus
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ gradle.properties
   │        │  │  ├─ settings.gradle
   │        │  │  └─ src
   │        │  │     └─ main
   │        │  │        ├─ AndroidManifest.xml
   │        │  │        └─ java
   │        │  │           └─ dev
   │        │  │              └─ fluttercommunity
   │        │  │                 └─ plus
   │        │  │                    └─ connectivity
   │        │  │                       ├─ Connectivity.java
   │        │  │                       ├─ ConnectivityBroadcastReceiver.java
   │        │  │                       ├─ ConnectivityMethodChannelHandler.java
   │        │  │                       └─ ConnectivityPlugin.java
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle
   │        │  │  │  │  └─ src
   │        │  │  │  │     └─ main
   │        │  │  │  │        ├─ AndroidManifest.xml
   │        │  │  │  │        ├─ java
   │        │  │  │  │        │  └─ io
   │        │  │  │  │        │     └─ flutter
   │        │  │  │  │        │        └─ plugins
   │        │  │  │  │        │           └─ connectivityexample
   │        │  │  │  │        │              └─ FlutterActivityTest.java
   │        │  │  │  │        └─ res
   │        │  │  │  │           ├─ mipmap-hdpi
   │        │  │  │  │           │  └─ ic_launcher.png
   │        │  │  │  │           ├─ mipmap-mdpi
   │        │  │  │  │           │  └─ ic_launcher.png
   │        │  │  │  │           ├─ mipmap-xhdpi
   │        │  │  │  │           │  └─ ic_launcher.png
   │        │  │  │  │           ├─ mipmap-xxhdpi
   │        │  │  │  │           │  └─ ic_launcher.png
   │        │  │  │  │           └─ mipmap-xxxhdpi
   │        │  │  │  │              └─ ic_launcher.png
   │        │  │  │  ├─ build.gradle
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle
   │        │  │  ├─ integration_test
   │        │  │  │  └─ connectivity_plus_test.dart
   │        │  │  ├─ ios
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  ├─ Contents.json
   │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     ├─ LaunchImage.png
   │        │  │  │  │  │     ├─ LaunchImage@2x.png
   │        │  │  │  │  │     ├─ LaunchImage@3x.png
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  └─ Runner-Bridging-Header.h
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     ├─ swiftpm
   │        │  │  │  │  │     │  └─ configuration
   │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │     ├─ swiftpm
   │        │  │  │  │     │  └─ configuration
   │        │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ linux
   │        │  │  │  ├─ CMakeLists.txt
   │        │  │  │  ├─ flutter
   │        │  │  │  │  └─ CMakeLists.txt
   │        │  │  │  ├─ main.cc
   │        │  │  │  ├─ my_application.cc
   │        │  │  │  └─ my_application.h
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     └─ swiftpm
   │        │  │  │  │  │        └─ configuration
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │     └─ swiftpm
   │        │  │  │  │        └─ configuration
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ web
   │        │  │  │  ├─ favicon.png
   │        │  │  │  ├─ icons
   │        │  │  │  │  ├─ Icon-192.png
   │        │  │  │  │  ├─ Icon-512.png
   │        │  │  │  │  ├─ Icon-maskable-192.png
   │        │  │  │  │  └─ Icon-maskable-512.png
   │        │  │  │  ├─ index.html
   │        │  │  │  └─ manifest.json
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ run_loop.cpp
   │        │  │        ├─ run_loop.h
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ connectivity_plus
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ connectivity_plus
   │        │  │  │        ├─ ConnectivityPlusPlugin.swift
   │        │  │  │        ├─ ConnectivityProvider.swift
   │        │  │  │        ├─ PathMonitorConnectivityProvider.swift
   │        │  │  │        └─ PrivacyInfo.xcprivacy
   │        │  │  └─ connectivity_plus.podspec
   │        │  ├─ lib
   │        │  │  ├─ connectivity_plus.dart
   │        │  │  └─ src
   │        │  │     ├─ connectivity_plus_linux.dart
   │        │  │     ├─ connectivity_plus_web.dart
   │        │  │     └─ web
   │        │  │        └─ dart_html_connectivity_plugin.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ connectivity_plus
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ connectivity_plus
   │        │  │  │        ├─ ConnectivityPlusPlugin.swift
   │        │  │  │        ├─ ConnectivityProvider.swift
   │        │  │  │        ├─ PathMonitorConnectivityProvider.swift
   │        │  │  │        └─ PrivacyInfo.xcprivacy
   │        │  │  └─ connectivity_plus.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  ├─ connectivity_plus_linux_test.dart
   │        │  │  ├─ connectivity_plus_linux_test.mocks.dart
   │        │  │  └─ connectivity_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ connectivity_plus_plugin.cpp
   │        │     ├─ include
   │        │     │  └─ connectivity_plus
   │        │     │     ├─ connectivity_plus_windows_plugin.h
   │        │     │     └─ network_manager.h
   │        │     └─ network_manager.cpp
   │        ├─ desktop_webview_window
   │        │  ├─ analysis_options.yaml
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ linux
   │        │  │  │  ├─ CMakeLists.txt
   │        │  │  │  ├─ flutter
   │        │  │  │  │  └─ CMakeLists.txt
   │        │  │  │  ├─ main.cc
   │        │  │  │  ├─ my_application.cc
   │        │  │  │  └─ my_application.h
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        └─ IDEWorkspaceChecks.plist
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test
   │        │  │  │  └─ widget_test.dart
   │        │  │  ├─ test_web_pages
   │        │  │  │  ├─ login.html
   │        │  │  │  └─ test.html
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ desktop_webview_window.dart
   │        │  │  └─ src
   │        │  │     ├─ create_configuration.dart
   │        │  │     ├─ message_channel.dart
   │        │  │     ├─ title_bar.dart
   │        │  │     ├─ webview.dart
   │        │  │     └─ webview_impl.dart
   │        │  ├─ LICENSE
   │        │  ├─ linux
   │        │  │  ├─ CMakeLists.txt
   │        │  │  ├─ desktop_webview_window_plugin.cc
   │        │  │  ├─ include
   │        │  │  │  └─ desktop_webview_window
   │        │  │  │     └─ desktop_webview_window_plugin.h
   │        │  │  ├─ message_channel_plugin.cc
   │        │  │  ├─ message_channel_plugin.h
   │        │  │  ├─ webview_window.cc
   │        │  │  └─ webview_window.h
   │        │  ├─ macos
   │        │  │  ├─ Classes
   │        │  │  │  ├─ DesktopWebviewWindowPlugin.swift
   │        │  │  │  ├─ MessageChannelPlugin.swift
   │        │  │  │  ├─ WebViewLayoutController.swift
   │        │  │  │  ├─ WebViewLayoutController.xib
   │        │  │  │  └─ WebviewWindowController.swift
   │        │  │  └─ desktop_webview_window.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ run_local_test_server.sh
   │        │  ├─ test
   │        │  │  └─ desktop_webview_window_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ desktop_webview_window_plugin.cpp
   │        │     ├─ flutter_view.cc
   │        │     ├─ flutter_view.h
   │        │     ├─ include
   │        │     │  └─ desktop_webview_window
   │        │     │     └─ desktop_webview_window_plugin.h
   │        │     ├─ libs
   │        │     │  └─ x64
   │        │     │     ├─ WebView2Loader.dll
   │        │     │     └─ WebView2Loader.dll.lib
   │        │     ├─ message_channel_plugin.cc
   │        │     ├─ message_channel_plugin.h
   │        │     ├─ strconv.h
   │        │     ├─ utils.cc
   │        │     ├─ utils.h
   │        │     ├─ WebView2.h
   │        │     ├─ WebView2EnvironmentOptions.h
   │        │     ├─ webview_window.cc
   │        │     ├─ webview_window.h
   │        │     ├─ web_view.cc
   │        │     ├─ web_view.h
   │        │     ├─ web_view_window_plugin.cc
   │        │     ├─ web_view_window_plugin.h
   │        │     └─ wil
   │        │        ├─ com.h
   │        │        ├─ common.h
   │        │        ├─ cppwinrt.h
   │        │        ├─ filesystem.h
   │        │        ├─ LICENSE
   │        │        ├─ registry.h
   │        │        ├─ resource.h
   │        │        ├─ result.h
   │        │        ├─ result_macros.h
   │        │        ├─ result_originate.h
   │        │        ├─ rpc_helpers.h
   │        │        ├─ safecast.h
   │        │        ├─ stl.h
   │        │        ├─ ThirdPartyNotices.txt
   │        │        ├─ token_helpers.h
   │        │        ├─ win32_helpers.h
   │        │        ├─ winrt.h
   │        │        ├─ wistd_config.h
   │        │        ├─ wistd_functional.h
   │        │        ├─ wistd_memory.h
   │        │        ├─ wistd_type_traits.h
   │        │        └─ wrl.h
   │        ├─ file_picker
   │        │  ├─ analysis_options.yaml
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ proguard-rules.pro
   │        │  │  ├─ settings.gradle
   │        │  │  └─ src
   │        │  │     └─ main
   │        │  │        ├─ AndroidManifest.xml
   │        │  │        └─ kotlin
   │        │  │           └─ com
   │        │  │              └─ mr
   │        │  │                 └─ flutter
   │        │  │                    └─ plugin
   │        │  │                       └─ filepicker
   │        │  │                          ├─ FileInfo.kt
   │        │  │                          ├─ FilePickerDelegate.kt
   │        │  │                          ├─ FilePickerPlugin.kt
   │        │  │                          ├─ FileUtils.kt
   │        │  │                          └─ MethodResultWrapper.kt
   │        │  ├─ CHANGELOG.md
   │        │  ├─ CONTRIBUTING.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle.kts
   │        │  │  │  │  └─ src
   │        │  │  │  │     ├─ debug
   │        │  │  │  │     │  └─ AndroidManifest.xml
   │        │  │  │  │     ├─ main
   │        │  │  │  │     │  ├─ AndroidManifest.xml
   │        │  │  │  │     │  ├─ kotlin
   │        │  │  │  │     │  │  └─ com
   │        │  │  │  │     │  │     └─ mr
   │        │  │  │  │     │  │        └─ flutter
   │        │  │  │  │     │  │           └─ plugin
   │        │  │  │  │     │  │              └─ filepicker
   │        │  │  │  │     │  │                 └─ file_picker_example
   │        │  │  │  │     │  │                    └─ MainActivity.kt
   │        │  │  │  │     │  └─ res
   │        │  │  │  │     │     ├─ drawable
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ drawable-v21
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ mipmap-hdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-mdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ values
   │        │  │  │  │     │     │  └─ styles.xml
   │        │  │  │  │     │     └─ values-night
   │        │  │  │  │     │        └─ styles.xml
   │        │  │  │  │     └─ profile
   │        │  │  │  │        └─ AndroidManifest.xml
   │        │  │  │  ├─ build.gradle.kts
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle.kts
   │        │  │  ├─ ios
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ gpxgenerator_path.gpx
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.h
   │        │  │  │  │  ├─ AppDelegate.m
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  ├─ Contents.json
   │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     ├─ LaunchImage.png
   │        │  │  │  │  │     ├─ LaunchImage@2x.png
   │        │  │  │  │  │     ├─ LaunchImage@3x.png
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ File.swift
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ main.m
   │        │  │  │  │  └─ Runner-Bridging-Header.h
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     ├─ swiftpm
   │        │  │  │  │  │     │  └─ Package.resolved
   │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        ├─ IDEWorkspaceChecks.plist
   │        │  │  │        ├─ swiftpm
   │        │  │  │        │  └─ Package.resolved
   │        │  │  │        └─ WorkspaceSettings.xcsettings
   │        │  │  ├─ lib
   │        │  │  │  ├─ main.dart
   │        │  │  │  └─ src
   │        │  │  │     └─ file_picker_demo.dart
   │        │  │  ├─ linux
   │        │  │  │  ├─ CMakeLists.txt
   │        │  │  │  ├─ flutter
   │        │  │  │  │  └─ CMakeLists.txt
   │        │  │  │  ├─ main.cc
   │        │  │  │  ├─ my_application.cc
   │        │  │  │  └─ my_application.h
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ screenshots
   │        │  │  │  ├─ example_android.gif
   │        │  │  │  ├─ example_ios.gif
   │        │  │  │  ├─ example_linux.gif
   │        │  │  │  ├─ example_macos.gif
   │        │  │  │  └─ example_windows.gif
   │        │  │  ├─ web
   │        │  │  │  ├─ favicon.png
   │        │  │  │  ├─ icons
   │        │  │  │  │  ├─ Icon-192.png
   │        │  │  │  │  └─ Icon-512.png
   │        │  │  │  ├─ index.html
   │        │  │  │  └─ manifest.json
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ file_picker
   │        │  │  │  ├─ Package.resolved
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ file_picker
   │        │  │  │        ├─ FileInfo.m
   │        │  │  │        ├─ FilePickerPlugin.m
   │        │  │  │        ├─ FilePickerUtils.m
   │        │  │  │        ├─ ImageUtils.m
   │        │  │  │        ├─ include
   │        │  │  │        │  ├─ file_picker
   │        │  │  │        │  │  ├─ FileInfo.h
   │        │  │  │        │  │  ├─ FilePickerPlugin.h
   │        │  │  │        │  │  ├─ FilePickerUtils.h
   │        │  │  │        │  │  └─ ImageUtils.h
   │        │  │  │        │  ├─ file_picker-umbrella.h
   │        │  │  │        │  └─ file_picker.modulemap
   │        │  │  │        └─ PrivacyInfo.xcprivacy
   │        │  │  └─ file_picker.podspec
   │        │  ├─ lib
   │        │  │  ├─ file_picker.dart
   │        │  │  ├─ src
   │        │  │  │  ├─ exceptions.dart
   │        │  │  │  ├─ file_picker.dart
   │        │  │  │  ├─ file_picker_io.dart
   │        │  │  │  ├─ file_picker_macos.dart
   │        │  │  │  ├─ file_picker_result.dart
   │        │  │  │  ├─ linux
   │        │  │  │  │  ├─ file_picker_linux.dart
   │        │  │  │  │  ├─ filters.dart
   │        │  │  │  │  ├─ xdp_filechooser.dart
   │        │  │  │  │  └─ xdp_request.dart
   │        │  │  │  ├─ platform_file.dart
   │        │  │  │  ├─ utils.dart
   │        │  │  │  └─ windows
   │        │  │  │     ├─ file_picker_windows.dart
   │        │  │  │     ├─ file_picker_windows_ffi_types.dart
   │        │  │  │     └─ file_picker_windows_stub.dart
   │        │  │  └─ _internal
   │        │  │     └─ file_picker_web.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ file_picker
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ file_picker
   │        │  │  │        ├─ FilePickerPlugin.swift
   │        │  │  │        └─ PrivacyInfo.xcprivacy
   │        │  │  └─ file_picker.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  └─ test
   │        │     ├─ common.dart
   │        │     ├─ file_picker_macos_test.dart
   │        │     ├─ file_picker_utils_test.dart
   │        │     ├─ file_picker_windows_test.dart
   │        │     ├─ linux
   │        │     │  └─ xdp_filter_test.dart
   │        │     └─ test_files
   │        │        ├─ franz-michael-schneeberger-unsplash.jpg
   │        │        ├─ test.pdf
   │        │        └─ test.yml
   │        ├─ file_selector_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ lib
   │        │  │  │  ├─ get_directory_page.dart
   │        │  │  │  ├─ get_multiple_directories_page.dart
   │        │  │  │  ├─ home_page.dart
   │        │  │  │  ├─ main.dart
   │        │  │  │  ├─ open_image_page.dart
   │        │  │  │  ├─ open_multiple_images_page.dart
   │        │  │  │  ├─ open_text_page.dart
   │        │  │  │  └─ save_text_page.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ file_selector_windows.dart
   │        │  │  └─ src
   │        │  │     └─ messages.g.dart
   │        │  ├─ LICENSE
   │        │  ├─ pigeons
   │        │  │  ├─ copyright.txt
   │        │  │  └─ messages.dart
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  └─ file_selector_windows_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ file_dialog_controller.cpp
   │        │     ├─ file_dialog_controller.h
   │        │     ├─ file_selector_plugin.cpp
   │        │     ├─ file_selector_plugin.h
   │        │     ├─ file_selector_windows.cpp
   │        │     ├─ include
   │        │     │  └─ file_selector_windows
   │        │     │     └─ file_selector_windows.h
   │        │     ├─ messages.g.cpp
   │        │     ├─ messages.g.h
   │        │     ├─ string_utils.cpp
   │        │     ├─ string_utils.h
   │        │     └─ test
   │        │        ├─ file_selector_plugin_test.cpp
   │        │        ├─ test_file_dialog_controller.cpp
   │        │        ├─ test_file_dialog_controller.h
   │        │        ├─ test_main.cpp
   │        │        ├─ test_utils.cpp
   │        │        └─ test_utils.h
   │        ├─ firebase_auth
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ gradle.properties
   │        │  │  ├─ settings.gradle
   │        │  │  ├─ src
   │        │  │  │  └─ main
   │        │  │  │     ├─ AndroidManifest.xml
   │        │  │  │     └─ java
   │        │  │  │        └─ io
   │        │  │  │           └─ flutter
   │        │  │  │              └─ plugins
   │        │  │  │                 └─ firebase
   │        │  │  │                    └─ auth
   │        │  │  │                       ├─ AuthStateChannelStreamHandler.java
   │        │  │  │                       ├─ Constants.java
   │        │  │  │                       ├─ FlutterFirebaseAuthPlugin.java
   │        │  │  │                       ├─ FlutterFirebaseAuthPluginException.java
   │        │  │  │                       ├─ FlutterFirebaseAuthRegistrar.java
   │        │  │  │                       ├─ FlutterFirebaseAuthUser.java
   │        │  │  │                       ├─ FlutterFirebaseMultiFactor.java
   │        │  │  │                       ├─ FlutterFirebaseTotpMultiFactor.java
   │        │  │  │                       ├─ FlutterFirebaseTotpSecret.java
   │        │  │  │                       ├─ GeneratedAndroidFirebaseAuth.java
   │        │  │  │                       ├─ IdTokenChannelStreamHandler.java
   │        │  │  │                       ├─ PhoneNumberVerificationStreamHandler.java
   │        │  │  │                       └─ PigeonParser.java
   │        │  │  └─ user-agent.gradle
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle
   │        │  │  │  │  ├─ google-services.json
   │        │  │  │  │  └─ src
   │        │  │  │  │     ├─ debug
   │        │  │  │  │     │  └─ AndroidManifest.xml
   │        │  │  │  │     ├─ main
   │        │  │  │  │     │  ├─ AndroidManifest.xml
   │        │  │  │  │     │  ├─ kotlin
   │        │  │  │  │     │  │  └─ io
   │        │  │  │  │     │  │     └─ flutter
   │        │  │  │  │     │  │        └─ plugins
   │        │  │  │  │     │  │           └─ firebase
   │        │  │  │  │     │  │              └─ example
   │        │  │  │  │     │  │                 └─ MainActivity.kt
   │        │  │  │  │     │  └─ res
   │        │  │  │  │     │     ├─ drawable
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ drawable-v21
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ mipmap-hdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-mdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ values
   │        │  │  │  │     │     │  ├─ strings.xml
   │        │  │  │  │     │     │  └─ styles.xml
   │        │  │  │  │     │     └─ values-night
   │        │  │  │  │     │        └─ styles.xml
   │        │  │  │  │     └─ profile
   │        │  │  │  │        └─ AndroidManifest.xml
   │        │  │  │  ├─ build.gradle
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle
   │        │  │  ├─ ios
   │        │  │  │  ├─ firebase_app_id_file.json
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.h
   │        │  │  │  │  ├─ AppDelegate.m
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  ├─ Contents.json
   │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     ├─ LaunchImage.png
   │        │  │  │  │  │     ├─ LaunchImage@2x.png
   │        │  │  │  │  │     ├─ LaunchImage@3x.png
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ GoogleService-Info.plist
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ main.m
   │        │  │  │  │  ├─ Runner-Bridging-Header.h
   │        │  │  │  │  └─ Runner.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        ├─ IDEWorkspaceChecks.plist
   │        │  │  │        └─ WorkspaceSettings.xcsettings
   │        │  │  ├─ lib
   │        │  │  │  ├─ auth.dart
   │        │  │  │  ├─ firebase_options.dart
   │        │  │  │  ├─ main.dart
   │        │  │  │  └─ profile.dart
   │        │  │  ├─ macos
   │        │  │  │  ├─ firebase_app_id_file.json
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ GoogleService-Info.plist
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        ├─ IDEWorkspaceChecks.plist
   │        │  │  │        └─ WorkspaceSettings.xcsettings
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ web
   │        │  │  │  ├─ favicon.png
   │        │  │  │  ├─ index.html
   │        │  │  │  └─ manifest.json
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ Classes
   │        │  │  │  ├─ firebase_auth_messages.g.m
   │        │  │  │  ├─ FLTAuthStateChannelStreamHandler.m
   │        │  │  │  ├─ FLTFirebaseAuthPlugin.m
   │        │  │  │  ├─ FLTIdTokenChannelStreamHandler.m
   │        │  │  │  ├─ FLTPhoneNumberVerificationStreamHandler.m
   │        │  │  │  ├─ PigeonParser.m
   │        │  │  │  ├─ Private
   │        │  │  │  │  ├─ FLTAuthStateChannelStreamHandler.h
   │        │  │  │  │  ├─ FLTIdTokenChannelStreamHandler.h
   │        │  │  │  │  ├─ FLTPhoneNumberVerificationStreamHandler.h
   │        │  │  │  │  └─ PigeonParser.h
   │        │  │  │  └─ Public
   │        │  │  │     ├─ CustomPigeonHeader.h
   │        │  │  │     ├─ firebase_auth_messages.g.h
   │        │  │  │     └─ FLTFirebaseAuthPlugin.h
   │        │  │  └─ firebase_auth.podspec
   │        │  ├─ lib
   │        │  │  ├─ firebase_auth.dart
   │        │  │  └─ src
   │        │  │     ├─ confirmation_result.dart
   │        │  │     ├─ firebase_auth.dart
   │        │  │     ├─ multi_factor.dart
   │        │  │     ├─ recaptcha_verifier.dart
   │        │  │     ├─ user.dart
   │        │  │     └─ user_credential.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ Classes
   │        │  │  │  ├─ firebase_auth_messages.g.m
   │        │  │  │  ├─ FLTAuthStateChannelStreamHandler.m
   │        │  │  │  ├─ FLTFirebaseAuthPlugin.m
   │        │  │  │  ├─ FLTIdTokenChannelStreamHandler.m
   │        │  │  │  ├─ FLTPhoneNumberVerificationStreamHandler.m
   │        │  │  │  ├─ PigeonParser.m
   │        │  │  │  ├─ Private
   │        │  │  │  │  ├─ FLTAuthStateChannelStreamHandler.h
   │        │  │  │  │  ├─ FLTIdTokenChannelStreamHandler.h
   │        │  │  │  │  ├─ FLTPhoneNumberVerificationStreamHandler.h
   │        │  │  │  │  └─ PigeonParser.h
   │        │  │  │  └─ Public
   │        │  │  │     ├─ CustomPigeonHeader.h
   │        │  │  │     ├─ firebase_auth_messages.g.h
   │        │  │  │     └─ FLTFirebaseAuthPlugin.h
   │        │  │  └─ firebase_auth.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  ├─ firebase_auth_test.dart
   │        │  │  ├─ mock.dart
   │        │  │  └─ user_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ firebase_auth_plugin.cpp
   │        │     ├─ firebase_auth_plugin.h
   │        │     ├─ firebase_auth_plugin_c_api.cpp
   │        │     ├─ include
   │        │     │  └─ firebase_auth
   │        │     │     └─ firebase_auth_plugin_c_api.h
   │        │     ├─ messages.g.cpp
   │        │     ├─ messages.g.h
   │        │     └─ test
   │        │        └─ firebase_auth_plugin_test.cpp
   │        ├─ firebase_core
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ gradle.properties
   │        │  │  ├─ settings.gradle
   │        │  │  ├─ src
   │        │  │  │  └─ main
   │        │  │  │     ├─ AndroidManifest.xml
   │        │  │  │     └─ java
   │        │  │  │        └─ io
   │        │  │  │           └─ flutter
   │        │  │  │              └─ plugins
   │        │  │  │                 └─ firebase
   │        │  │  │                    └─ core
   │        │  │  │                       ├─ FlutterFirebaseCorePlugin.java
   │        │  │  │                       ├─ FlutterFirebaseCoreRegistrar.java
   │        │  │  │                       ├─ FlutterFirebasePlugin.java
   │        │  │  │                       ├─ FlutterFirebasePluginRegistry.java
   │        │  │  │                       └─ GeneratedAndroidFirebaseCore.java
   │        │  │  └─ user-agent.gradle
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle
   │        │  │  │  │  └─ src
   │        │  │  │  │     ├─ debug
   │        │  │  │  │     │  └─ AndroidManifest.xml
   │        │  │  │  │     ├─ main
   │        │  │  │  │     │  ├─ AndroidManifest.xml
   │        │  │  │  │     │  └─ res
   │        │  │  │  │     │     ├─ drawable
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ mipmap-hdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-mdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     └─ values
   │        │  │  │  │     │        ├─ styles.xml
   │        │  │  │  │     │        └─ values.xml
   │        │  │  │  │     └─ profile
   │        │  │  │  │        └─ AndroidManifest.xml
   │        │  │  │  ├─ build.gradle
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle
   │        │  │  ├─ ios
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.h
   │        │  │  │  │  ├─ AppDelegate.m
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  ├─ Contents.json
   │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     ├─ LaunchImage.png
   │        │  │  │  │  │     ├─ LaunchImage@2x.png
   │        │  │  │  │  │     ├─ LaunchImage@3x.png
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  └─ main.m
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        └─ IDEWorkspaceChecks.plist
   │        │  │  ├─ lib
   │        │  │  │  ├─ firebase_options.dart
   │        │  │  │  └─ main.dart
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        ├─ IDEWorkspaceChecks.plist
   │        │  │  │        └─ WorkspaceSettings.xcsettings
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ web
   │        │  │  │  └─ index.html
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ Classes
   │        │  │  │  ├─ FLTFirebaseCorePlugin.h
   │        │  │  │  ├─ FLTFirebaseCorePlugin.m
   │        │  │  │  ├─ FLTFirebasePlugin.h
   │        │  │  │  ├─ FLTFirebasePlugin.m
   │        │  │  │  ├─ FLTFirebasePluginRegistry.h
   │        │  │  │  ├─ FLTFirebasePluginRegistry.m
   │        │  │  │  ├─ messages.g.h
   │        │  │  │  └─ messages.g.m
   │        │  │  └─ firebase_core.podspec
   │        │  ├─ lib
   │        │  │  ├─ firebase_core.dart
   │        │  │  └─ src
   │        │  │     ├─ firebase.dart
   │        │  │     └─ firebase_app.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ Classes
   │        │  │  │  ├─ FLTFirebaseCorePlugin.h
   │        │  │  │  ├─ FLTFirebaseCorePlugin.m
   │        │  │  │  ├─ FLTFirebasePlugin.h
   │        │  │  │  ├─ FLTFirebasePlugin.m
   │        │  │  │  ├─ FLTFirebasePluginRegistry.h
   │        │  │  │  ├─ FLTFirebasePluginRegistry.m
   │        │  │  │  ├─ messages.g.h
   │        │  │  │  └─ messages.g.m
   │        │  │  └─ firebase_core.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  └─ firebase_core_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ firebase_core_plugin.cpp
   │        │     ├─ firebase_core_plugin.h
   │        │     ├─ firebase_core_plugin_c_api.cpp
   │        │     ├─ include
   │        │     │  └─ firebase_core
   │        │     │     └─ firebase_core_plugin_c_api.h
   │        │     ├─ messages.g.cpp
   │        │     └─ messages.g.h
   │        ├─ flutter_secure_storage_windows
   │        │  ├─ analysis_options.yaml
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ integration_test
   │        │  │  │  └─ app_test.dart
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ flutter_secure_storage_windows.dart
   │        │  │  └─ src
   │        │  │     ├─ flutter_secure_storage_windows_ffi.dart
   │        │  │     └─ flutter_secure_storage_windows_stub.dart
   │        │  ├─ LICENSE
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  └─ unit_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ flutter_secure_storage_windows_plugin.cpp
   │        │     └─ include
   │        │        └─ flutter_secure_storage_windows
   │        │           └─ flutter_secure_storage_windows_plugin.h
   │        ├─ flutter_web_auth_2
   │        │  ├─ analysis_options.yaml
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ gradle.properties
   │        │  │  ├─ settings.gradle
   │        │  │  └─ src
   │        │  │     └─ main
   │        │  │        ├─ AndroidManifest.xml
   │        │  │        └─ kotlin
   │        │  │           └─ com
   │        │  │              └─ linusu
   │        │  │                 └─ flutter_web_auth_2
   │        │  │                    ├─ AuthenticationManagementActivity.kt
   │        │  │                    ├─ CallbackActivity.kt
   │        │  │                    ├─ FlutterWebAuth2Plugin.kt
   │        │  │                    ├─ KeepAliveService.kt
   │        │  │                    ├─ TabBuilderWrapper.kt
   │        │  │                    └─ Utils.kt
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle
   │        │  │  │  │  └─ src
   │        │  │  │  │     ├─ debug
   │        │  │  │  │     │  └─ AndroidManifest.xml
   │        │  │  │  │     ├─ main
   │        │  │  │  │     │  ├─ AndroidManifest.xml
   │        │  │  │  │     │  ├─ java
   │        │  │  │  │     │  │  └─ io
   │        │  │  │  │     │  │     └─ flutter
   │        │  │  │  │     │  │        └─ plugins
   │        │  │  │  │     │  ├─ kotlin
   │        │  │  │  │     │  │  └─ com
   │        │  │  │  │     │  │     ├─ example
   │        │  │  │  │     │  │     │  └─ flutter_web_auth_example
   │        │  │  │  │     │  │     └─ linusu
   │        │  │  │  │     │  │        └─ flutter_web_auth_2_example
   │        │  │  │  │     │  │           └─ MainActivity.kt
   │        │  │  │  │     │  └─ res
   │        │  │  │  │     │     ├─ drawable
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ drawable-v21
   │        │  │  │  │     │     ├─ mipmap-hdpi
   │        │  │  │  │     │     ├─ mipmap-mdpi
   │        │  │  │  │     │     ├─ mipmap-xhdpi
   │        │  │  │  │     │     ├─ mipmap-xxhdpi
   │        │  │  │  │     │     ├─ mipmap-xxxhdpi
   │        │  │  │  │     │     ├─ values
   │        │  │  │  │     │     │  └─ styles.xml
   │        │  │  │  │     │     └─ values-night
   │        │  │  │  │     └─ profile
   │        │  │  │  │        └─ AndroidManifest.xml
   │        │  │  │  ├─ build.gradle
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle
   │        │  │  ├─ ios
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  └─ Contents.json
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  └─ Runner-Bridging-Header.h
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ linux
   │        │  │  │  ├─ CMakeLists.txt
   │        │  │  │  ├─ flutter
   │        │  │  │  │  └─ CMakeLists.txt
   │        │  │  │  ├─ main.cc
   │        │  │  │  ├─ my_application.cc
   │        │  │  │  └─ my_application.h
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test
   │        │  │  │  └─ widget_test.dart
   │        │  │  ├─ web
   │        │  │  │  ├─ auth.html
   │        │  │  │  ├─ icons
   │        │  │  │  ├─ index.html
   │        │  │  │  └─ manifest.json
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ flutter_web_auth_2
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ flutter_web_auth_2
   │        │  │  │        └─ FlutterWebAuth2Plugin.swift
   │        │  │  └─ flutter_web_auth_2.podspec
   │        │  ├─ lib
   │        │  │  ├─ flutter_web_auth_2.dart
   │        │  │  └─ src
   │        │  │     ├─ linows.dart
   │        │  │     ├─ macos.dart
   │        │  │     ├─ options.dart
   │        │  │     ├─ platform
   │        │  │     │  ├─ platform_is.dart
   │        │  │     │  ├─ universal_platform_none.dart
   │        │  │     │  ├─ universal_platform_vm.dart
   │        │  │     │  └─ universal_platform_web.dart
   │        │  │     ├─ server.dart
   │        │  │     ├─ unsupported.dart
   │        │  │     ├─ web.dart
   │        │  │     └─ webview.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ flutter_web_auth_2
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ flutter_web_auth_2
   │        │  │  │        └─ FlutterWebAuth2Plugin.swift
   │        │  │  └─ flutter_web_auth_2.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ screen-android.gif
   │        │  ├─ screen-ios.gif
   │        │  ├─ screen-macos.gif
   │        │  └─ test
   │        │     └─ flutter_web_auth_2_test.dart
   │        ├─ image_picker_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  └─ image_picker_windows.dart
   │        │  ├─ LICENSE
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  └─ test
   │        │     ├─ image_picker_windows_test.dart
   │        │     └─ image_picker_windows_test.mocks.dart
   │        ├─ path_provider_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ integration_test
   │        │  │  │  └─ path_provider_test.dart
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test_driver
   │        │  │  │  └─ integration_test.dart
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ run_loop.cpp
   │        │  │        ├─ run_loop.h
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ path_provider_windows.dart
   │        │  │  └─ src
   │        │  │     ├─ folders.dart
   │        │  │     ├─ folders_stub.dart
   │        │  │     ├─ guid.dart
   │        │  │     ├─ path_provider_windows_real.dart
   │        │  │     ├─ path_provider_windows_stub.dart
   │        │  │     └─ win32_wrappers.dart
   │        │  ├─ LICENSE
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  └─ test
   │        │     ├─ guid_test.dart
   │        │     └─ path_provider_windows_test.dart
   │        ├─ shared_preferences_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ AUTHORS
   │        │  │  ├─ integration_test
   │        │  │  │  └─ shared_preferences_test.dart
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ LICENSE
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test_driver
   │        │  │  │  └─ integration_test.dart
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ run_loop.cpp
   │        │  │        ├─ run_loop.h
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  └─ shared_preferences_windows.dart
   │        │  ├─ LICENSE
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  └─ test
   │        │     ├─ fake_path_provider_windows.dart
   │        │     ├─ legacy_shared_preferences_windows_test.dart
   │        │     └─ shared_preferences_windows_async_test.dart
   │        ├─ url_launcher_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ integration_test
   │        │  │  │  └─ url_launcher_test.dart
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test_driver
   │        │  │  │  └─ integration_test.dart
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ run_loop.cpp
   │        │  │        ├─ run_loop.h
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ src
   │        │  │  │  └─ messages.g.dart
   │        │  │  └─ url_launcher_windows.dart
   │        │  ├─ LICENSE
   │        │  ├─ pigeons
   │        │  │  ├─ copyright.txt
   │        │  │  └─ messages.dart
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  └─ url_launcher_windows_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ include
   │        │     │  └─ url_launcher_windows
   │        │     │     └─ url_launcher_windows.h
   │        │     ├─ messages.g.cpp
   │        │     ├─ messages.g.h
   │        │     ├─ system_apis.cpp
   │        │     ├─ system_apis.h
   │        │     ├─ test
   │        │     │  └─ url_launcher_windows_test.cpp
   │        │     ├─ url_launcher_plugin.cpp
   │        │     ├─ url_launcher_plugin.h
   │        │     └─ url_launcher_windows.cpp
   │        └─ window_to_front
   │           ├─ .metadata
   │           ├─ CHANGELOG.md
   │           ├─ example
   │           │  └─ readme.md
   │           ├─ lib
   │           │  └─ window_to_front.dart
   │           ├─ LICENSE
   │           ├─ linux
   │           │  ├─ CMakeLists.txt
   │           │  ├─ flutter
   │           │  │  └─ ephemeral
   │           │  │     └─ .plugin_symlinks
   │           │  │        └─ window_to_front
   │           │  │           ├─ CHANGELOG.md
   │           │  │           ├─ example
   │           │  │           │  └─ readme.md
   │           │  │           ├─ lib
   │           │  │           │  └─ window_to_front.dart
   │           │  │           ├─ LICENSE
   │           │  │           ├─ linux
   │           │  │           │  ├─ CMakeLists.txt
   │           │  │           │  ├─ flutter
   │           │  │           │  ├─ include
   │           │  │           │  │  └─ window_to_front
   │           │  │           │  │     └─ window_to_front_plugin.h
   │           │  │           │  └─ window_to_front_plugin.cc
   │           │  │           ├─ macos
   │           │  │           │  ├─ Classes
   │           │  │           │  │  └─ WindowToFrontPlugin.swift
   │           │  │           │  ├─ Flutter
   │           │  │           │  └─ window_to_front.podspec
   │           │  │           ├─ pubspec.yaml
   │           │  │           ├─ README.md
   │           │  │           └─ windows
   │           │  │              ├─ CMakeLists.txt
   │           │  │              ├─ flutter
   │           │  │              ├─ include
   │           │  │              │  └─ window_to_front
   │           │  │              │     └─ window_to_front_plugin.h
   │           │  │              └─ window_to_front_plugin.cpp
   │           │  ├─ include
   │           │  │  └─ window_to_front
   │           │  │     └─ window_to_front_plugin.h
   │           │  └─ window_to_front_plugin.cc
   │           ├─ macos
   │           │  ├─ Classes
   │           │  │  └─ WindowToFrontPlugin.swift
   │           │  ├─ Flutter
   │           │  └─ window_to_front.podspec
   │           ├─ pubspec.yaml
   │           ├─ README.md
   │           └─ windows
   │              ├─ CMakeLists.txt
   │              ├─ include
   │              │  └─ window_to_front
   │              │     └─ window_to_front_plugin.h
   │              └─ window_to_front_plugin.cpp
   └─ runner
      ├─ CMakeLists.txt
      ├─ flutter_window.cpp
      ├─ flutter_window.h
      ├─ main.cpp
      ├─ resource.h
      ├─ resources
      │  └─ app_icon.ico
      ├─ runner.exe.manifest
      ├─ Runner.rc
      ├─ utils.cpp
      ├─ utils.h
      ├─ win32_window.cpp
      └─ win32_window.h

```
```
Teamify
├─ .metadata
├─ analysis_options.yaml
├─ android
│  ├─ .kotlin
│  │  └─ sessions
│  ├─ app
│  │  ├─ build.gradle.kts
│  │  ├─ google-services.json
│  │  └─ src
│  │     ├─ debug
│  │     │  └─ AndroidManifest.xml
│  │     ├─ main
│  │     │  ├─ AndroidManifest.xml
│  │     │  ├─ java
│  │     │  │  └─ io
│  │     │  │     └─ flutter
│  │     │  │        └─ plugins
│  │     │  ├─ kotlin
│  │     │  │  └─ com
│  │     │  │     └─ example
│  │     │  │        └─ teamify
│  │     │  │           └─ MainActivity.kt
│  │     │  └─ res
│  │     │     ├─ drawable
│  │     │     │  └─ launch_background.xml
│  │     │     ├─ drawable-v21
│  │     │     │  └─ launch_background.xml
│  │     │     ├─ mipmap-hdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-mdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xxhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xxxhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ values
│  │     │     │  └─ styles.xml
│  │     │     └─ values-night
│  │     │        └─ styles.xml
│  │     └─ profile
│  │        └─ AndroidManifest.xml
│  ├─ build.gradle.kts
│  ├─ gradle
│  │  └─ wrapper
│  │     └─ gradle-wrapper.properties
│  ├─ gradle.properties
│  └─ settings.gradle.kts
├─ assets
│  └─ images
│     ├─ Icons
│     │  ├─ Apple.png
│     │  ├─ Github.png
│     │  ├─ Google.png
│     │  └─ Linkedin.png
│     ├─ logo.png
│     ├─ onboarding1.png
│     ├─ onboarding2.png
│     ├─ onboarding3.png
│     └─ SignUp
│        ├─ 1.png
│        ├─ 2.png
│        └─ 3.png
├─ devtools_options.yaml
├─ ios
│  ├─ Flutter
│  │  ├─ AppFrameworkInfo.plist
│  │  ├─ Debug.xcconfig
│  │  └─ Release.xcconfig
│  ├─ Runner
│  │  ├─ AppDelegate.swift
│  │  ├─ Assets.xcassets
│  │  │  ├─ AppIcon.appiconset
│  │  │  │  ├─ Contents.json
│  │  │  │  ├─ Icon-App-1024x1024@1x.png
│  │  │  │  ├─ Icon-App-20x20@1x.png
│  │  │  │  ├─ Icon-App-20x20@2x.png
│  │  │  │  ├─ Icon-App-20x20@3x.png
│  │  │  │  ├─ Icon-App-29x29@1x.png
│  │  │  │  ├─ Icon-App-29x29@2x.png
│  │  │  │  ├─ Icon-App-29x29@3x.png
│  │  │  │  ├─ Icon-App-40x40@1x.png
│  │  │  │  ├─ Icon-App-40x40@2x.png
│  │  │  │  ├─ Icon-App-40x40@3x.png
│  │  │  │  ├─ Icon-App-60x60@2x.png
│  │  │  │  ├─ Icon-App-60x60@3x.png
│  │  │  │  ├─ Icon-App-76x76@1x.png
│  │  │  │  ├─ Icon-App-76x76@2x.png
│  │  │  │  └─ Icon-App-83.5x83.5@2x.png
│  │  │  └─ LaunchImage.imageset
│  │  │     ├─ Contents.json
│  │  │     ├─ LaunchImage.png
│  │  │     ├─ LaunchImage@2x.png
│  │  │     ├─ LaunchImage@3x.png
│  │  │     └─ README.md
│  │  ├─ Base.lproj
│  │  │  ├─ LaunchScreen.storyboard
│  │  │  └─ Main.storyboard
│  │  ├─ Info.plist
│  │  ├─ Runner-Bridging-Header.h
│  │  └─ SceneDelegate.swift
│  ├─ Runner.xcodeproj
│  │  ├─ project.pbxproj
│  │  ├─ project.xcworkspace
│  │  │  ├─ contents.xcworkspacedata
│  │  │  └─ xcshareddata
│  │  │     ├─ IDEWorkspaceChecks.plist
│  │  │     └─ WorkspaceSettings.xcsettings
│  │  └─ xcshareddata
│  │     └─ xcschemes
│  │        └─ Runner.xcscheme
│  ├─ Runner.xcworkspace
│  │  ├─ contents.xcworkspacedata
│  │  └─ xcshareddata
│  │     ├─ IDEWorkspaceChecks.plist
│  │     └─ WorkspaceSettings.xcsettings
│  └─ RunnerTests
│     └─ RunnerTests.swift
├─ lib
│  ├─ core
│  │  ├─ constants
│  │  │  └─ app_constants.dart
│  │  ├─ di
│  │  │  └─ service_locator.dart
│  │  ├─ errors
│  │  │  ├─ exceptions.dart
│  │  │  └─ failures.dart
│  │  ├─ network
│  │  │  ├─ api_client.dart
│  │  │  ├─ dio_client.dart
│  │  │  ├─ network_info.dart
│  │  │  └─ role_storage.dart
│  │  ├─ routing
│  │  │  └─ app_router.dart
│  │  ├─ storage
│  │  │  └─ token_storage.dart
│  │  ├─ usecase
│  │  │  └─ usecase.dart
│  │  └─ utils
│  │     ├─ helpers.dart
│  │     └─ validators.dart
│  ├─ features
│  │  ├─ auth
│  │  │  ├─ data
│  │  │  │  ├─ datasource
│  │  │  │  │  ├─ auth_local_datasource.dart
│  │  │  │  │  └─ auth_remote_datasource.dart
│  │  │  │  ├─ google_auth_service.dart
│  │  │  │  ├─ models
│  │  │  │  │  └─ user_model.dart
│  │  │  │  └─ repositories
│  │  │  │     └─ auth_repository_impl.dart
│  │  │  ├─ domain
│  │  │  │  ├─ entities
│  │  │  │  │  └─ user.dart
│  │  │  │  ├─ repositories
│  │  │  │  │  └─ auth_repository.dart
│  │  │  │  └─ usecases
│  │  │  │     ├─ AppleLoginUseCase.dart
│  │  │  │     ├─ check_auth_usecase.dart
│  │  │  │     ├─ GitHubLoginUseCase.dart
│  │  │  │     ├─ GoogleLoginUseCase.dart
│  │  │  │     ├─ LinkedinLoginUseCase.dart
│  │  │  │     ├─ login_usecase.dart
│  │  │  │     ├─ logout_usecase.dart
│  │  │  │     └─ register_usecase.dart
│  │  │  └─ presentation
│  │  │     ├─ cubit
│  │  │     │  ├─ auth_cubit.dart
│  │  │     │  ├─ auth_guard_cubit.dart
│  │  │     │  ├─ auth_guard_state.dart
│  │  │     │  ├─ auth_state.dart
│  │  │     │  └─ login_cubit.dart
│  │  │     ├─ provider
│  │  │     │  └─ auth_provider.dart
│  │  │     ├─ screens
│  │  │     │  ├─ choose_role_screen.dart
│  │  │     │  ├─ login_screen.dart
│  │  │     │  ├─ otp_screen.dart
│  │  │     │  ├─ register_screen.dart
│  │  │     │  ├─ reset_password_screen.dart
│  │  │     │  ├─ success_page.dart
│  │  │     │  └─ verify_email_screen.dart
│  │  │     └─ widgets
│  │  │        ├─ auth_button.dart
│  │  │        ├─ field_card.dart
│  │  │        ├─ field_selection_step.dart
│  │  │        ├─ freelancer_details_step.dart
│  │  │        ├─ guest_details_step.dart
│  │  │        ├─ role_selector.dart
│  │  │        ├─ skills_selection_step.dart
│  │  │        ├─ skill_chip.dart
│  │  │        ├─ stat_card.dart
│  │  │        ├─ student_details_step.dart
│  │  │        └─ task_list_tile.dart
│  │  ├─ chat
│  │  │  └─ data
│  │  ├─ home
│  │  │  ├─ 2
│  │  │  │  └─ pla.dart
│  │  │  └─ presentation
│  │  │     ├─ home_screen.dart
│  │  │     └─ widgets
│  │  │        ├─ activity_item.dart
│  │  │        ├─ header_widget.dart
│  │  │        ├─ project_card.dart
│  │  │        ├─ stat_card.dart
│  │  │        └─ task_item.dart
│  │  ├─ onboarding
│  │  │  └─ presentation
│  │  │     └─ screens
│  │  │        └─ onboarding_screen.dart
│  │  ├─ projects
│  │  │  ├─ data
│  │  │  │  ├─ datasources
│  │  │  │  │  └─ project_remote_data_source.dart
│  │  │  │  ├─ models
│  │  │  │  │  └─ project_model.dart
│  │  │  │  └─ repositories
│  │  │  │     └─ project_repository_impl.dart
│  │  │  ├─ domain
│  │  │  │  ├─ entities
│  │  │  │  │  ├─ activity_entity.dart
│  │  │  │  │  ├─ project.dart
│  │  │  │  │  └─ project_entity.dart
│  │  │  │  ├─ repositories
│  │  │  │  │  └─ project_repository.dart
│  │  │  │  └─ usecases
│  │  │  │     └─ get_projects_usecase.dart
│  │  │  └─ presentation
│  │  │     ├─ cubit
│  │  │     │  ├─ activity_cubit.dart
│  │  │     │  ├─ activity_state.dart
│  │  │     │  ├─ projects_cubit.dart
│  │  │     │  └─ projects_state.dart
│  │  │     └─ screens
│  │  │        ├─ projects_screen.dart
│  │  │        └─ project_details_screen.dart
│  │  ├─ splash
│  │  │  └─ presentation
│  │  │     └─ screens
│  │  │        └─ splash_screen.dart
│  │  └─ tasks
│  │     ├─ data
│  │     │  ├─ datasources
│  │     │  │  └─ task_remote_data_source.dart
│  │     │  ├─ models
│  │     │  │  └─ task_model.dart
│  │     │  └─ repositories
│  │     │     └─ task_repository_impl.dart
│  │     ├─ domain
│  │     │  ├─ entities
│  │     │  │  └─ task_entity.dart
│  │     │  ├─ repositories
│  │     │  │  └─ task_repository.dart
│  │     │  └─ usecases
│  │     │     ├─ add_task_usecase.dart
│  │     │     └─ get_tasks_usecase.dart
│  │     └─ presentation
│  │        ├─ cubit
│  │        │  ├─ task_cubit.dart
│  │        │  └─ task_state.dart
│  │        ├─ pages
│  │        │  ├─ add_project_screen.dart
│  │        │  ├─ add_task_screen.dart
│  │        │  ├─ task_details_screen.dart
│  │        │  └─ task_list_screen.dart
│  │        └─ widgets
│  │           ├─ stat_card.dart
│  │           └─ task_list_tile.dart
│  └─ main.dart
├─ linux
│  ├─ CMakeLists.txt
│  ├─ flutter
│  │  ├─ CMakeLists.txt
│  │  └─ ephemeral
│  │     └─ .plugin_symlinks
│  │        ├─ connectivity_plus
│  │        │  ├─ android
│  │        │  │  ├─ build.gradle
│  │        │  │  ├─ gradle
│  │        │  │  │  └─ wrapper
│  │        │  │  │     └─ gradle-wrapper.properties
│  │        │  │  ├─ gradle.properties
│  │        │  │  ├─ settings.gradle
│  │        │  │  └─ src
│  │        │  │     └─ main
│  │        │  │        ├─ AndroidManifest.xml
│  │        │  │        └─ java
│  │        │  │           └─ dev
│  │        │  │              └─ fluttercommunity
│  │        │  │                 └─ plus
│  │        │  │                    └─ connectivity
│  │        │  │                       ├─ Connectivity.java
│  │        │  │                       ├─ ConnectivityBroadcastReceiver.java
│  │        │  │                       ├─ ConnectivityMethodChannelHandler.java
│  │        │  │                       └─ ConnectivityPlugin.java
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ analysis_options.yaml
│  │        │  │  ├─ android
│  │        │  │  │  ├─ app
│  │        │  │  │  │  ├─ build.gradle
│  │        │  │  │  │  └─ src
│  │        │  │  │  │     └─ main
│  │        │  │  │  │        ├─ AndroidManifest.xml
│  │        │  │  │  │        ├─ java
│  │        │  │  │  │        │  └─ io
│  │        │  │  │  │        │     └─ flutter
│  │        │  │  │  │        │        └─ plugins
│  │        │  │  │  │        │           └─ connectivityexample
│  │        │  │  │  │        │              └─ FlutterActivityTest.java
│  │        │  │  │  │        └─ res
│  │        │  │  │  │           ├─ mipmap-hdpi
│  │        │  │  │  │           │  └─ ic_launcher.png
│  │        │  │  │  │           ├─ mipmap-mdpi
│  │        │  │  │  │           │  └─ ic_launcher.png
│  │        │  │  │  │           ├─ mipmap-xhdpi
│  │        │  │  │  │           │  └─ ic_launcher.png
│  │        │  │  │  │           ├─ mipmap-xxhdpi
│  │        │  │  │  │           │  └─ ic_launcher.png
│  │        │  │  │  │           └─ mipmap-xxxhdpi
│  │        │  │  │  │              └─ ic_launcher.png
│  │        │  │  │  ├─ build.gradle
│  │        │  │  │  ├─ gradle
│  │        │  │  │  │  └─ wrapper
│  │        │  │  │  │     └─ gradle-wrapper.properties
│  │        │  │  │  ├─ gradle.properties
│  │        │  │  │  └─ settings.gradle
│  │        │  │  ├─ integration_test
│  │        │  │  │  └─ connectivity_plus_test.dart
│  │        │  │  ├─ ios
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ AppFrameworkInfo.plist
│  │        │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  └─ Release.xcconfig
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  ├─ AppIcon.appiconset
│  │        │  │  │  │  │  │  ├─ Contents.json
│  │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
│  │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
│  │        │  │  │  │  │  └─ LaunchImage.imageset
│  │        │  │  │  │  │     ├─ Contents.json
│  │        │  │  │  │  │     ├─ LaunchImage.png
│  │        │  │  │  │  │     ├─ LaunchImage@2x.png
│  │        │  │  │  │  │     ├─ LaunchImage@3x.png
│  │        │  │  │  │  │     └─ README.md
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  ├─ LaunchScreen.storyboard
│  │        │  │  │  │  │  └─ Main.storyboard
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  └─ Runner-Bridging-Header.h
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  │     ├─ swiftpm
│  │        │  │  │  │  │     │  └─ configuration
│  │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │     ├─ swiftpm
│  │        │  │  │  │     │  └─ configuration
│  │        │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ macos
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │        │  │  │  │  └─ Flutter-Release.xcconfig
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  └─ AppIcon.appiconset
│  │        │  │  │  │  │     ├─ app_icon_1024.png
│  │        │  │  │  │  │     ├─ app_icon_128.png
│  │        │  │  │  │  │     ├─ app_icon_16.png
│  │        │  │  │  │  │     ├─ app_icon_256.png
│  │        │  │  │  │  │     ├─ app_icon_32.png
│  │        │  │  │  │  │     ├─ app_icon_512.png
│  │        │  │  │  │  │     ├─ app_icon_64.png
│  │        │  │  │  │  │     └─ Contents.json
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  └─ MainMenu.xib
│  │        │  │  │  │  ├─ Configs
│  │        │  │  │  │  │  ├─ AppInfo.xcconfig
│  │        │  │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  │  ├─ Release.xcconfig
│  │        │  │  │  │  │  └─ Warnings.xcconfig
│  │        │  │  │  │  ├─ DebugProfile.entitlements
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ MainFlutterWindow.swift
│  │        │  │  │  │  └─ Release.entitlements
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  │     └─ swiftpm
│  │        │  │  │  │  │        └─ configuration
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │     └─ swiftpm
│  │        │  │  │  │        └─ configuration
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  ├─ web
│  │        │  │  │  ├─ favicon.png
│  │        │  │  │  ├─ icons
│  │        │  │  │  │  ├─ Icon-192.png
│  │        │  │  │  │  ├─ Icon-512.png
│  │        │  │  │  │  ├─ Icon-maskable-192.png
│  │        │  │  │  │  └─ Icon-maskable-512.png
│  │        │  │  │  ├─ index.html
│  │        │  │  │  └─ manifest.json
│  │        │  │  └─ windows
│  │        │  │     ├─ CMakeLists.txt
│  │        │  │     ├─ flutter
│  │        │  │     │  └─ CMakeLists.txt
│  │        │  │     └─ runner
│  │        │  │        ├─ CMakeLists.txt
│  │        │  │        ├─ flutter_window.cpp
│  │        │  │        ├─ flutter_window.h
│  │        │  │        ├─ main.cpp
│  │        │  │        ├─ resource.h
│  │        │  │        ├─ resources
│  │        │  │        │  └─ app_icon.ico
│  │        │  │        ├─ runner.exe.manifest
│  │        │  │        ├─ Runner.rc
│  │        │  │        ├─ run_loop.cpp
│  │        │  │        ├─ run_loop.h
│  │        │  │        ├─ utils.cpp
│  │        │  │        ├─ utils.h
│  │        │  │        ├─ win32_window.cpp
│  │        │  │        └─ win32_window.h
│  │        │  ├─ ios
│  │        │  │  ├─ connectivity_plus
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ connectivity_plus
│  │        │  │  │        ├─ ConnectivityPlusPlugin.swift
│  │        │  │  │        ├─ ConnectivityProvider.swift
│  │        │  │  │        ├─ PathMonitorConnectivityProvider.swift
│  │        │  │  │        └─ PrivacyInfo.xcprivacy
│  │        │  │  └─ connectivity_plus.podspec
│  │        │  ├─ lib
│  │        │  │  ├─ connectivity_plus.dart
│  │        │  │  └─ src
│  │        │  │     ├─ connectivity_plus_linux.dart
│  │        │  │     ├─ connectivity_plus_web.dart
│  │        │  │     └─ web
│  │        │  │        └─ dart_html_connectivity_plugin.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ macos
│  │        │  │  ├─ connectivity_plus
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ connectivity_plus
│  │        │  │  │        ├─ ConnectivityPlusPlugin.swift
│  │        │  │  │        ├─ ConnectivityProvider.swift
│  │        │  │  │        ├─ PathMonitorConnectivityProvider.swift
│  │        │  │  │        └─ PrivacyInfo.xcprivacy
│  │        │  │  └─ connectivity_plus.podspec
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  ├─ test
│  │        │  │  ├─ connectivity_plus_linux_test.dart
│  │        │  │  ├─ connectivity_plus_linux_test.mocks.dart
│  │        │  │  └─ connectivity_test.dart
│  │        │  └─ windows
│  │        │     ├─ CMakeLists.txt
│  │        │     ├─ connectivity_plus_plugin.cpp
│  │        │     ├─ include
│  │        │     │  └─ connectivity_plus
│  │        │     │     ├─ connectivity_plus_windows_plugin.h
│  │        │     │     └─ network_manager.h
│  │        │     └─ network_manager.cpp
│  │        ├─ desktop_webview_window
│  │        │  ├─ analysis_options.yaml
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ analysis_options.yaml
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ macos
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │        │  │  │  │  └─ Flutter-Release.xcconfig
│  │        │  │  │  ├─ Podfile
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  └─ AppIcon.appiconset
│  │        │  │  │  │  │     ├─ app_icon_1024.png
│  │        │  │  │  │  │     ├─ app_icon_128.png
│  │        │  │  │  │  │     ├─ app_icon_16.png
│  │        │  │  │  │  │     ├─ app_icon_256.png
│  │        │  │  │  │  │     ├─ app_icon_32.png
│  │        │  │  │  │  │     ├─ app_icon_512.png
│  │        │  │  │  │  │     ├─ app_icon_64.png
│  │        │  │  │  │  │     └─ Contents.json
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  └─ MainMenu.xib
│  │        │  │  │  │  ├─ Configs
│  │        │  │  │  │  │  ├─ AppInfo.xcconfig
│  │        │  │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  │  ├─ Release.xcconfig
│  │        │  │  │  │  │  └─ Warnings.xcconfig
│  │        │  │  │  │  ├─ DebugProfile.entitlements
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ MainFlutterWindow.swift
│  │        │  │  │  │  └─ Release.entitlements
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  └─ Runner.xcworkspace
│  │        │  │  │     ├─ contents.xcworkspacedata
│  │        │  │  │     └─ xcshareddata
│  │        │  │  │        └─ IDEWorkspaceChecks.plist
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  ├─ test
│  │        │  │  │  └─ widget_test.dart
│  │        │  │  ├─ test_web_pages
│  │        │  │  │  ├─ login.html
│  │        │  │  │  └─ test.html
│  │        │  │  └─ windows
│  │        │  │     ├─ CMakeLists.txt
│  │        │  │     ├─ flutter
│  │        │  │     │  └─ CMakeLists.txt
│  │        │  │     └─ runner
│  │        │  │        ├─ CMakeLists.txt
│  │        │  │        ├─ flutter_window.cpp
│  │        │  │        ├─ flutter_window.h
│  │        │  │        ├─ main.cpp
│  │        │  │        ├─ resource.h
│  │        │  │        ├─ resources
│  │        │  │        │  └─ app_icon.ico
│  │        │  │        ├─ runner.exe.manifest
│  │        │  │        ├─ Runner.rc
│  │        │  │        ├─ utils.cpp
│  │        │  │        ├─ utils.h
│  │        │  │        ├─ win32_window.cpp
│  │        │  │        └─ win32_window.h
│  │        │  ├─ lib
│  │        │  │  ├─ desktop_webview_window.dart
│  │        │  │  └─ src
│  │        │  │     ├─ create_configuration.dart
│  │        │  │     ├─ message_channel.dart
│  │        │  │     ├─ title_bar.dart
│  │        │  │     ├─ webview.dart
│  │        │  │     └─ webview_impl.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ linux
│  │        │  │  ├─ CMakeLists.txt
│  │        │  │  ├─ desktop_webview_window_plugin.cc
│  │        │  │  ├─ include
│  │        │  │  │  └─ desktop_webview_window
│  │        │  │  │     └─ desktop_webview_window_plugin.h
│  │        │  │  ├─ message_channel_plugin.cc
│  │        │  │  ├─ message_channel_plugin.h
│  │        │  │  ├─ webview_window.cc
│  │        │  │  └─ webview_window.h
│  │        │  ├─ macos
│  │        │  │  ├─ Classes
│  │        │  │  │  ├─ DesktopWebviewWindowPlugin.swift
│  │        │  │  │  ├─ MessageChannelPlugin.swift
│  │        │  │  │  ├─ WebViewLayoutController.swift
│  │        │  │  │  ├─ WebViewLayoutController.xib
│  │        │  │  │  └─ WebviewWindowController.swift
│  │        │  │  └─ desktop_webview_window.podspec
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  ├─ run_local_test_server.sh
│  │        │  ├─ test
│  │        │  │  └─ desktop_webview_window_test.dart
│  │        │  └─ windows
│  │        │     ├─ CMakeLists.txt
│  │        │     ├─ desktop_webview_window_plugin.cpp
│  │        │     ├─ flutter_view.cc
│  │        │     ├─ flutter_view.h
│  │        │     ├─ include
│  │        │     │  └─ desktop_webview_window
│  │        │     │     └─ desktop_webview_window_plugin.h
│  │        │     ├─ libs
│  │        │     │  └─ x64
│  │        │     │     ├─ WebView2Loader.dll
│  │        │     │     └─ WebView2Loader.dll.lib
│  │        │     ├─ message_channel_plugin.cc
│  │        │     ├─ message_channel_plugin.h
│  │        │     ├─ strconv.h
│  │        │     ├─ utils.cc
│  │        │     ├─ utils.h
│  │        │     ├─ WebView2.h
│  │        │     ├─ WebView2EnvironmentOptions.h
│  │        │     ├─ webview_window.cc
│  │        │     ├─ webview_window.h
│  │        │     ├─ web_view.cc
│  │        │     ├─ web_view.h
│  │        │     ├─ web_view_window_plugin.cc
│  │        │     ├─ web_view_window_plugin.h
│  │        │     └─ wil
│  │        │        ├─ com.h
│  │        │        ├─ common.h
│  │        │        ├─ cppwinrt.h
│  │        │        ├─ filesystem.h
│  │        │        ├─ LICENSE
│  │        │        ├─ registry.h
│  │        │        ├─ resource.h
│  │        │        ├─ result.h
│  │        │        ├─ result_macros.h
│  │        │        ├─ result_originate.h
│  │        │        ├─ rpc_helpers.h
│  │        │        ├─ safecast.h
│  │        │        ├─ stl.h
│  │        │        ├─ ThirdPartyNotices.txt
│  │        │        ├─ token_helpers.h
│  │        │        ├─ win32_helpers.h
│  │        │        ├─ winrt.h
│  │        │        ├─ wistd_config.h
│  │        │        ├─ wistd_functional.h
│  │        │        ├─ wistd_memory.h
│  │        │        ├─ wistd_type_traits.h
│  │        │        └─ wrl.h
│  │        ├─ file_picker
│  │        │  ├─ analysis_options.yaml
│  │        │  ├─ android
│  │        │  │  ├─ build.gradle
│  │        │  │  ├─ gradle
│  │        │  │  │  └─ wrapper
│  │        │  │  │     └─ gradle-wrapper.properties
│  │        │  │  ├─ proguard-rules.pro
│  │        │  │  ├─ settings.gradle
│  │        │  │  └─ src
│  │        │  │     └─ main
│  │        │  │        ├─ AndroidManifest.xml
│  │        │  │        └─ kotlin
│  │        │  │           └─ com
│  │        │  │              └─ mr
│  │        │  │                 └─ flutter
│  │        │  │                    └─ plugin
│  │        │  │                       └─ filepicker
│  │        │  │                          ├─ FileInfo.kt
│  │        │  │                          ├─ FilePickerDelegate.kt
│  │        │  │                          ├─ FilePickerPlugin.kt
│  │        │  │                          ├─ FileUtils.kt
│  │        │  │                          └─ MethodResultWrapper.kt
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ CONTRIBUTING.md
│  │        │  ├─ example
│  │        │  │  ├─ analysis_options.yaml
│  │        │  │  ├─ android
│  │        │  │  │  ├─ app
│  │        │  │  │  │  ├─ build.gradle.kts
│  │        │  │  │  │  └─ src
│  │        │  │  │  │     ├─ debug
│  │        │  │  │  │     │  └─ AndroidManifest.xml
│  │        │  │  │  │     ├─ main
│  │        │  │  │  │     │  ├─ AndroidManifest.xml
│  │        │  │  │  │     │  ├─ kotlin
│  │        │  │  │  │     │  │  └─ com
│  │        │  │  │  │     │  │     └─ mr
│  │        │  │  │  │     │  │        └─ flutter
│  │        │  │  │  │     │  │           └─ plugin
│  │        │  │  │  │     │  │              └─ filepicker
│  │        │  │  │  │     │  │                 └─ file_picker_example
│  │        │  │  │  │     │  │                    └─ MainActivity.kt
│  │        │  │  │  │     │  └─ res
│  │        │  │  │  │     │     ├─ drawable
│  │        │  │  │  │     │     │  └─ launch_background.xml
│  │        │  │  │  │     │     ├─ drawable-v21
│  │        │  │  │  │     │     │  └─ launch_background.xml
│  │        │  │  │  │     │     ├─ mipmap-hdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ mipmap-mdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ mipmap-xhdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ mipmap-xxhdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ mipmap-xxxhdpi
│  │        │  │  │  │     │     │  └─ ic_launcher.png
│  │        │  │  │  │     │     ├─ values
│  │        │  │  │  │     │     │  └─ styles.xml
│  │        │  │  │  │     │     └─ values-night
│  │        │  │  │  │     │        └─ styles.xml
│  │        │  │  │  │     └─ profile
│  │        │  │  │  │        └─ AndroidManifest.xml
│  │        │  │  │  ├─ build.gradle.kts
│  │        │  │  │  ├─ gradle
│  │        │  │  │  │  └─ wrapper
│  │        │  │  │  │     └─ gradle-wrapper.properties
│  │        │  │  │  ├─ gradle.properties
│  │        │  │  │  └─ settings.gradle.kts
│  │        │  │  ├─ ios
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ AppFrameworkInfo.plist
│  │        │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  └─ Release.xcconfig
│  │        │  │  │  ├─ gpxgenerator_path.gpx
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.h
│  │        │  │  │  │  ├─ AppDelegate.m
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  ├─ AppIcon.appiconset
│  │        │  │  │  │  │  │  ├─ Contents.json
│  │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
│  │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
│  │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
│  │        │  │  │  │  │  └─ LaunchImage.imageset
│  │        │  │  │  │  │     ├─ Contents.json
│  │        │  │  │  │  │     ├─ LaunchImage.png
│  │        │  │  │  │  │     ├─ LaunchImage@2x.png
│  │        │  │  │  │  │     ├─ LaunchImage@3x.png
│  │        │  │  │  │  │     └─ README.md
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  ├─ LaunchScreen.storyboard
│  │        │  │  │  │  │  └─ Main.storyboard
│  │        │  │  │  │  ├─ File.swift
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ main.m
│  │        │  │  │  │  └─ Runner-Bridging-Header.h
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  │     ├─ swiftpm
│  │        │  │  │  │  │     │  └─ Package.resolved
│  │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  └─ Runner.xcworkspace
│  │        │  │  │     ├─ contents.xcworkspacedata
│  │        │  │  │     └─ xcshareddata
│  │        │  │  │        ├─ IDEWorkspaceChecks.plist
│  │        │  │  │        ├─ swiftpm
│  │        │  │  │        │  └─ Package.resolved
│  │        │  │  │        └─ WorkspaceSettings.xcsettings
│  │        │  │  ├─ lib
│  │        │  │  │  ├─ main.dart
│  │        │  │  │  └─ src
│  │        │  │  │     └─ file_picker_demo.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ macos
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │        │  │  │  │  └─ Flutter-Release.xcconfig
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  └─ AppIcon.appiconset
│  │        │  │  │  │  │     ├─ app_icon_1024.png
│  │        │  │  │  │  │     ├─ app_icon_128.png
│  │        │  │  │  │  │     ├─ app_icon_16.png
│  │        │  │  │  │  │     ├─ app_icon_256.png
│  │        │  │  │  │  │     ├─ app_icon_32.png
│  │        │  │  │  │  │     ├─ app_icon_512.png
│  │        │  │  │  │  │     ├─ app_icon_64.png
│  │        │  │  │  │  │     └─ Contents.json
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  └─ MainMenu.xib
│  │        │  │  │  │  ├─ Configs
│  │        │  │  │  │  │  ├─ AppInfo.xcconfig
│  │        │  │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  │  ├─ Release.xcconfig
│  │        │  │  │  │  │  └─ Warnings.xcconfig
│  │        │  │  │  │  ├─ DebugProfile.entitlements
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ MainFlutterWindow.swift
│  │        │  │  │  │  └─ Release.entitlements
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  ├─ screenshots
│  │        │  │  │  ├─ example_android.gif
│  │        │  │  │  ├─ example_ios.gif
│  │        │  │  │  ├─ example_linux.gif
│  │        │  │  │  ├─ example_macos.gif
│  │        │  │  │  └─ example_windows.gif
│  │        │  │  ├─ web
│  │        │  │  │  ├─ favicon.png
│  │        │  │  │  ├─ icons
│  │        │  │  │  │  ├─ Icon-192.png
│  │        │  │  │  │  └─ Icon-512.png
│  │        │  │  │  ├─ index.html
│  │        │  │  │  └─ manifest.json
│  │        │  │  └─ windows
│  │        │  │     ├─ CMakeLists.txt
│  │        │  │     ├─ flutter
│  │        │  │     │  └─ CMakeLists.txt
│  │        │  │     └─ runner
│  │        │  │        ├─ CMakeLists.txt
│  │        │  │        ├─ flutter_window.cpp
│  │        │  │        ├─ flutter_window.h
│  │        │  │        ├─ main.cpp
│  │        │  │        ├─ resource.h
│  │        │  │        ├─ resources
│  │        │  │        │  └─ app_icon.ico
│  │        │  │        ├─ runner.exe.manifest
│  │        │  │        ├─ Runner.rc
│  │        │  │        ├─ utils.cpp
│  │        │  │        ├─ utils.h
│  │        │  │        ├─ win32_window.cpp
│  │        │  │        └─ win32_window.h
│  │        │  ├─ ios
│  │        │  │  ├─ file_picker
│  │        │  │  │  ├─ Package.resolved
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ file_picker
│  │        │  │  │        ├─ FileInfo.m
│  │        │  │  │        ├─ FilePickerPlugin.m
│  │        │  │  │        ├─ FilePickerUtils.m
│  │        │  │  │        ├─ ImageUtils.m
│  │        │  │  │        ├─ include
│  │        │  │  │        │  ├─ file_picker
│  │        │  │  │        │  │  ├─ FileInfo.h
│  │        │  │  │        │  │  ├─ FilePickerPlugin.h
│  │        │  │  │        │  │  ├─ FilePickerUtils.h
│  │        │  │  │        │  │  └─ ImageUtils.h
│  │        │  │  │        │  ├─ file_picker-umbrella.h
│  │        │  │  │        │  └─ file_picker.modulemap
│  │        │  │  │        └─ PrivacyInfo.xcprivacy
│  │        │  │  └─ file_picker.podspec
│  │        │  ├─ lib
│  │        │  │  ├─ file_picker.dart
│  │        │  │  ├─ src
│  │        │  │  │  ├─ exceptions.dart
│  │        │  │  │  ├─ file_picker.dart
│  │        │  │  │  ├─ file_picker_io.dart
│  │        │  │  │  ├─ file_picker_macos.dart
│  │        │  │  │  ├─ file_picker_result.dart
│  │        │  │  │  ├─ linux
│  │        │  │  │  │  ├─ file_picker_linux.dart
│  │        │  │  │  │  ├─ filters.dart
│  │        │  │  │  │  ├─ xdp_filechooser.dart
│  │        │  │  │  │  └─ xdp_request.dart
│  │        │  │  │  ├─ platform_file.dart
│  │        │  │  │  ├─ utils.dart
│  │        │  │  │  └─ windows
│  │        │  │  │     ├─ file_picker_windows.dart
│  │        │  │  │     ├─ file_picker_windows_ffi_types.dart
│  │        │  │  │     └─ file_picker_windows_stub.dart
│  │        │  │  └─ _internal
│  │        │  │     └─ file_picker_web.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ macos
│  │        │  │  ├─ file_picker
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ file_picker
│  │        │  │  │        ├─ FilePickerPlugin.swift
│  │        │  │  │        └─ PrivacyInfo.xcprivacy
│  │        │  │  └─ file_picker.podspec
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     ├─ common.dart
│  │        │     ├─ file_picker_macos_test.dart
│  │        │     ├─ file_picker_utils_test.dart
│  │        │     ├─ file_picker_windows_test.dart
│  │        │     ├─ linux
│  │        │     │  └─ xdp_filter_test.dart
│  │        │     └─ test_files
│  │        │        ├─ franz-michael-schneeberger-unsplash.jpg
│  │        │        ├─ test.pdf
│  │        │        └─ test.yml
│  │        ├─ file_selector_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ lib
│  │        │  │  │  ├─ get_directory_page.dart
│  │        │  │  │  ├─ get_multiple_directories_page.dart
│  │        │  │  │  ├─ home_page.dart
│  │        │  │  │  ├─ main.dart
│  │        │  │  │  ├─ open_image_page.dart
│  │        │  │  │  ├─ open_multiple_images_page.dart
│  │        │  │  │  ├─ open_text_page.dart
│  │        │  │  │  └─ save_text_page.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  └─ README.md
│  │        │  ├─ lib
│  │        │  │  ├─ file_selector_linux.dart
│  │        │  │  └─ src
│  │        │  │     └─ messages.g.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ linux
│  │        │  │  ├─ CMakeLists.txt
│  │        │  │  ├─ file_selector_plugin.cc
│  │        │  │  ├─ file_selector_plugin_private.h
│  │        │  │  ├─ include
│  │        │  │  │  └─ file_selector_linux
│  │        │  │  │     └─ file_selector_plugin.h
│  │        │  │  ├─ messages.g.cc
│  │        │  │  ├─ messages.g.h
│  │        │  │  └─ test
│  │        │  │     ├─ file_selector_plugin_test.cc
│  │        │  │     └─ test_main.cc
│  │        │  ├─ pigeons
│  │        │  │  ├─ copyright.txt
│  │        │  │  └─ messages.dart
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     └─ file_selector_linux_test.dart
│  │        ├─ flutter_secure_storage_linux
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ LICENSE
│  │        │  ├─ linux
│  │        │  │  ├─ CMakeLists.txt
│  │        │  │  ├─ flutter_secure_storage_linux_plugin.cc
│  │        │  │  └─ include
│  │        │  │     ├─ FHashTable.hpp
│  │        │  │     ├─ flutter_secure_storage_linux
│  │        │  │     │  └─ flutter_secure_storage_linux_plugin.h
│  │        │  │     ├─ json.hpp
│  │        │  │     └─ Secret.hpp
│  │        │  ├─ pubspec.yaml
│  │        │  └─ README.md
│  │        ├─ flutter_web_auth_2
│  │        │  ├─ analysis_options.yaml
│  │        │  ├─ android
│  │        │  │  ├─ build.gradle
│  │        │  │  ├─ gradle
│  │        │  │  │  └─ wrapper
│  │        │  │  │     └─ gradle-wrapper.properties
│  │        │  │  ├─ gradle.properties
│  │        │  │  ├─ settings.gradle
│  │        │  │  └─ src
│  │        │  │     └─ main
│  │        │  │        ├─ AndroidManifest.xml
│  │        │  │        └─ kotlin
│  │        │  │           └─ com
│  │        │  │              └─ linusu
│  │        │  │                 └─ flutter_web_auth_2
│  │        │  │                    ├─ AuthenticationManagementActivity.kt
│  │        │  │                    ├─ CallbackActivity.kt
│  │        │  │                    ├─ FlutterWebAuth2Plugin.kt
│  │        │  │                    ├─ KeepAliveService.kt
│  │        │  │                    ├─ TabBuilderWrapper.kt
│  │        │  │                    └─ Utils.kt
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ analysis_options.yaml
│  │        │  │  ├─ android
│  │        │  │  │  ├─ app
│  │        │  │  │  │  ├─ build.gradle
│  │        │  │  │  │  └─ src
│  │        │  │  │  │     ├─ debug
│  │        │  │  │  │     │  └─ AndroidManifest.xml
│  │        │  │  │  │     ├─ main
│  │        │  │  │  │     │  ├─ AndroidManifest.xml
│  │        │  │  │  │     │  ├─ java
│  │        │  │  │  │     │  │  └─ io
│  │        │  │  │  │     │  │     └─ flutter
│  │        │  │  │  │     │  │        └─ plugins
│  │        │  │  │  │     │  ├─ kotlin
│  │        │  │  │  │     │  │  └─ com
│  │        │  │  │  │     │  │     ├─ example
│  │        │  │  │  │     │  │     │  └─ flutter_web_auth_example
│  │        │  │  │  │     │  │     └─ linusu
│  │        │  │  │  │     │  │        └─ flutter_web_auth_2_example
│  │        │  │  │  │     │  │           └─ MainActivity.kt
│  │        │  │  │  │     │  └─ res
│  │        │  │  │  │     │     ├─ drawable
│  │        │  │  │  │     │     │  └─ launch_background.xml
│  │        │  │  │  │     │     ├─ drawable-v21
│  │        │  │  │  │     │     ├─ mipmap-hdpi
│  │        │  │  │  │     │     ├─ mipmap-mdpi
│  │        │  │  │  │     │     ├─ mipmap-xhdpi
│  │        │  │  │  │     │     ├─ mipmap-xxhdpi
│  │        │  │  │  │     │     ├─ mipmap-xxxhdpi
│  │        │  │  │  │     │     ├─ values
│  │        │  │  │  │     │     │  └─ styles.xml
│  │        │  │  │  │     │     └─ values-night
│  │        │  │  │  │     └─ profile
│  │        │  │  │  │        └─ AndroidManifest.xml
│  │        │  │  │  ├─ build.gradle
│  │        │  │  │  ├─ gradle
│  │        │  │  │  │  └─ wrapper
│  │        │  │  │  │     └─ gradle-wrapper.properties
│  │        │  │  │  ├─ gradle.properties
│  │        │  │  │  └─ settings.gradle
│  │        │  │  ├─ ios
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ AppFrameworkInfo.plist
│  │        │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  └─ Release.xcconfig
│  │        │  │  │  ├─ Podfile
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  ├─ AppIcon.appiconset
│  │        │  │  │  │  │  │  └─ Contents.json
│  │        │  │  │  │  │  └─ LaunchImage.imageset
│  │        │  │  │  │  │     ├─ Contents.json
│  │        │  │  │  │  │     └─ README.md
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  ├─ LaunchScreen.storyboard
│  │        │  │  │  │  │  └─ Main.storyboard
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  └─ Runner-Bridging-Header.h
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │        │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ macos
│  │        │  │  │  ├─ Flutter
│  │        │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │        │  │  │  │  └─ Flutter-Release.xcconfig
│  │        │  │  │  ├─ Podfile
│  │        │  │  │  ├─ Runner
│  │        │  │  │  │  ├─ AppDelegate.swift
│  │        │  │  │  │  ├─ Assets.xcassets
│  │        │  │  │  │  │  └─ AppIcon.appiconset
│  │        │  │  │  │  │     └─ Contents.json
│  │        │  │  │  │  ├─ Base.lproj
│  │        │  │  │  │  │  └─ MainMenu.xib
│  │        │  │  │  │  ├─ Configs
│  │        │  │  │  │  │  ├─ AppInfo.xcconfig
│  │        │  │  │  │  │  ├─ Debug.xcconfig
│  │        │  │  │  │  │  ├─ Release.xcconfig
│  │        │  │  │  │  │  └─ Warnings.xcconfig
│  │        │  │  │  │  ├─ DebugProfile.entitlements
│  │        │  │  │  │  ├─ Info.plist
│  │        │  │  │  │  ├─ MainFlutterWindow.swift
│  │        │  │  │  │  └─ Release.entitlements
│  │        │  │  │  ├─ Runner.xcodeproj
│  │        │  │  │  │  ├─ project.pbxproj
│  │        │  │  │  │  ├─ project.xcworkspace
│  │        │  │  │  │  │  └─ xcshareddata
│  │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ xcschemes
│  │        │  │  │  │        └─ Runner.xcscheme
│  │        │  │  │  ├─ Runner.xcworkspace
│  │        │  │  │  │  ├─ contents.xcworkspacedata
│  │        │  │  │  │  └─ xcshareddata
│  │        │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │        │  │  │  └─ RunnerTests
│  │        │  │  │     └─ RunnerTests.swift
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  ├─ test
│  │        │  │  │  └─ widget_test.dart
│  │        │  │  ├─ web
│  │        │  │  │  ├─ auth.html
│  │        │  │  │  ├─ icons
│  │        │  │  │  ├─ index.html
│  │        │  │  │  └─ manifest.json
│  │        │  │  └─ windows
│  │        │  │     ├─ CMakeLists.txt
│  │        │  │     ├─ flutter
│  │        │  │     │  └─ CMakeLists.txt
│  │        │  │     └─ runner
│  │        │  │        ├─ CMakeLists.txt
│  │        │  │        ├─ flutter_window.cpp
│  │        │  │        ├─ flutter_window.h
│  │        │  │        ├─ main.cpp
│  │        │  │        ├─ resource.h
│  │        │  │        ├─ resources
│  │        │  │        │  └─ app_icon.ico
│  │        │  │        ├─ runner.exe.manifest
│  │        │  │        ├─ Runner.rc
│  │        │  │        ├─ utils.cpp
│  │        │  │        ├─ utils.h
│  │        │  │        ├─ win32_window.cpp
│  │        │  │        └─ win32_window.h
│  │        │  ├─ ios
│  │        │  │  ├─ flutter_web_auth_2
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ flutter_web_auth_2
│  │        │  │  │        └─ FlutterWebAuth2Plugin.swift
│  │        │  │  └─ flutter_web_auth_2.podspec
│  │        │  ├─ lib
│  │        │  │  ├─ flutter_web_auth_2.dart
│  │        │  │  └─ src
│  │        │  │     ├─ linows.dart
│  │        │  │     ├─ macos.dart
│  │        │  │     ├─ options.dart
│  │        │  │     ├─ platform
│  │        │  │     │  ├─ platform_is.dart
│  │        │  │     │  ├─ universal_platform_none.dart
│  │        │  │     │  ├─ universal_platform_vm.dart
│  │        │  │     │  └─ universal_platform_web.dart
│  │        │  │     ├─ server.dart
│  │        │  │     ├─ unsupported.dart
│  │        │  │     ├─ web.dart
│  │        │  │     └─ webview.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ macos
│  │        │  │  ├─ flutter_web_auth_2
│  │        │  │  │  ├─ Package.swift
│  │        │  │  │  └─ Sources
│  │        │  │  │     └─ flutter_web_auth_2
│  │        │  │  │        └─ FlutterWebAuth2Plugin.swift
│  │        │  │  └─ flutter_web_auth_2.podspec
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  ├─ screen-android.gif
│  │        │  ├─ screen-ios.gif
│  │        │  ├─ screen-macos.gif
│  │        │  └─ test
│  │        │     └─ flutter_web_auth_2_test.dart
│  │        ├─ image_picker_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  └─ README.md
│  │        │  ├─ lib
│  │        │  │  └─ image_picker_linux.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     ├─ image_picker_linux_test.dart
│  │        │     └─ image_picker_linux_test.mocks.dart
│  │        ├─ path_provider_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ integration_test
│  │        │  │  │  └─ path_provider_test.dart
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  └─ test_driver
│  │        │  │     └─ integration_test.dart
│  │        │  ├─ lib
│  │        │  │  ├─ path_provider_linux.dart
│  │        │  │  └─ src
│  │        │  │     ├─ get_application_id.dart
│  │        │  │     ├─ get_application_id_real.dart
│  │        │  │     ├─ get_application_id_stub.dart
│  │        │  │     └─ path_provider_linux.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     ├─ get_application_id_test.dart
│  │        │     └─ path_provider_linux_test.dart
│  │        ├─ shared_preferences_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ integration_test
│  │        │  │  │  └─ shared_preferences_test.dart
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  └─ test_driver
│  │        │  │     └─ integration_test.dart
│  │        │  ├─ lib
│  │        │  │  └─ shared_preferences_linux.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     ├─ fake_path_provider_linux.dart
│  │        │     ├─ legacy_shared_preferences_linux_test.dart
│  │        │     └─ shared_preferences_linux_async_test.dart
│  │        ├─ url_launcher_linux
│  │        │  ├─ AUTHORS
│  │        │  ├─ CHANGELOG.md
│  │        │  ├─ example
│  │        │  │  ├─ integration_test
│  │        │  │  │  └─ url_launcher_test.dart
│  │        │  │  ├─ lib
│  │        │  │  │  └─ main.dart
│  │        │  │  ├─ linux
│  │        │  │  │  ├─ CMakeLists.txt
│  │        │  │  │  ├─ flutter
│  │        │  │  │  │  └─ CMakeLists.txt
│  │        │  │  │  ├─ main.cc
│  │        │  │  │  ├─ my_application.cc
│  │        │  │  │  └─ my_application.h
│  │        │  │  ├─ pubspec.yaml
│  │        │  │  ├─ README.md
│  │        │  │  └─ test_driver
│  │        │  │     └─ integration_test.dart
│  │        │  ├─ lib
│  │        │  │  ├─ src
│  │        │  │  │  └─ messages.g.dart
│  │        │  │  └─ url_launcher_linux.dart
│  │        │  ├─ LICENSE
│  │        │  ├─ linux
│  │        │  │  ├─ CMakeLists.txt
│  │        │  │  ├─ include
│  │        │  │  │  └─ url_launcher_linux
│  │        │  │  │     └─ url_launcher_plugin.h
│  │        │  │  ├─ messages.g.cc
│  │        │  │  ├─ messages.g.h
│  │        │  │  ├─ test
│  │        │  │  │  └─ url_launcher_linux_test.cc
│  │        │  │  ├─ url_launcher_plugin.cc
│  │        │  │  └─ url_launcher_plugin_private.h
│  │        │  ├─ pigeons
│  │        │  │  ├─ copyright.txt
│  │        │  │  └─ messages.dart
│  │        │  ├─ pubspec.yaml
│  │        │  ├─ README.md
│  │        │  └─ test
│  │        │     └─ url_launcher_linux_test.dart
│  │        └─ window_to_front
│  │           ├─ .metadata
│  │           ├─ CHANGELOG.md
│  │           ├─ example
│  │           │  └─ readme.md
│  │           ├─ lib
│  │           │  └─ window_to_front.dart
│  │           ├─ LICENSE
│  │           ├─ linux
│  │           │  ├─ CMakeLists.txt
│  │           │  ├─ flutter
│  │           │  │  └─ ephemeral
│  │           │  │     └─ .plugin_symlinks
│  │           │  │        └─ window_to_front
│  │           │  │           ├─ CHANGELOG.md
│  │           │  │           ├─ example
│  │           │  │           │  └─ readme.md
│  │           │  │           ├─ lib
│  │           │  │           │  └─ window_to_front.dart
│  │           │  │           ├─ LICENSE
│  │           │  │           ├─ linux
│  │           │  │           │  ├─ CMakeLists.txt
│  │           │  │           │  ├─ flutter
│  │           │  │           │  ├─ include
│  │           │  │           │  │  └─ window_to_front
│  │           │  │           │  │     └─ window_to_front_plugin.h
│  │           │  │           │  └─ window_to_front_plugin.cc
│  │           │  │           ├─ macos
│  │           │  │           │  ├─ Classes
│  │           │  │           │  │  └─ WindowToFrontPlugin.swift
│  │           │  │           │  ├─ Flutter
│  │           │  │           │  └─ window_to_front.podspec
│  │           │  │           ├─ pubspec.yaml
│  │           │  │           ├─ README.md
│  │           │  │           └─ windows
│  │           │  │              ├─ CMakeLists.txt
│  │           │  │              ├─ flutter
│  │           │  │              ├─ include
│  │           │  │              │  └─ window_to_front
│  │           │  │              │     └─ window_to_front_plugin.h
│  │           │  │              └─ window_to_front_plugin.cpp
│  │           │  ├─ include
│  │           │  │  └─ window_to_front
│  │           │  │     └─ window_to_front_plugin.h
│  │           │  └─ window_to_front_plugin.cc
│  │           ├─ macos
│  │           │  ├─ Classes
│  │           │  │  └─ WindowToFrontPlugin.swift
│  │           │  ├─ Flutter
│  │           │  └─ window_to_front.podspec
│  │           ├─ pubspec.yaml
│  │           ├─ README.md
│  │           └─ windows
│  │              ├─ CMakeLists.txt
│  │              ├─ include
│  │              │  └─ window_to_front
│  │              │     └─ window_to_front_plugin.h
│  │              └─ window_to_front_plugin.cpp
│  └─ runner
│     ├─ CMakeLists.txt
│     ├─ main.cc
│     ├─ my_application.cc
│     └─ my_application.h
├─ macos
│  ├─ Flutter
│  │  ├─ Flutter-Debug.xcconfig
│  │  └─ Flutter-Release.xcconfig
│  ├─ Runner
│  │  ├─ AppDelegate.swift
│  │  ├─ Assets.xcassets
│  │  │  └─ AppIcon.appiconset
│  │  │     ├─ app_icon_1024.png
│  │  │     ├─ app_icon_128.png
│  │  │     ├─ app_icon_16.png
│  │  │     ├─ app_icon_256.png
│  │  │     ├─ app_icon_32.png
│  │  │     ├─ app_icon_512.png
│  │  │     ├─ app_icon_64.png
│  │  │     └─ Contents.json
│  │  ├─ Base.lproj
│  │  │  └─ MainMenu.xib
│  │  ├─ Configs
│  │  │  ├─ AppInfo.xcconfig
│  │  │  ├─ Debug.xcconfig
│  │  │  ├─ Release.xcconfig
│  │  │  └─ Warnings.xcconfig
│  │  ├─ DebugProfile.entitlements
│  │  ├─ Info.plist
│  │  ├─ MainFlutterWindow.swift
│  │  └─ Release.entitlements
│  ├─ Runner.xcodeproj
│  │  ├─ project.pbxproj
│  │  ├─ project.xcworkspace
│  │  │  └─ xcshareddata
│  │  │     └─ IDEWorkspaceChecks.plist
│  │  └─ xcshareddata
│  │     └─ xcschemes
│  │        └─ Runner.xcscheme
│  ├─ Runner.xcworkspace
│  │  ├─ contents.xcworkspacedata
│  │  └─ xcshareddata
│  │     └─ IDEWorkspaceChecks.plist
│  └─ RunnerTests
│     └─ RunnerTests.swift
├─ pubspec.yaml
├─ README.md
├─ test
│  └─ widget_test.dart
├─ web
│  ├─ favicon.png
│  ├─ icons
│  │  ├─ Icon-192.png
│  │  ├─ Icon-512.png
│  │  ├─ Icon-maskable-192.png
│  │  └─ Icon-maskable-512.png
│  ├─ index.html
│  └─ manifest.json
└─ windows
   ├─ CMakeLists.txt
   ├─ flutter
   │  ├─ CMakeLists.txt
   │  └─ ephemeral
   │     └─ .plugin_symlinks
   │        ├─ connectivity_plus
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ gradle.properties
   │        │  │  ├─ settings.gradle
   │        │  │  └─ src
   │        │  │     └─ main
   │        │  │        ├─ AndroidManifest.xml
   │        │  │        └─ java
   │        │  │           └─ dev
   │        │  │              └─ fluttercommunity
   │        │  │                 └─ plus
   │        │  │                    └─ connectivity
   │        │  │                       ├─ Connectivity.java
   │        │  │                       ├─ ConnectivityBroadcastReceiver.java
   │        │  │                       ├─ ConnectivityMethodChannelHandler.java
   │        │  │                       └─ ConnectivityPlugin.java
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle
   │        │  │  │  │  └─ src
   │        │  │  │  │     └─ main
   │        │  │  │  │        ├─ AndroidManifest.xml
   │        │  │  │  │        ├─ java
   │        │  │  │  │        │  └─ io
   │        │  │  │  │        │     └─ flutter
   │        │  │  │  │        │        └─ plugins
   │        │  │  │  │        │           └─ connectivityexample
   │        │  │  │  │        │              └─ FlutterActivityTest.java
   │        │  │  │  │        └─ res
   │        │  │  │  │           ├─ mipmap-hdpi
   │        │  │  │  │           │  └─ ic_launcher.png
   │        │  │  │  │           ├─ mipmap-mdpi
   │        │  │  │  │           │  └─ ic_launcher.png
   │        │  │  │  │           ├─ mipmap-xhdpi
   │        │  │  │  │           │  └─ ic_launcher.png
   │        │  │  │  │           ├─ mipmap-xxhdpi
   │        │  │  │  │           │  └─ ic_launcher.png
   │        │  │  │  │           └─ mipmap-xxxhdpi
   │        │  │  │  │              └─ ic_launcher.png
   │        │  │  │  ├─ build.gradle
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle
   │        │  │  ├─ integration_test
   │        │  │  │  └─ connectivity_plus_test.dart
   │        │  │  ├─ ios
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  ├─ Contents.json
   │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     ├─ LaunchImage.png
   │        │  │  │  │  │     ├─ LaunchImage@2x.png
   │        │  │  │  │  │     ├─ LaunchImage@3x.png
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  └─ Runner-Bridging-Header.h
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     ├─ swiftpm
   │        │  │  │  │  │     │  └─ configuration
   │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │     ├─ swiftpm
   │        │  │  │  │     │  └─ configuration
   │        │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ linux
   │        │  │  │  ├─ CMakeLists.txt
   │        │  │  │  ├─ flutter
   │        │  │  │  │  └─ CMakeLists.txt
   │        │  │  │  ├─ main.cc
   │        │  │  │  ├─ my_application.cc
   │        │  │  │  └─ my_application.h
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     └─ swiftpm
   │        │  │  │  │  │        └─ configuration
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │     └─ swiftpm
   │        │  │  │  │        └─ configuration
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ web
   │        │  │  │  ├─ favicon.png
   │        │  │  │  ├─ icons
   │        │  │  │  │  ├─ Icon-192.png
   │        │  │  │  │  ├─ Icon-512.png
   │        │  │  │  │  ├─ Icon-maskable-192.png
   │        │  │  │  │  └─ Icon-maskable-512.png
   │        │  │  │  ├─ index.html
   │        │  │  │  └─ manifest.json
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ run_loop.cpp
   │        │  │        ├─ run_loop.h
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ connectivity_plus
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ connectivity_plus
   │        │  │  │        ├─ ConnectivityPlusPlugin.swift
   │        │  │  │        ├─ ConnectivityProvider.swift
   │        │  │  │        ├─ PathMonitorConnectivityProvider.swift
   │        │  │  │        └─ PrivacyInfo.xcprivacy
   │        │  │  └─ connectivity_plus.podspec
   │        │  ├─ lib
   │        │  │  ├─ connectivity_plus.dart
   │        │  │  └─ src
   │        │  │     ├─ connectivity_plus_linux.dart
   │        │  │     ├─ connectivity_plus_web.dart
   │        │  │     └─ web
   │        │  │        └─ dart_html_connectivity_plugin.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ connectivity_plus
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ connectivity_plus
   │        │  │  │        ├─ ConnectivityPlusPlugin.swift
   │        │  │  │        ├─ ConnectivityProvider.swift
   │        │  │  │        ├─ PathMonitorConnectivityProvider.swift
   │        │  │  │        └─ PrivacyInfo.xcprivacy
   │        │  │  └─ connectivity_plus.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  ├─ connectivity_plus_linux_test.dart
   │        │  │  ├─ connectivity_plus_linux_test.mocks.dart
   │        │  │  └─ connectivity_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ connectivity_plus_plugin.cpp
   │        │     ├─ include
   │        │     │  └─ connectivity_plus
   │        │     │     ├─ connectivity_plus_windows_plugin.h
   │        │     │     └─ network_manager.h
   │        │     └─ network_manager.cpp
   │        ├─ desktop_webview_window
   │        │  ├─ analysis_options.yaml
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ linux
   │        │  │  │  ├─ CMakeLists.txt
   │        │  │  │  ├─ flutter
   │        │  │  │  │  └─ CMakeLists.txt
   │        │  │  │  ├─ main.cc
   │        │  │  │  ├─ my_application.cc
   │        │  │  │  └─ my_application.h
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        └─ IDEWorkspaceChecks.plist
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test
   │        │  │  │  └─ widget_test.dart
   │        │  │  ├─ test_web_pages
   │        │  │  │  ├─ login.html
   │        │  │  │  └─ test.html
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ desktop_webview_window.dart
   │        │  │  └─ src
   │        │  │     ├─ create_configuration.dart
   │        │  │     ├─ message_channel.dart
   │        │  │     ├─ title_bar.dart
   │        │  │     ├─ webview.dart
   │        │  │     └─ webview_impl.dart
   │        │  ├─ LICENSE
   │        │  ├─ linux
   │        │  │  ├─ CMakeLists.txt
   │        │  │  ├─ desktop_webview_window_plugin.cc
   │        │  │  ├─ include
   │        │  │  │  └─ desktop_webview_window
   │        │  │  │     └─ desktop_webview_window_plugin.h
   │        │  │  ├─ message_channel_plugin.cc
   │        │  │  ├─ message_channel_plugin.h
   │        │  │  ├─ webview_window.cc
   │        │  │  └─ webview_window.h
   │        │  ├─ macos
   │        │  │  ├─ Classes
   │        │  │  │  ├─ DesktopWebviewWindowPlugin.swift
   │        │  │  │  ├─ MessageChannelPlugin.swift
   │        │  │  │  ├─ WebViewLayoutController.swift
   │        │  │  │  ├─ WebViewLayoutController.xib
   │        │  │  │  └─ WebviewWindowController.swift
   │        │  │  └─ desktop_webview_window.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ run_local_test_server.sh
   │        │  ├─ test
   │        │  │  └─ desktop_webview_window_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ desktop_webview_window_plugin.cpp
   │        │     ├─ flutter_view.cc
   │        │     ├─ flutter_view.h
   │        │     ├─ include
   │        │     │  └─ desktop_webview_window
   │        │     │     └─ desktop_webview_window_plugin.h
   │        │     ├─ libs
   │        │     │  └─ x64
   │        │     │     ├─ WebView2Loader.dll
   │        │     │     └─ WebView2Loader.dll.lib
   │        │     ├─ message_channel_plugin.cc
   │        │     ├─ message_channel_plugin.h
   │        │     ├─ strconv.h
   │        │     ├─ utils.cc
   │        │     ├─ utils.h
   │        │     ├─ WebView2.h
   │        │     ├─ WebView2EnvironmentOptions.h
   │        │     ├─ webview_window.cc
   │        │     ├─ webview_window.h
   │        │     ├─ web_view.cc
   │        │     ├─ web_view.h
   │        │     ├─ web_view_window_plugin.cc
   │        │     ├─ web_view_window_plugin.h
   │        │     └─ wil
   │        │        ├─ com.h
   │        │        ├─ common.h
   │        │        ├─ cppwinrt.h
   │        │        ├─ filesystem.h
   │        │        ├─ LICENSE
   │        │        ├─ registry.h
   │        │        ├─ resource.h
   │        │        ├─ result.h
   │        │        ├─ result_macros.h
   │        │        ├─ result_originate.h
   │        │        ├─ rpc_helpers.h
   │        │        ├─ safecast.h
   │        │        ├─ stl.h
   │        │        ├─ ThirdPartyNotices.txt
   │        │        ├─ token_helpers.h
   │        │        ├─ win32_helpers.h
   │        │        ├─ winrt.h
   │        │        ├─ wistd_config.h
   │        │        ├─ wistd_functional.h
   │        │        ├─ wistd_memory.h
   │        │        ├─ wistd_type_traits.h
   │        │        └─ wrl.h
   │        ├─ file_picker
   │        │  ├─ analysis_options.yaml
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ proguard-rules.pro
   │        │  │  ├─ settings.gradle
   │        │  │  └─ src
   │        │  │     └─ main
   │        │  │        ├─ AndroidManifest.xml
   │        │  │        └─ kotlin
   │        │  │           └─ com
   │        │  │              └─ mr
   │        │  │                 └─ flutter
   │        │  │                    └─ plugin
   │        │  │                       └─ filepicker
   │        │  │                          ├─ FileInfo.kt
   │        │  │                          ├─ FilePickerDelegate.kt
   │        │  │                          ├─ FilePickerPlugin.kt
   │        │  │                          ├─ FileUtils.kt
   │        │  │                          └─ MethodResultWrapper.kt
   │        │  ├─ CHANGELOG.md
   │        │  ├─ CONTRIBUTING.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle.kts
   │        │  │  │  │  └─ src
   │        │  │  │  │     ├─ debug
   │        │  │  │  │     │  └─ AndroidManifest.xml
   │        │  │  │  │     ├─ main
   │        │  │  │  │     │  ├─ AndroidManifest.xml
   │        │  │  │  │     │  ├─ kotlin
   │        │  │  │  │     │  │  └─ com
   │        │  │  │  │     │  │     └─ mr
   │        │  │  │  │     │  │        └─ flutter
   │        │  │  │  │     │  │           └─ plugin
   │        │  │  │  │     │  │              └─ filepicker
   │        │  │  │  │     │  │                 └─ file_picker_example
   │        │  │  │  │     │  │                    └─ MainActivity.kt
   │        │  │  │  │     │  └─ res
   │        │  │  │  │     │     ├─ drawable
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ drawable-v21
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ mipmap-hdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-mdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ values
   │        │  │  │  │     │     │  └─ styles.xml
   │        │  │  │  │     │     └─ values-night
   │        │  │  │  │     │        └─ styles.xml
   │        │  │  │  │     └─ profile
   │        │  │  │  │        └─ AndroidManifest.xml
   │        │  │  │  ├─ build.gradle.kts
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle.kts
   │        │  │  ├─ ios
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ gpxgenerator_path.gpx
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.h
   │        │  │  │  │  ├─ AppDelegate.m
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  ├─ Contents.json
   │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     ├─ LaunchImage.png
   │        │  │  │  │  │     ├─ LaunchImage@2x.png
   │        │  │  │  │  │     ├─ LaunchImage@3x.png
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ File.swift
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ main.m
   │        │  │  │  │  └─ Runner-Bridging-Header.h
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     ├─ swiftpm
   │        │  │  │  │  │     │  └─ Package.resolved
   │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        ├─ IDEWorkspaceChecks.plist
   │        │  │  │        ├─ swiftpm
   │        │  │  │        │  └─ Package.resolved
   │        │  │  │        └─ WorkspaceSettings.xcsettings
   │        │  │  ├─ lib
   │        │  │  │  ├─ main.dart
   │        │  │  │  └─ src
   │        │  │  │     └─ file_picker_demo.dart
   │        │  │  ├─ linux
   │        │  │  │  ├─ CMakeLists.txt
   │        │  │  │  ├─ flutter
   │        │  │  │  │  └─ CMakeLists.txt
   │        │  │  │  ├─ main.cc
   │        │  │  │  ├─ my_application.cc
   │        │  │  │  └─ my_application.h
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ screenshots
   │        │  │  │  ├─ example_android.gif
   │        │  │  │  ├─ example_ios.gif
   │        │  │  │  ├─ example_linux.gif
   │        │  │  │  ├─ example_macos.gif
   │        │  │  │  └─ example_windows.gif
   │        │  │  ├─ web
   │        │  │  │  ├─ favicon.png
   │        │  │  │  ├─ icons
   │        │  │  │  │  ├─ Icon-192.png
   │        │  │  │  │  └─ Icon-512.png
   │        │  │  │  ├─ index.html
   │        │  │  │  └─ manifest.json
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ file_picker
   │        │  │  │  ├─ Package.resolved
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ file_picker
   │        │  │  │        ├─ FileInfo.m
   │        │  │  │        ├─ FilePickerPlugin.m
   │        │  │  │        ├─ FilePickerUtils.m
   │        │  │  │        ├─ ImageUtils.m
   │        │  │  │        ├─ include
   │        │  │  │        │  ├─ file_picker
   │        │  │  │        │  │  ├─ FileInfo.h
   │        │  │  │        │  │  ├─ FilePickerPlugin.h
   │        │  │  │        │  │  ├─ FilePickerUtils.h
   │        │  │  │        │  │  └─ ImageUtils.h
   │        │  │  │        │  ├─ file_picker-umbrella.h
   │        │  │  │        │  └─ file_picker.modulemap
   │        │  │  │        └─ PrivacyInfo.xcprivacy
   │        │  │  └─ file_picker.podspec
   │        │  ├─ lib
   │        │  │  ├─ file_picker.dart
   │        │  │  ├─ src
   │        │  │  │  ├─ exceptions.dart
   │        │  │  │  ├─ file_picker.dart
   │        │  │  │  ├─ file_picker_io.dart
   │        │  │  │  ├─ file_picker_macos.dart
   │        │  │  │  ├─ file_picker_result.dart
   │        │  │  │  ├─ linux
   │        │  │  │  │  ├─ file_picker_linux.dart
   │        │  │  │  │  ├─ filters.dart
   │        │  │  │  │  ├─ xdp_filechooser.dart
   │        │  │  │  │  └─ xdp_request.dart
   │        │  │  │  ├─ platform_file.dart
   │        │  │  │  ├─ utils.dart
   │        │  │  │  └─ windows
   │        │  │  │     ├─ file_picker_windows.dart
   │        │  │  │     ├─ file_picker_windows_ffi_types.dart
   │        │  │  │     └─ file_picker_windows_stub.dart
   │        │  │  └─ _internal
   │        │  │     └─ file_picker_web.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ file_picker
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ file_picker
   │        │  │  │        ├─ FilePickerPlugin.swift
   │        │  │  │        └─ PrivacyInfo.xcprivacy
   │        │  │  └─ file_picker.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  └─ test
   │        │     ├─ common.dart
   │        │     ├─ file_picker_macos_test.dart
   │        │     ├─ file_picker_utils_test.dart
   │        │     ├─ file_picker_windows_test.dart
   │        │     ├─ linux
   │        │     │  └─ xdp_filter_test.dart
   │        │     └─ test_files
   │        │        ├─ franz-michael-schneeberger-unsplash.jpg
   │        │        ├─ test.pdf
   │        │        └─ test.yml
   │        ├─ file_selector_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ lib
   │        │  │  │  ├─ get_directory_page.dart
   │        │  │  │  ├─ get_multiple_directories_page.dart
   │        │  │  │  ├─ home_page.dart
   │        │  │  │  ├─ main.dart
   │        │  │  │  ├─ open_image_page.dart
   │        │  │  │  ├─ open_multiple_images_page.dart
   │        │  │  │  ├─ open_text_page.dart
   │        │  │  │  └─ save_text_page.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ file_selector_windows.dart
   │        │  │  └─ src
   │        │  │     └─ messages.g.dart
   │        │  ├─ LICENSE
   │        │  ├─ pigeons
   │        │  │  ├─ copyright.txt
   │        │  │  └─ messages.dart
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  └─ file_selector_windows_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ file_dialog_controller.cpp
   │        │     ├─ file_dialog_controller.h
   │        │     ├─ file_selector_plugin.cpp
   │        │     ├─ file_selector_plugin.h
   │        │     ├─ file_selector_windows.cpp
   │        │     ├─ include
   │        │     │  └─ file_selector_windows
   │        │     │     └─ file_selector_windows.h
   │        │     ├─ messages.g.cpp
   │        │     ├─ messages.g.h
   │        │     ├─ string_utils.cpp
   │        │     ├─ string_utils.h
   │        │     └─ test
   │        │        ├─ file_selector_plugin_test.cpp
   │        │        ├─ test_file_dialog_controller.cpp
   │        │        ├─ test_file_dialog_controller.h
   │        │        ├─ test_main.cpp
   │        │        ├─ test_utils.cpp
   │        │        └─ test_utils.h
   │        ├─ firebase_auth
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ gradle.properties
   │        │  │  ├─ settings.gradle
   │        │  │  ├─ src
   │        │  │  │  └─ main
   │        │  │  │     ├─ AndroidManifest.xml
   │        │  │  │     └─ java
   │        │  │  │        └─ io
   │        │  │  │           └─ flutter
   │        │  │  │              └─ plugins
   │        │  │  │                 └─ firebase
   │        │  │  │                    └─ auth
   │        │  │  │                       ├─ AuthStateChannelStreamHandler.java
   │        │  │  │                       ├─ Constants.java
   │        │  │  │                       ├─ FlutterFirebaseAuthPlugin.java
   │        │  │  │                       ├─ FlutterFirebaseAuthPluginException.java
   │        │  │  │                       ├─ FlutterFirebaseAuthRegistrar.java
   │        │  │  │                       ├─ FlutterFirebaseAuthUser.java
   │        │  │  │                       ├─ FlutterFirebaseMultiFactor.java
   │        │  │  │                       ├─ FlutterFirebaseTotpMultiFactor.java
   │        │  │  │                       ├─ FlutterFirebaseTotpSecret.java
   │        │  │  │                       ├─ GeneratedAndroidFirebaseAuth.java
   │        │  │  │                       ├─ IdTokenChannelStreamHandler.java
   │        │  │  │                       ├─ PhoneNumberVerificationStreamHandler.java
   │        │  │  │                       └─ PigeonParser.java
   │        │  │  └─ user-agent.gradle
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle
   │        │  │  │  │  ├─ google-services.json
   │        │  │  │  │  └─ src
   │        │  │  │  │     ├─ debug
   │        │  │  │  │     │  └─ AndroidManifest.xml
   │        │  │  │  │     ├─ main
   │        │  │  │  │     │  ├─ AndroidManifest.xml
   │        │  │  │  │     │  ├─ kotlin
   │        │  │  │  │     │  │  └─ io
   │        │  │  │  │     │  │     └─ flutter
   │        │  │  │  │     │  │        └─ plugins
   │        │  │  │  │     │  │           └─ firebase
   │        │  │  │  │     │  │              └─ example
   │        │  │  │  │     │  │                 └─ MainActivity.kt
   │        │  │  │  │     │  └─ res
   │        │  │  │  │     │     ├─ drawable
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ drawable-v21
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ mipmap-hdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-mdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ values
   │        │  │  │  │     │     │  ├─ strings.xml
   │        │  │  │  │     │     │  └─ styles.xml
   │        │  │  │  │     │     └─ values-night
   │        │  │  │  │     │        └─ styles.xml
   │        │  │  │  │     └─ profile
   │        │  │  │  │        └─ AndroidManifest.xml
   │        │  │  │  ├─ build.gradle
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle
   │        │  │  ├─ ios
   │        │  │  │  ├─ firebase_app_id_file.json
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.h
   │        │  │  │  │  ├─ AppDelegate.m
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  ├─ Contents.json
   │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     ├─ LaunchImage.png
   │        │  │  │  │  │     ├─ LaunchImage@2x.png
   │        │  │  │  │  │     ├─ LaunchImage@3x.png
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ GoogleService-Info.plist
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ main.m
   │        │  │  │  │  ├─ Runner-Bridging-Header.h
   │        │  │  │  │  └─ Runner.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        ├─ IDEWorkspaceChecks.plist
   │        │  │  │        └─ WorkspaceSettings.xcsettings
   │        │  │  ├─ lib
   │        │  │  │  ├─ auth.dart
   │        │  │  │  ├─ firebase_options.dart
   │        │  │  │  ├─ main.dart
   │        │  │  │  └─ profile.dart
   │        │  │  ├─ macos
   │        │  │  │  ├─ firebase_app_id_file.json
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ GoogleService-Info.plist
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        ├─ IDEWorkspaceChecks.plist
   │        │  │  │        └─ WorkspaceSettings.xcsettings
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ web
   │        │  │  │  ├─ favicon.png
   │        │  │  │  ├─ index.html
   │        │  │  │  └─ manifest.json
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ Classes
   │        │  │  │  ├─ firebase_auth_messages.g.m
   │        │  │  │  ├─ FLTAuthStateChannelStreamHandler.m
   │        │  │  │  ├─ FLTFirebaseAuthPlugin.m
   │        │  │  │  ├─ FLTIdTokenChannelStreamHandler.m
   │        │  │  │  ├─ FLTPhoneNumberVerificationStreamHandler.m
   │        │  │  │  ├─ PigeonParser.m
   │        │  │  │  ├─ Private
   │        │  │  │  │  ├─ FLTAuthStateChannelStreamHandler.h
   │        │  │  │  │  ├─ FLTIdTokenChannelStreamHandler.h
   │        │  │  │  │  ├─ FLTPhoneNumberVerificationStreamHandler.h
   │        │  │  │  │  └─ PigeonParser.h
   │        │  │  │  └─ Public
   │        │  │  │     ├─ CustomPigeonHeader.h
   │        │  │  │     ├─ firebase_auth_messages.g.h
   │        │  │  │     └─ FLTFirebaseAuthPlugin.h
   │        │  │  └─ firebase_auth.podspec
   │        │  ├─ lib
   │        │  │  ├─ firebase_auth.dart
   │        │  │  └─ src
   │        │  │     ├─ confirmation_result.dart
   │        │  │     ├─ firebase_auth.dart
   │        │  │     ├─ multi_factor.dart
   │        │  │     ├─ recaptcha_verifier.dart
   │        │  │     ├─ user.dart
   │        │  │     └─ user_credential.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ Classes
   │        │  │  │  ├─ firebase_auth_messages.g.m
   │        │  │  │  ├─ FLTAuthStateChannelStreamHandler.m
   │        │  │  │  ├─ FLTFirebaseAuthPlugin.m
   │        │  │  │  ├─ FLTIdTokenChannelStreamHandler.m
   │        │  │  │  ├─ FLTPhoneNumberVerificationStreamHandler.m
   │        │  │  │  ├─ PigeonParser.m
   │        │  │  │  ├─ Private
   │        │  │  │  │  ├─ FLTAuthStateChannelStreamHandler.h
   │        │  │  │  │  ├─ FLTIdTokenChannelStreamHandler.h
   │        │  │  │  │  ├─ FLTPhoneNumberVerificationStreamHandler.h
   │        │  │  │  │  └─ PigeonParser.h
   │        │  │  │  └─ Public
   │        │  │  │     ├─ CustomPigeonHeader.h
   │        │  │  │     ├─ firebase_auth_messages.g.h
   │        │  │  │     └─ FLTFirebaseAuthPlugin.h
   │        │  │  └─ firebase_auth.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  ├─ firebase_auth_test.dart
   │        │  │  ├─ mock.dart
   │        │  │  └─ user_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ firebase_auth_plugin.cpp
   │        │     ├─ firebase_auth_plugin.h
   │        │     ├─ firebase_auth_plugin_c_api.cpp
   │        │     ├─ include
   │        │     │  └─ firebase_auth
   │        │     │     └─ firebase_auth_plugin_c_api.h
   │        │     ├─ messages.g.cpp
   │        │     ├─ messages.g.h
   │        │     └─ test
   │        │        └─ firebase_auth_plugin_test.cpp
   │        ├─ firebase_core
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ gradle.properties
   │        │  │  ├─ settings.gradle
   │        │  │  ├─ src
   │        │  │  │  └─ main
   │        │  │  │     ├─ AndroidManifest.xml
   │        │  │  │     └─ java
   │        │  │  │        └─ io
   │        │  │  │           └─ flutter
   │        │  │  │              └─ plugins
   │        │  │  │                 └─ firebase
   │        │  │  │                    └─ core
   │        │  │  │                       ├─ FlutterFirebaseCorePlugin.java
   │        │  │  │                       ├─ FlutterFirebaseCoreRegistrar.java
   │        │  │  │                       ├─ FlutterFirebasePlugin.java
   │        │  │  │                       ├─ FlutterFirebasePluginRegistry.java
   │        │  │  │                       └─ GeneratedAndroidFirebaseCore.java
   │        │  │  └─ user-agent.gradle
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle
   │        │  │  │  │  └─ src
   │        │  │  │  │     ├─ debug
   │        │  │  │  │     │  └─ AndroidManifest.xml
   │        │  │  │  │     ├─ main
   │        │  │  │  │     │  ├─ AndroidManifest.xml
   │        │  │  │  │     │  └─ res
   │        │  │  │  │     │     ├─ drawable
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ mipmap-hdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-mdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     ├─ mipmap-xxxhdpi
   │        │  │  │  │     │     │  └─ ic_launcher.png
   │        │  │  │  │     │     └─ values
   │        │  │  │  │     │        ├─ styles.xml
   │        │  │  │  │     │        └─ values.xml
   │        │  │  │  │     └─ profile
   │        │  │  │  │        └─ AndroidManifest.xml
   │        │  │  │  ├─ build.gradle
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle
   │        │  │  ├─ ios
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.h
   │        │  │  │  │  ├─ AppDelegate.m
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  ├─ Contents.json
   │        │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │        │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │        │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │        │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     ├─ LaunchImage.png
   │        │  │  │  │  │     ├─ LaunchImage@2x.png
   │        │  │  │  │  │     ├─ LaunchImage@3x.png
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  └─ main.m
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        └─ IDEWorkspaceChecks.plist
   │        │  │  ├─ lib
   │        │  │  │  ├─ firebase_options.dart
   │        │  │  │  └─ main.dart
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     ├─ app_icon_1024.png
   │        │  │  │  │  │     ├─ app_icon_128.png
   │        │  │  │  │  │     ├─ app_icon_16.png
   │        │  │  │  │  │     ├─ app_icon_256.png
   │        │  │  │  │  │     ├─ app_icon_32.png
   │        │  │  │  │  │     ├─ app_icon_512.png
   │        │  │  │  │  │     ├─ app_icon_64.png
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  └─ Runner.xcworkspace
   │        │  │  │     ├─ contents.xcworkspacedata
   │        │  │  │     └─ xcshareddata
   │        │  │  │        ├─ IDEWorkspaceChecks.plist
   │        │  │  │        └─ WorkspaceSettings.xcsettings
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ web
   │        │  │  │  └─ index.html
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ Classes
   │        │  │  │  ├─ FLTFirebaseCorePlugin.h
   │        │  │  │  ├─ FLTFirebaseCorePlugin.m
   │        │  │  │  ├─ FLTFirebasePlugin.h
   │        │  │  │  ├─ FLTFirebasePlugin.m
   │        │  │  │  ├─ FLTFirebasePluginRegistry.h
   │        │  │  │  ├─ FLTFirebasePluginRegistry.m
   │        │  │  │  ├─ messages.g.h
   │        │  │  │  └─ messages.g.m
   │        │  │  └─ firebase_core.podspec
   │        │  ├─ lib
   │        │  │  ├─ firebase_core.dart
   │        │  │  └─ src
   │        │  │     ├─ firebase.dart
   │        │  │     └─ firebase_app.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ Classes
   │        │  │  │  ├─ FLTFirebaseCorePlugin.h
   │        │  │  │  ├─ FLTFirebaseCorePlugin.m
   │        │  │  │  ├─ FLTFirebasePlugin.h
   │        │  │  │  ├─ FLTFirebasePlugin.m
   │        │  │  │  ├─ FLTFirebasePluginRegistry.h
   │        │  │  │  ├─ FLTFirebasePluginRegistry.m
   │        │  │  │  ├─ messages.g.h
   │        │  │  │  └─ messages.g.m
   │        │  │  └─ firebase_core.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  └─ firebase_core_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ firebase_core_plugin.cpp
   │        │     ├─ firebase_core_plugin.h
   │        │     ├─ firebase_core_plugin_c_api.cpp
   │        │     ├─ include
   │        │     │  └─ firebase_core
   │        │     │     └─ firebase_core_plugin_c_api.h
   │        │     ├─ messages.g.cpp
   │        │     └─ messages.g.h
   │        ├─ flutter_secure_storage_windows
   │        │  ├─ analysis_options.yaml
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ integration_test
   │        │  │  │  └─ app_test.dart
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ flutter_secure_storage_windows.dart
   │        │  │  └─ src
   │        │  │     ├─ flutter_secure_storage_windows_ffi.dart
   │        │  │     └─ flutter_secure_storage_windows_stub.dart
   │        │  ├─ LICENSE
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  └─ unit_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ flutter_secure_storage_windows_plugin.cpp
   │        │     └─ include
   │        │        └─ flutter_secure_storage_windows
   │        │           └─ flutter_secure_storage_windows_plugin.h
   │        ├─ flutter_web_auth_2
   │        │  ├─ analysis_options.yaml
   │        │  ├─ android
   │        │  │  ├─ build.gradle
   │        │  │  ├─ gradle
   │        │  │  │  └─ wrapper
   │        │  │  │     └─ gradle-wrapper.properties
   │        │  │  ├─ gradle.properties
   │        │  │  ├─ settings.gradle
   │        │  │  └─ src
   │        │  │     └─ main
   │        │  │        ├─ AndroidManifest.xml
   │        │  │        └─ kotlin
   │        │  │           └─ com
   │        │  │              └─ linusu
   │        │  │                 └─ flutter_web_auth_2
   │        │  │                    ├─ AuthenticationManagementActivity.kt
   │        │  │                    ├─ CallbackActivity.kt
   │        │  │                    ├─ FlutterWebAuth2Plugin.kt
   │        │  │                    ├─ KeepAliveService.kt
   │        │  │                    ├─ TabBuilderWrapper.kt
   │        │  │                    └─ Utils.kt
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ analysis_options.yaml
   │        │  │  ├─ android
   │        │  │  │  ├─ app
   │        │  │  │  │  ├─ build.gradle
   │        │  │  │  │  └─ src
   │        │  │  │  │     ├─ debug
   │        │  │  │  │     │  └─ AndroidManifest.xml
   │        │  │  │  │     ├─ main
   │        │  │  │  │     │  ├─ AndroidManifest.xml
   │        │  │  │  │     │  ├─ java
   │        │  │  │  │     │  │  └─ io
   │        │  │  │  │     │  │     └─ flutter
   │        │  │  │  │     │  │        └─ plugins
   │        │  │  │  │     │  ├─ kotlin
   │        │  │  │  │     │  │  └─ com
   │        │  │  │  │     │  │     ├─ example
   │        │  │  │  │     │  │     │  └─ flutter_web_auth_example
   │        │  │  │  │     │  │     └─ linusu
   │        │  │  │  │     │  │        └─ flutter_web_auth_2_example
   │        │  │  │  │     │  │           └─ MainActivity.kt
   │        │  │  │  │     │  └─ res
   │        │  │  │  │     │     ├─ drawable
   │        │  │  │  │     │     │  └─ launch_background.xml
   │        │  │  │  │     │     ├─ drawable-v21
   │        │  │  │  │     │     ├─ mipmap-hdpi
   │        │  │  │  │     │     ├─ mipmap-mdpi
   │        │  │  │  │     │     ├─ mipmap-xhdpi
   │        │  │  │  │     │     ├─ mipmap-xxhdpi
   │        │  │  │  │     │     ├─ mipmap-xxxhdpi
   │        │  │  │  │     │     ├─ values
   │        │  │  │  │     │     │  └─ styles.xml
   │        │  │  │  │     │     └─ values-night
   │        │  │  │  │     └─ profile
   │        │  │  │  │        └─ AndroidManifest.xml
   │        │  │  │  ├─ build.gradle
   │        │  │  │  ├─ gradle
   │        │  │  │  │  └─ wrapper
   │        │  │  │  │     └─ gradle-wrapper.properties
   │        │  │  │  ├─ gradle.properties
   │        │  │  │  └─ settings.gradle
   │        │  │  ├─ ios
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ AppFrameworkInfo.plist
   │        │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  └─ Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  ├─ AppIcon.appiconset
   │        │  │  │  │  │  │  └─ Contents.json
   │        │  │  │  │  │  └─ LaunchImage.imageset
   │        │  │  │  │  │     ├─ Contents.json
   │        │  │  │  │  │     └─ README.md
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  ├─ LaunchScreen.storyboard
   │        │  │  │  │  │  └─ Main.storyboard
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  └─ Runner-Bridging-Header.h
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │        │  │  │  │     └─ WorkspaceSettings.xcsettings
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ linux
   │        │  │  │  ├─ CMakeLists.txt
   │        │  │  │  ├─ flutter
   │        │  │  │  │  └─ CMakeLists.txt
   │        │  │  │  ├─ main.cc
   │        │  │  │  ├─ my_application.cc
   │        │  │  │  └─ my_application.h
   │        │  │  ├─ macos
   │        │  │  │  ├─ Flutter
   │        │  │  │  │  ├─ Flutter-Debug.xcconfig
   │        │  │  │  │  └─ Flutter-Release.xcconfig
   │        │  │  │  ├─ Podfile
   │        │  │  │  ├─ Runner
   │        │  │  │  │  ├─ AppDelegate.swift
   │        │  │  │  │  ├─ Assets.xcassets
   │        │  │  │  │  │  └─ AppIcon.appiconset
   │        │  │  │  │  │     └─ Contents.json
   │        │  │  │  │  ├─ Base.lproj
   │        │  │  │  │  │  └─ MainMenu.xib
   │        │  │  │  │  ├─ Configs
   │        │  │  │  │  │  ├─ AppInfo.xcconfig
   │        │  │  │  │  │  ├─ Debug.xcconfig
   │        │  │  │  │  │  ├─ Release.xcconfig
   │        │  │  │  │  │  └─ Warnings.xcconfig
   │        │  │  │  │  ├─ DebugProfile.entitlements
   │        │  │  │  │  ├─ Info.plist
   │        │  │  │  │  ├─ MainFlutterWindow.swift
   │        │  │  │  │  └─ Release.entitlements
   │        │  │  │  ├─ Runner.xcodeproj
   │        │  │  │  │  ├─ project.pbxproj
   │        │  │  │  │  ├─ project.xcworkspace
   │        │  │  │  │  │  └─ xcshareddata
   │        │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ xcschemes
   │        │  │  │  │        └─ Runner.xcscheme
   │        │  │  │  ├─ Runner.xcworkspace
   │        │  │  │  │  ├─ contents.xcworkspacedata
   │        │  │  │  │  └─ xcshareddata
   │        │  │  │  │     └─ IDEWorkspaceChecks.plist
   │        │  │  │  └─ RunnerTests
   │        │  │  │     └─ RunnerTests.swift
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test
   │        │  │  │  └─ widget_test.dart
   │        │  │  ├─ web
   │        │  │  │  ├─ auth.html
   │        │  │  │  ├─ icons
   │        │  │  │  ├─ index.html
   │        │  │  │  └─ manifest.json
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ ios
   │        │  │  ├─ flutter_web_auth_2
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ flutter_web_auth_2
   │        │  │  │        └─ FlutterWebAuth2Plugin.swift
   │        │  │  └─ flutter_web_auth_2.podspec
   │        │  ├─ lib
   │        │  │  ├─ flutter_web_auth_2.dart
   │        │  │  └─ src
   │        │  │     ├─ linows.dart
   │        │  │     ├─ macos.dart
   │        │  │     ├─ options.dart
   │        │  │     ├─ platform
   │        │  │     │  ├─ platform_is.dart
   │        │  │     │  ├─ universal_platform_none.dart
   │        │  │     │  ├─ universal_platform_vm.dart
   │        │  │     │  └─ universal_platform_web.dart
   │        │  │     ├─ server.dart
   │        │  │     ├─ unsupported.dart
   │        │  │     ├─ web.dart
   │        │  │     └─ webview.dart
   │        │  ├─ LICENSE
   │        │  ├─ macos
   │        │  │  ├─ flutter_web_auth_2
   │        │  │  │  ├─ Package.swift
   │        │  │  │  └─ Sources
   │        │  │  │     └─ flutter_web_auth_2
   │        │  │  │        └─ FlutterWebAuth2Plugin.swift
   │        │  │  └─ flutter_web_auth_2.podspec
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ screen-android.gif
   │        │  ├─ screen-ios.gif
   │        │  ├─ screen-macos.gif
   │        │  └─ test
   │        │     └─ flutter_web_auth_2_test.dart
   │        ├─ image_picker_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  └─ image_picker_windows.dart
   │        │  ├─ LICENSE
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  └─ test
   │        │     ├─ image_picker_windows_test.dart
   │        │     └─ image_picker_windows_test.mocks.dart
   │        ├─ path_provider_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ integration_test
   │        │  │  │  └─ path_provider_test.dart
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test_driver
   │        │  │  │  └─ integration_test.dart
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ run_loop.cpp
   │        │  │        ├─ run_loop.h
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ path_provider_windows.dart
   │        │  │  └─ src
   │        │  │     ├─ folders.dart
   │        │  │     ├─ folders_stub.dart
   │        │  │     ├─ guid.dart
   │        │  │     ├─ path_provider_windows_real.dart
   │        │  │     ├─ path_provider_windows_stub.dart
   │        │  │     └─ win32_wrappers.dart
   │        │  ├─ LICENSE
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  └─ test
   │        │     ├─ guid_test.dart
   │        │     └─ path_provider_windows_test.dart
   │        ├─ shared_preferences_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ AUTHORS
   │        │  │  ├─ integration_test
   │        │  │  │  └─ shared_preferences_test.dart
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ LICENSE
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test_driver
   │        │  │  │  └─ integration_test.dart
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ run_loop.cpp
   │        │  │        ├─ run_loop.h
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  └─ shared_preferences_windows.dart
   │        │  ├─ LICENSE
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  └─ test
   │        │     ├─ fake_path_provider_windows.dart
   │        │     ├─ legacy_shared_preferences_windows_test.dart
   │        │     └─ shared_preferences_windows_async_test.dart
   │        ├─ url_launcher_windows
   │        │  ├─ AUTHORS
   │        │  ├─ CHANGELOG.md
   │        │  ├─ example
   │        │  │  ├─ integration_test
   │        │  │  │  └─ url_launcher_test.dart
   │        │  │  ├─ lib
   │        │  │  │  └─ main.dart
   │        │  │  ├─ pubspec.yaml
   │        │  │  ├─ README.md
   │        │  │  ├─ test_driver
   │        │  │  │  └─ integration_test.dart
   │        │  │  └─ windows
   │        │  │     ├─ CMakeLists.txt
   │        │  │     ├─ flutter
   │        │  │     │  └─ CMakeLists.txt
   │        │  │     └─ runner
   │        │  │        ├─ CMakeLists.txt
   │        │  │        ├─ flutter_window.cpp
   │        │  │        ├─ flutter_window.h
   │        │  │        ├─ main.cpp
   │        │  │        ├─ resource.h
   │        │  │        ├─ resources
   │        │  │        │  └─ app_icon.ico
   │        │  │        ├─ runner.exe.manifest
   │        │  │        ├─ Runner.rc
   │        │  │        ├─ run_loop.cpp
   │        │  │        ├─ run_loop.h
   │        │  │        ├─ utils.cpp
   │        │  │        ├─ utils.h
   │        │  │        ├─ win32_window.cpp
   │        │  │        └─ win32_window.h
   │        │  ├─ lib
   │        │  │  ├─ src
   │        │  │  │  └─ messages.g.dart
   │        │  │  └─ url_launcher_windows.dart
   │        │  ├─ LICENSE
   │        │  ├─ pigeons
   │        │  │  ├─ copyright.txt
   │        │  │  └─ messages.dart
   │        │  ├─ pubspec.yaml
   │        │  ├─ README.md
   │        │  ├─ test
   │        │  │  └─ url_launcher_windows_test.dart
   │        │  └─ windows
   │        │     ├─ CMakeLists.txt
   │        │     ├─ include
   │        │     │  └─ url_launcher_windows
   │        │     │     └─ url_launcher_windows.h
   │        │     ├─ messages.g.cpp
   │        │     ├─ messages.g.h
   │        │     ├─ system_apis.cpp
   │        │     ├─ system_apis.h
   │        │     ├─ test
   │        │     │  └─ url_launcher_windows_test.cpp
   │        │     ├─ url_launcher_plugin.cpp
   │        │     ├─ url_launcher_plugin.h
   │        │     └─ url_launcher_windows.cpp
   │        └─ window_to_front
   │           ├─ .metadata
   │           ├─ CHANGELOG.md
   │           ├─ example
   │           │  └─ readme.md
   │           ├─ lib
   │           │  └─ window_to_front.dart
   │           ├─ LICENSE
   │           ├─ linux
   │           │  ├─ CMakeLists.txt
   │           │  ├─ flutter
   │           │  │  └─ ephemeral
   │           │  │     └─ .plugin_symlinks
   │           │  │        └─ window_to_front
   │           │  │           ├─ CHANGELOG.md
   │           │  │           ├─ example
   │           │  │           │  └─ readme.md
   │           │  │           ├─ lib
   │           │  │           │  └─ window_to_front.dart
   │           │  │           ├─ LICENSE
   │           │  │           ├─ linux
   │           │  │           │  ├─ CMakeLists.txt
   │           │  │           │  ├─ flutter
   │           │  │           │  ├─ include
   │           │  │           │  │  └─ window_to_front
   │           │  │           │  │     └─ window_to_front_plugin.h
   │           │  │           │  └─ window_to_front_plugin.cc
   │           │  │           ├─ macos
   │           │  │           │  ├─ Classes
   │           │  │           │  │  └─ WindowToFrontPlugin.swift
   │           │  │           │  ├─ Flutter
   │           │  │           │  └─ window_to_front.podspec
   │           │  │           ├─ pubspec.yaml
   │           │  │           ├─ README.md
   │           │  │           └─ windows
   │           │  │              ├─ CMakeLists.txt
   │           │  │              ├─ flutter
   │           │  │              ├─ include
   │           │  │              │  └─ window_to_front
   │           │  │              │     └─ window_to_front_plugin.h
   │           │  │              └─ window_to_front_plugin.cpp
   │           │  ├─ include
   │           │  │  └─ window_to_front
   │           │  │     └─ window_to_front_plugin.h
   │           │  └─ window_to_front_plugin.cc
   │           ├─ macos
   │           │  ├─ Classes
   │           │  │  └─ WindowToFrontPlugin.swift
   │           │  ├─ Flutter
   │           │  └─ window_to_front.podspec
   │           ├─ pubspec.yaml
   │           ├─ README.md
   │           └─ windows
   │              ├─ CMakeLists.txt
   │              ├─ include
   │              │  └─ window_to_front
   │              │     └─ window_to_front_plugin.h
   │              └─ window_to_front_plugin.cpp
   └─ runner
      ├─ CMakeLists.txt
      ├─ flutter_window.cpp
      ├─ flutter_window.h
      ├─ main.cpp
      ├─ resource.h
      ├─ resources
      │  └─ app_icon.ico
      ├─ runner.exe.manifest
      ├─ Runner.rc
      ├─ utils.cpp
      ├─ utils.h
      ├─ win32_window.cpp
      └─ win32_window.h

```
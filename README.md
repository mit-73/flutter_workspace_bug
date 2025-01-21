Bug one, native folders (.android, .ios, etc.) are not created for add-to-app module when run "pub get" in workspace:
- run `flutter pub get` in root folder
- run `cd module/.ios` or `cd module/.android`
- we get `cd: no such file or directory: module/...`

Bug two, workspace builds the module/application with all plugins that are added to workspace, even if there are no direct dependencies:
- open `module/pubspec.yaml` and make sure we don't have a “[plugin](/plugin)” dependency.
- run `cd module`
- run `fvm flutter build ios-framework --no-profile --no-debug` or `fvm flutter build aar --no-profile --no-debug`
- the “[plugin](/plugin)” dependency will be used in the build and may break the build or affect the final application

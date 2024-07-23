# widgetbook

A new Flutter project.

[official](https://docs.widgetbook.io/guides/quick-start)

1. Create a new Flutter project inside your app's directory:

```shell
## All platforms
flutter create widgetbook --empty

## Certain platforms
flutter create widgetbook --empty --platforms=web,macos
```

2. To avoid naming conflict with the Widgetbook pub package, change the project name to widgetbook_workspace inside the widgetbook/pubspec.yaml file:

```yaml
- name: widgetbook
+ name: widgetbook_workspace
```

3. Add the following dependencies to your widgetbook project:

```shell
flutter pub add widgetbook widgetbook_annotation dev:widgetbook_generator dev:build_runner
```

4. Add your app as a path dependency to the widgetbook/pubspec.yaml file:
```yaml
dependencies:
  your_app:
    path: ../
```

After finishing the setup, the folder structure should look something like this:

```
widget_book_tutorial/
├── pubsepc.yaml
├── lib/
├── ...
└── widgetbook/
    ├── pubsepc.yaml
    ├── lib/
    └── ...
```

And the widgetbook/pubspec.yaml file should look like this:
```
name: widgetbook_workspace
# ...

dependencies:
  widgetbook_annotation: ^3.1.0
  widgetbook: ^3.8.1
  your_app:
    path: ../

dev_dependencies:
  build_runner:
  widgetbook_generator: ^3.8.0
```

## Your First Use-case
#
In this section, you will create a simple use-case and show it inside your Widgetbook app.

Choose a widget from your_app that you want to catalog. For this example, we will use the imaginary CoolButton widget.

Create a file inside your widgetbook app at widgetbook/lib/cool_button.dart

>If your widget needs some parameters, you can pass some constants for now for simplicity. Later you can check how to use Knobs.

```shell
touch lib/cool_button.dart
```

```dart
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Import the widget from your app
import 'package:your_app/cool_button.dart';

@widgetbook.UseCase(name: 'Default', type: CoolButton)
Widget buildCoolButtonUseCase(BuildContext context) {
  return CoolButton();
}
```

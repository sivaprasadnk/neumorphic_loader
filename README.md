# Neumorphic Loader

Circular Loader with a neumorphic container.

![Image](https://github.com/sivaprasadnk/neumorphic_loader/blob/main/screenshots/screenshot1.png)
## Getting Started

Add this to your package's `pubspec.yaml` file

```yaml
dependencies:
  neumorphic_loader: ^0.0.3
```

## Usage

Next, you just have to import the package using:

```dart
import 'package:neumorphic_loader/neumorphic_loader.dart';
```


```dart
  Widget build(BuildContext context) {
    return NeumorphicLoader(
                  size: 75,
                  borderRadius: 10,
                  blurValue: 53,
                  borderColor: Colors.amber,
                  loaderColor: Colors.amber,
                );
  }
```
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
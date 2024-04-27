
Load your data more beautiful.


## Fixed Bugs
  V 0.0.2 :
  ```setState error fixed```

## Installation

You just need to add ```flutter_circular_progress_indicator``` as a dependency in your pubspec.yaml file.

```dart
dependencies:
  flutter_circular_progress_indicator: ^0.0.1
```

## Getting started

All features you can use :<br><br>
![complete](https://github.com/edris-mazhari/flutter_circular_progress/assets/91206674/49383266-710d-4c9e-b979-7d2d78134910)


## Usage

![normal_circular](https://github.com/edris-mazhari/flutter_circular_progress/assets/91206674/2d04d472-be12-4738-91d4-693595283c8f)

```dart
CircularProgressInd().normalCircular(
                      height: 55,
                      width: 55,
                      valueColor: Colors.pink,
                      secondaryColor: Colors.deepPurple[900],
                      secondaryWidth: 10,
                      valueWidth: 6);
```

![spin_duration](https://github.com/edris-mazhari/flutter_circular_progress/assets/91206674/69afe996-0469-400c-86a1-a95e2a3fa936)

```dart
CircularProgressInd().normalCircular(
                      height: 55,
                      width: 55,
                      isSpining: true,
                      spinDuration: Duration(seconds: 3),
                      valueColor: Colors.pink,
                      secondaryColor: Colors.deepPurple[900],
                      secondaryWidth: 10,
                      valueWidth: 6);
```

![spin](https://github.com/edris-mazhari/flutter_circular_progress/assets/91206674/cb210364-4ad3-4f19-a419-00422350f487)

```dart
CircularProgressInd().normalCircular(
                    height: 55,
                    width: 55,
                    valueColor: Colors.deepOrange,
                    valueWidth: 5,
                    isSpining: true,
                  );
```
![spin_reverse](https://github.com/edris-mazhari/flutter_circular_progress/assets/91206674/d35b8596-743f-4fd5-88ff-1906510a9b7f)


```dart
CircularProgressInd().normalCircular(
                      height: 55,
                      width: 55,
                      value: .4,
                      isSpining: true,
                      hasSpinReverse: true,
                      valueColor: Colors.pink,
                      secondaryColor: Colors.deepPurple[900],
                      secondaryWidth: 10,
                      valueWidth: 6);
```

![circle_background](https://github.com/edris-mazhari/flutter_circular_progress/assets/91206674/0873af37-c4c3-458f-8a31-4985fb408897)

```dart
CircularProgressInd().normalCircular(
                      height: 55,
                      width: 55,
                      isSpining: true,
                      secondaryColor: Colors.deepPurple[900],
                      secondaryWidth: 10,
                      backgroundColor: Colors.amber,
                      padding: EdgeInsets.all(10),
                      backgroundBorder:
                          Border.all(color: Colors.deepPurple, width: 3),
                      valueWidth: 6);
```

![rectangle_background](https://github.com/edris-mazhari/flutter_circular_progress/assets/91206674/adf12d35-6c44-4944-88f8-15e4cbb5bef2)

```dart
 CircularProgressInd().normalCircular(
                      height: 80,
                      width: 80,
                      isSpining: true,
                      value: .01,
                      secondaryColor: const Color.fromARGB(255, 23, 82, 27),
                      secondaryWidth: 10,
                      backgroundShape: BoxShape.rectangle,
                      backgroundRadius: 10,
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.all(10),
                      valueColor: Colors.green[200],
                      backgroundBorder: Border.all(
                          color: const Color.fromARGB(255, 23, 82, 27),
                          width: 3),
                      valueWidth: 6);
```

# Counter App

## Overview
This is a simple Flutter-based counter app that allows users to increment, decrement, and reset a counter. The app provides visual feedback with an elegant gradient-themed UI and alerts the user when attempting to decrement below zero.

## Features
- Increment the counter with an upward arrow button.
- Decrement the counter with a downward arrow button.
- Reset the counter to zero with a restore button.
- Gradient background and app bar for a modern UI.
- Prevents the counter from going below zero and alerts the user when attempted.

## Technologies Used
- **Flutter**: UI development framework.
- **Dart**: Programming language used for Flutter.
- **rflutter_alert**: For displaying alert dialogs.

## Installation & Setup
1. Ensure you have Flutter installed. If not, follow the instructions at [Flutter Install](https://flutter.dev/docs/get-started/install).
2. Clone this repository:
   ```sh
   git clone https://github.com/perpetualcuriosity/flutter-counter.git
   ```
3. Navigate to the project directory:
   ```sh
   cd flutter-counter/flutter_counter
   ```
4. Install dependencies:
   ```sh
   flutter pub get
   ```
5. Run the app:
   ```sh
   flutter run
   ```

## Usage
1. Tap the **upward arrow button** to increase the counter.
2. Tap the **downward arrow button** to decrease the counter. If the counter reaches 0, an alert will be shown.
3. Tap the **restore button** to reset the counter to zero.

## License
This project is licensed under the MIT License.
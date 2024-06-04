# Simple Task Management App

This Flutter application is a powerful task management tool that allows users to create, edit, delete, and view their tasks across Android, Desktop, and macOS platforms. It seamlessly integrates with Firestore for online storage and synchronization, ensuring your tasks stay up-to-date even when you switch devices. Additionally, the app offers the ability to add tasks directly to Google Calendar, promoting a unified workflow.

## Features

### Task Management:
  - Add, edit, and delete tasks with ease.
  - View all tasks in a clear and organized list.
### Firestore Integration:
  - Store tasks securely in the cloud for online access and synchronization.
  - Real-time updates across devices for a seamless experience.
### Google Calendar Integration:
  - Add tasks directly to your Google Calendar, keeping your schedule organized.
### Cross-Platform Compatibility:
  - Runs flawlessly on Android, Desktop, and macOS devices.

## Design System

![305585789-92fd36e2-e8e6-44d4-bcf5-0643e20df0a7](https://github.com/MoAdelDev/task_app/assets/57016916/c8ec7ebd-8a93-4ee0-a56b-14eb9b3771c9)

## ScreenShots

![Frame 9](https://github.com/MoAdelDev/task_app/assets/57016916/9bae50f3-5db9-4283-9db1-e0d0181c02e7)

![Frame 7](https://github.com/MoAdelDev/task_app/assets/57016916/0ed6acc0-980c-4e23-8ec2-444cff6e61cd)

![Frame 10](https://github.com/MoAdelDev/task_app/assets/57016916/a35d3978-8e92-4c98-b069-7f7d0131f8d9)

## Getting Started 🚀

1. Prerequisites

  - Flutter SDK: Follow the official installation guide (https://docs.flutter.dev/get-started/install).
  - A Firebase project with Firestore and Google Calendar API enabled (https://firebase.google.com/docs/projects/api/workflow_set-up-and-manage-project).
  - 2. Project Setup
  - Clone this repository to your local machine.
  - Run flutter pub get to install project dependencies.

3. Configuration

  - Create a google_api_client.json file in the following locations depending on your platform:
  - Android: android/app directory
  - Desktop/macOS: Project's root directory
  - Add your Firebase project credentials and Google Calendar API credentials to this file (refer to Firebase and Google Calendar API documentation for details).

4. Run the App

  - Connect your Android device or run an emulator.
  - Run flutter run in your terminal.

## Usage

This section guides you through setting up and using the task app.

**Prerequisites:**

- Flutter SDK installed (https://docs.flutter.dev/get-started/install)

**Installation:**

1. Clone this repository:

   ```bash
   git clone https://github.com/MoAdelDev/task_app.git

2. Navigate to the project directory:
   Bash
  cd task_app

3. Run The app
   Bash
   flutter run

## Additional Notes

This README provides a general overview. More detailed instructions and code comments might be added within the project for specific functionalities.
Consider using a state management solution BloC for efficient management of application state.
Thoroughly test the application on all target platforms to ensure smooth operation.

## Contributing

We welcome contributions to this project! Please create pull requests on GitHub outlining your changes. Ensure proper code formatting and adherence to the project's style guide (if applicable).

## License

This project is licensed under the MIT License.

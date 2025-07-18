# Contact Management Application - Flutter

## Overview
This Flutter application is a modern contact management system with an intuitive user interface. The app allows users to store, view, and manage their contacts with a beautiful Material Design interface. It features gradient backgrounds, animated cards, and responsive design elements that provide an excellent user experience.

## Features

- **Modern UI Design**: Beautiful gradient backgrounds and Material Design cards
- **Contact Management**: Add, view, and display contact information
- **Interactive Contact Cards**: Tap contacts to view detailed information in a modal dialog
- **Real-time Updates**: Contacts are added and displayed immediately with state management
- **Form Validation**: Manual validation for contact forms with user feedback
- **Responsive Layout**: Adaptive design that works across different screen sizes
- **Visual Feedback**: SnackBar notifications and animated transitions
- **Icon Integration**: Meaningful icons throughout the interface for better UX

## Requirements
Ensure you have the following installed before running the project:
- Flutter SDK (3.0 or higher)
- Dart (3.0 or higher)
- A code editor (VS Code, Android Studio, or IntelliJ IDEA)
- A connected device or emulator (Android/iOS/Windows/Web)

## Installation & Setup
1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```
2. Navigate into the project directory:
   ```bash
   cd midterm
   ```
3. Get dependencies:
   ```bash
   flutter pub get
   ```
4. Run the application:
   ```bash
   flutter run
   ```

## Project Structure
```
├── assets/
│   ├── dice_1.png
│   └── dice_2.png
├── lib/
│   ├── main.dart           # Main app entry point and home screen
│   ├── contact.dart        # Add contact form screen
│   ├── card.dart          # Contact card widget component
│   └── info.dart          # Information screen
├── pubspec.yaml           # Project dependencies and configuration
└── README.md             # Project documentation
```

## Core Components

### 1. Main Screen (`main.dart`)
- **Contact List**: Displays all saved contacts in beautiful cards
- **Empty State**: Shows helpful message when no contacts exist
- **Add Contact FAB**: Floating action button to add new contacts
- **Bottom Navigation**: Navigate between Info and Contact screens
- **Contact Details**: Tap any contact to view detailed information

### 2. Add Contact Screen (`contact.dart`)
- **Form Fields**: Name and phone number input with validation
- **Input Icons**: Meaningful icons for each field (badge, phone, edit, dialpad)
- **Save Functionality**: Add contacts with proper validation
- **User Feedback**: Visual feedback for successful saves and validation errors

### 3. Contact Card Component (`card.dart`)
- **Profile Avatar**: CircleAvatar with person icon
- **Contact Information**: Name and phone number display
- **Action Icons**: Call and message icons for quick actions
- **Gradient Design**: Beautiful blue gradient background
- **Text Overflow**: Proper handling of long names and numbers

## Usage

1. **Launch the App**: Open the application to see the contact list
2. **Add Contacts**: Tap the + button (person_add_alt_1 icon) to add new contacts
3. **Fill Form**: Enter name and phone number in the form
4. **Save Contact**: Tap "Save Contact" to add the contact to your list
5. **View Details**: Tap any contact card to see detailed information
6. **Navigate**: Use bottom navigation to switch between screens

## Key Features

### User Interface
- **Gradient Backgrounds**: Beautiful blue gradients throughout the app
- **Material Design**: Follows Material Design principles
- **Responsive Cards**: Contact cards with proper spacing and elevation
- **Icon Integration**: Meaningful icons that enhance usability

### Functionality
- **State Management**: Uses StatefulWidget for real-time updates
- **Form Validation**: Ensures both name and phone are provided
- **Navigation**: Smooth transitions between screens
- **Data Persistence**: Contacts stored in app state during session

### Visual Elements
- **Empty State**: Helpful guidance when no contacts exist
- **Success Feedback**: SnackBar notifications for successful actions
- **Error Handling**: User-friendly error messages
- **Touch Interactions**: InkWell effects for better touch feedback

## Technical Implementation

- **Flutter Framework**: Built with Flutter for cross-platform compatibility
- **State Management**: StatefulWidget with setState for UI updates
- **Form Handling**: TextEditingController for input management
- **Navigation**: Navigator.push for screen transitions
- **Validation**: Manual validation with user feedback
- **Responsive Design**: Flexible layouts that adapt to screen sizes

## Student Information
- **Student ID**: 01-134222-060
- **Project Type**: Contact Management Application
- **Framework**: Flutter
- **Language**: Dart

## Screenshots

*Add screenshots of your application here showing:*
- Main contact list screen with gradient background
- Add contact form with modern UI
- Contact details dialog with enhanced layout
- Empty state screen with helpful guidance

## Future Enhancements

- **Search Functionality**: Search through contacts by name or number
- **Contact Editing**: Edit existing contact information
- **Contact Deletion**: Remove contacts from the list with confirmation
- **Data Persistence**: Save contacts to local storage or database
- **Contact Categories**: Organize contacts by groups or favorites
- **Call Integration**: Direct calling functionality through platform channels
- **Export/Import**: Backup and restore contacts to/from files
- **Contact Photos**: Add profile pictures for contacts
- **Dark Mode**: Theme switching for better user experience

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is created for educational purposes as part of a Flutter development course.

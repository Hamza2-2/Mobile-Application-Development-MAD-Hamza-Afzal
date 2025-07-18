# MyNotes - Flutter Note-Taking App

**MyNotes** is a fast, lightweight note-taking application developed using Flutter. It supports creating, editing, deleting, and searching notes locally using SQLite (`sqflite`). The app works fully offline.

## Features

- View saved notes with title, preview, and timestamp
- Create new notes using a floating action button
- Edit notes by tapping on them
- Delete notes easily
- Real-time search filtering by title or content
- Persistent local storage using SQLite
- Clean, intuitive user interface

## Project Goals

- Build a complete Flutter application with navigation
- Use `sqflite` for local persistent storage
- Implement CRUD operations
- Apply responsive, scrollable layouts
- Integrate real-time search functionality

## How It Works

### Home Screen

- Fetches notes from local SQLite database
- Displays them in a scrollable `ListView` with previews
- Real-time search filters notes by title/content
- Tap on a note to view or edit

### Create/Edit Screen

- Input fields for title and content
- Save or update notes in the local database
- Delete option for existing notes

### Local Database

- Uses `sqflite` for storing notes locally
- Data persists across app restarts

## Dependencies

- `sqflite`
- `path_provider`
- `intl`  
- -Share_preferences

## Requirements
Ensure you have the following installed before running the project:
- Flutter SDK  
- Dart  
- A code editor (VS Code, Android Studio, or IntelliJ IDEA)  
- A connected device or emulator 


- Open the app.
- Double tap the splash screen to proceed to the home screens.
- Navgiate to the desired tabs and long press the text to view detailed infromation

## Screenshots

![image](https://github.com/user-attachments/assets/6a33de82-3af3-4c61-9de6-f446dfca588e)
![image](https://github.com/user-attachments/assets/173e6e92-e427-480f-b80f-ac1fd8113c40)

![image](https://github.com/user-attachments/assets/af86c540-6fc7-474a-acc8-2a19602257ab)
![image](https://github.com/user-attachments/assets/313ea78c-e9ad-45d8-9b17-16717f074176)



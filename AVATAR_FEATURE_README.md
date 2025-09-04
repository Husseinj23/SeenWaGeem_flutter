# Avatar Selection Feature

## Overview
This feature allows users to select and update their avatar from a collection of server-hosted images.

## Implementation Details

### Server Integration
- **Base URL**: `http://appswg.com/app`
- **Avatar Folder**: `/avatar`
- **Image Format**: PNG files (1.png to 12.png)
- **Total Avatars**: 12 numbered avatars

### API Endpoints
1. **Get Avatars**: `GET /s3/directory?foldername=avatar`
2. **Update Avatar**: `PUT /avatar` with body `{"avatar": "filename.png"}`

### Avatar Grid Layout
- **Grid**: 3 columns × 4 rows
- **Total Avatars**: 12 (1.png to 12.png)
- **Layout**: 
  - Row 1: 1.png, 2.png, 3.png
  - Row 2: 4.png, 5.png, 6.png
  - Row 3: 7.png, 8.png, 9.png
  - Row 4: 10.png, 11.png, 12.png

### Features
- ✅ Avatar selection with visual feedback
- ✅ Current avatar display
- ✅ Avatar update via API
- ✅ Loading states and error handling
- ✅ Success messages in Arabic
- ✅ Automatic navigation after update

### File Structure
```
lib/SeenWaGeem/
├── domain/
│   ├── repositories/image_repository.dart
│   └── usecases/avatar_usecases/
│       ├── get_avatars_usecase.dart
│       └── update_avatar_usecase.dart
├── data/
│   ├── repositories/image_repository_impl.dart
│   └── datasources/remote/image_remote_data_source.dart
└── presentation/
    ├── bloc/avatar_bloc/
    │   ├── avatar_bloc.dart
    │   ├── avatar_event.dart
    │   └── avatar_state.dart
    └── pages/choose_avatar_page/choose_avatar_page.dart
```

### Usage
1. Navigate to the avatar selection page
2. Select an avatar from the grid
3. Click "تم" (Done) button
4. Avatar will be updated via API
5. Success message will be shown
6. User will be redirected to home page

### Dependencies
- `flutter_bloc` for state management
- `cached_network_image` for image loading
- `dio` for HTTP requests
- `injectable` for dependency injection

## Notes
- Grid shows 12 numbered avatars (1.png to 12.png)
- Images are loaded from the server using the download endpoint
- Fallback to mock URLs if server is unavailable
- All text is in Arabic as per the app's language
- The feature is ready to run and fully integrated

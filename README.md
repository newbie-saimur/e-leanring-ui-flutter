# E-Learning UI - Flutter Mobile App

A beautifully designed e-learning mobile application UI built with Flutter and Material Design 3. This project demonstrates a complete online learning platform interface featuring onboarding, course browsing, category exploration, and detailed course views with integrated video playback.

## ✨ Features

### 🎯 Complete User Flow

-   **Onboarding Screen** - Engaging welcome screen with gradient background and 3D illustration
-   **Bottom Navigation** - Four-tab navigation (Featured, My Learning, Wishlist, Settings)
-   **Home/Featured Screen** - Course discovery with search and category browsing
-   **Course Categories** - Accounting, Photography, Product Design, and Marketing
-   **Course Details** - Comprehensive course page with video player, playlist, and enrollment

### 🎬 Video Integration

-   Integrated video player using `video_player` package
-   Custom play/pause controls with overlay
-   Rounded video container matching design system
-   Sample video demonstration

### 🎨 UI Components

-   **Custom Gradient AppBar** - Purple gradient header with greeting and notifications
-   **Search Bar** - Voice search enabled input field
-   **Category Cards** - Interactive grid cards with course count
-   **Tabbed Interface** - Material Design tabs for Playlist/Description
-   **Module List** - Progress tracking with completion indicators
-   **Bottom Action Bar** - Sticky enrollment buttons

### 📱 Screens Implemented

#### 1. Onboarding Screen

-   Full-screen gradient background (Purple theme)
-   3D character illustration
-   Call-to-action card with rounded corners
-   "Get Started" button navigates to main app

#### 2. Home Screen (Featured Tab)

-   Gradient header with greeting text
-   Notification bell icon
-   Search bar with voice input
-   "Explore categories" grid section
-   Category cards: Accounting (20 courses), Photography (18), Product Design (10), Marketing (36)

#### 3. Course Details Screen

-   Back navigation to previous screen
-   Video player container with rounded corners
-   Course title: "Figma UI UX Design Essentials"
-   Author information with highlighted name
-   Rating (4.8 stars) and duration (72 hours)
-   Price display ($40)
-   Custom rounded tab bar (Playlist/Description)
-   **Playlist Tab**: 22 modules with completion status and duration
-   **Description Tab**: Course overview text
-   Bottom bar with two action buttons

#### 4. Bottom Navigation

-   Four tabs: Featured ⭐, My Learning ▶️, Wishlist ❤️, Settings ⚙️
-   Active tab highlighting with primary color
-   Placeholder screens for non-implemented tabs

## 📸 Screenshots

<div align="center">
  <img src="screenshots/onboarding.png" alt="Onboarding Screen" width="250"/>
  <img src="screenshots/home.png" alt="Home Screen" width="250"/>
  <img src="screenshots/course_details.png" alt="Course Details" width="250"/>
</div>

### Onboarding Screen

Engaging introduction with 3D illustration encouraging users to "Discover your next skill - Learn anything you want!"

### Home Screen

Browse courses by category with search functionality. Features gradient header, category grid, and bottom navigation.

### Course Details Screen

Complete course view with video player, tabbed interface (Playlist with 22 modules/Description), progress tracking, and enrollment buttons.

## 🛠 Tech Stack

-   **Framework**: Flutter SDK ^3.9.2
-   **Language**: Dart
-   **UI Design**: Material Design 3
-   **State Management**: StatefulWidget (local state)
-   **Video**: video_player ^2.10.1
-   **Assets**: flutter_svg ^2.2.3 (for SVG support)
-   **Navigation**: Navigator 2.0 (MaterialPageRoute)

## 📦 Dependencies

```yaml
dependencies:
    flutter:
        sdk: flutter
    cupertino_icons: ^1.0.8
    flutter_svg: ^2.2.3
    video_player: ^2.10.1

dev_dependencies:
    flutter_test:
        sdk: flutter
    flutter_lints: ^5.0.0
```

## 🚀 Getting Started

### Prerequisites

-   Flutter SDK (version 3.9.2 or higher)
-   Dart SDK (included with Flutter)
-   Android Studio / VS Code with Flutter extensions
-   Android Emulator or iOS Simulator / Physical device

### Installation Steps

1. **Clone the repository**

```bash
git clone <your-repository-url>
cd e_learning_ui
```

2. **Install dependencies**

```bash
flutter pub get
```

3. **Run the app**

```bash
flutter run
```

4. **Build for release (optional)**

```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release
```

## 📁 Project Structure

```
lib/
├── main.dart                           # App entry point with MaterialApp
├── utils/
│   └── colors.dart                     # App color scheme (Purple theme)
├── views/
│   ├── OnboardingScreen/
│   │   ├── onboarding_screen.dart      # Welcome/intro screen
│   │   └── NavBarView/
│   │       └── nav_bar_view.dart       # Bottom navigation wrapper
│   ├── HomeScreen/
│   │   ├── home_screen.dart            # Main featured courses screen
│   │   └── widgets/
│   │       ├── app_bar.dart            # Custom gradient header
│   │       └── explore_categories.dart # Category grid section
│   └── CourseDetailsScreen/
│       └── course_details_screen.dart  # Course details with video & tabs
└── widgets/
    ├── custom_app_bar.dart             # Reusable app bar component
    ├── custom_button.dart              # Reusable elevated button
    └── custom_category_card.dart       # Category card for grid

assets/
└── images/
    ├── onboarding.png                  # 3D character illustration
    ├── accounting.png                  # Category icon
    ├── photography.png                 # Category icon
    ├── design.png                      # Category icon
    └── marketing.png                   # Category icon
```

## 🎨 Design System

### Color Palette

```dart
Primary Color:    #7455F7  (Purple)
Secondary Color:  #9790F9  (Light Purple)
Background:       #F8F6FF  (Very Light Purple)
```

### Custom Widgets

#### CustomButton

Reusable elevated button with:

-   Customizable background color (Material 3 compatible)
-   Text color, font size, and border radius
-   Shadow with elevation
-   Proper state handling with `WidgetStateProperty`

**Usage:**

```dart
CustomButton(
  title: "Enroll Now",
  backgroundColor: AppColors.primaryColor,
  onPressed: () {},
)
```

#### CustomCategoryCard

Interactive card component with:

-   Category image/icon
-   Category name
-   Course count display
-   Navigation to course details on tap
-   Shadow and rounded corners

#### CustomAppBar

Generic app bar with:

-   Back navigation button
-   Centered title text
-   Consistent styling across screens

### Key UI Features

**Gradient Backgrounds**

-   Used in onboarding and home screens
-   Purple theme with smooth transitions

**Rounded Corners**

-   Container radius: 20-24px
-   Button radius: 8-12px
-   Card radius: 12-16px

**Tab Bar Styling**

-   Custom rounded pill design
-   Gray background with primary color indicator
-   Transparent divider for clean look

**Video Player**

-   ClipRRect for matching container radius
-   AspectRatio widget for proper scaling
-   Overlay controls with centered play/pause button

## 🎯 Key Features Implementation

### Navigation Flow

```
OnboardingScreen
    → NavBarView (Bottom Navigation)
        → HomeScreen (Featured Tab)
            → CourseDetailsScreen
```

### Video Player

Uses `VideoPlayerController` with network URL:

-   Initialize video on screen load
-   Play/pause toggle button
-   Proper disposal to prevent memory leaks

### Tab Management

Uses `TabController` with `SingleTickerProviderStateMixin`:

-   Two tabs: Playlist (22) and Description
-   State synchronized between TabBar and TabBarView

### Bottom Navigation

Four tabs managed with state:

-   Index-based screen switching
-   Only HomeScreen fully implemented
-   Placeholder screens for other tabs

## 📝 Sample Data

The app includes hardcoded sample data for demonstration:

### Categories (4)

-   **Accounting** - 20 courses
-   **Photography** - 18 courses
-   **Product Design** - 10 courses
-   **Marketing** - 36 courses

### Course Modules (22)

Example course "Figma UI UX Design Essentials" with modules ranging from 2 to 40 minutes, including:

-   Introduction
-   What is UI UX design?
-   Auto Layout, Components, Prototyping
-   Design Systems, Typography, Accessibility
-   Case Studies and Portfolio Tips

## 🔄 Future Enhancements

This is a UI-focused project. To make it production-ready, consider:

-   [ ] Backend API integration (Firebase, REST API, GraphQL)
-   [ ] User authentication (email/password, social login)
-   [ ] Real course database with filtering/search
-   [ ] Actual video content hosting (YouTube, Vimeo, custom CDN)
-   [ ] Payment gateway integration
-   [ ] User progress tracking and saved courses
-   [ ] Course reviews and ratings system
-   [ ] Push notifications
-   [ ] Offline video downloads
-   [ ] Dark mode support

## 🤝 Contributing

Contributions are welcome! Feel free to:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👤 Author

**Your Name**

-   GitHub: [@yourusername](https://github.com/yourusername)
-   Email: your.email@example.com

## 🙏 Acknowledgments

-   Flutter team for the amazing framework
-   Material Design 3 guidelines
-   [Add any design inspirations or asset sources]

---

**Note**: This is a UI demonstration project showcasing Flutter development skills and Material Design implementation. It contains hardcoded sample data and is not connected to a live backend. Perfect for learning Flutter UI development, studying Material Design patterns, or using as a starting template for an e-learning app.

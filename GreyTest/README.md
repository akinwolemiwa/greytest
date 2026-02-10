# GreyTest

SwiftUI iOS app that shows a learning path dashboard with cards, badges, and progress. Uses NavigationStack, custom components, and a share sheet for achievements.

## Photos and Videos
Photos and Videos of the application have been uploaded [here](https://drive.google.com/drive/folders/1f7BGhQSbdF-vUdOAcxJJsuhLgSinVdH0?usp=drive_link).

## Requirements
- Xcode 15 or newer
- iOS 17 SDK (NavigationStack + SwiftUI)

## Project Structure
- `GreyTestApp.swift` – app entry.
- `ContentView.swift` – wraps `HomeScreen` in a `NavigationStack`.
- `App/Views/` – screens (`HomeScreen`, `LearningPathDetailView`).
- `App/Components/` – reusable UI pieces (cards, buttons, sheets, background, learning path graph, etc.).
- `App/Resources/` – colors and other assets.
- `Assets.xcassets/` – images, colors, app icon.
- `GreyTestTests/` – ViewInspector-based UI tests (add the dependency to the test target).

## Running the App
1. Open `GreyTest.xcodeproj` in Xcode.
2. Select an iOS 17+ simulator or device.
3. Build & run via **Product > Run** or `⌘R`.

## Tests
This project includes SwiftUI view tests using [ViewInspector](https://github.com/nalexn/ViewInspector).

Setup the test target:
1. In Xcode, **File > Add Packages…** → add `https://github.com/nalexn/ViewInspector`.
2. Link ViewInspector only to the `GreyTestTests` target.
3. Ensure the `GreyTestTests` target includes the files under `GreyTestTests/`.

Run tests:
```bash
# From Xcode: press ⌘U
# Or via command line (adjust scheme/device as needed):
xcodebuild test \
  -scheme GreyTest \
  -destination 'platform=iOS Simulator,name=iPhone 15'
```

## Notable Components
- `HomeScreen` – main dashboard with background, top bar, robot hero, and cards.
- `ActiveLearningCard` – shows learning path progress; "View full path" navigates to `LearningPathDetailView`.
- `ForTodayCard`, `BadgesCard` – daily tasks and badges display.
- `LearningPathComponent` – renders the learning path graph; supports multi-line node titles.
- `CompletedNodeSheet` – presents badge details and share sheet.
- `PrimaryButton` – shared button style used across actions.

## Share Sheet
`CompletedNodeSheet` uses a `UIActivityViewController` wrapper (`ActivityView`) to share achievements. The "Share your achievement" button triggers the native share sheet.

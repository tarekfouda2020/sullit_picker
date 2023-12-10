# Base Flutter Project
This project is a starting point for a Flutter application.

## Getting Started

# the last changes in Base
- allow multi flavors in one project to determine app name,logo and app id
- add obs value and obs value consumer to build widget when value changed locally
- add base bloc for build widget using states
- add Requester and Requester Consumer to handle Get Requests with status and error handling
- replace Either with Result
- add shimmer widgets
- add base option field to replace dropdown field
- add app bottom sheets
- add app buttons
- add app text spans

# Localizations
- to generate localizations run this command "dart run intl_utils:generate"

# To Build Release Version
- dart lib/env/env_specific_handlers/flavor_handler.dart
- flutter build apk --release --no-tree-shake-icons --dart-define-from-file=.run/json/dev.json  --flavor dev
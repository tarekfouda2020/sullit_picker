# Base Flutter Project
This project is a starting point for a Flutter application.

## Getting Started

# the last changes in Base
- allow multi flavors in one project to determine app name,logo and app id
- add obs value and obs value consumer to build widget when value changed without using state
- add base bloc for build widget using states
- add Requester and Requester Consumer to handle Get Requests with status and error handling
- replace Either with Result
- add shimmer widgets
- add base option field to replace dropdown field
- add app bottom sheets
- add app buttons
- add app text spans

# Notes for Developers
- Widgets should be stateless as possible and start with none and end with keyword widget
- use requester instead of use case
- create domain models if needed only
- use factory constructors when needed
- use when in multi conditions
- please separate  package in helper and make it easy to be replaced when needed


# Localizations
- to generate localizations run this command "dart run intl_utils:generate"

# To Build Release Version
- dart run lib/env/env_specific_handlers/flavor_handler.dart
- flutter build apk --release --no-tree-shake-icons --dart-define-from-file=.run/json/dev.json  --flavor dev
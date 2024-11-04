# Runs pub get
pg:
	flutter pub get

set_up_arb_utils:
	dart pub global activate arb_utils

# Sorts arb files alphabetically
sort_arb:
	dart run arb_utils sort -i lib/l10n/app_en.arb
	dart run arb_utils sort -i lib/l10n/app_ru.arb

# Spider
spider:
	spider build

# Runs flutter clean
cleanup:
	flutter clean

# Makes lintmake 
lint:
	flutter analyze
	dart run custom_lint

# Codegen
codegen:
	dart run build_runner build --delete-conflicting-outputs

# Codegen watch
codegenw:
	dart run build_runner watch --delete-conflicting-outputs

# Unit and widget tests
tests:
	flutter test

# Update goldens
ug:
	flutter test --update-goldens

# Runs pre-push operations
prepush:
	make lint && make sort_arb && make ug

# Pod install
pods:
	pod install --repo-update --project-directory=ios

# Validating script
validate:
	make lint && make tests

# iOS simulators shutdown before running tests
ios_similators_shutdown_all:
	xcrun simctl shutdown all

# Opens iOS simulator
open_ios_simulator:
	xcrun simctl boot "iPhone 14"

# Closes iOS simulator
close_ios_simulator:
	xcrun simctl shutdown "iPhone 14"

# First time setup project for new developer
kickstart:
	use
	make set_up_arb_utils
	make pg
	make codegen
	make pods
	make lint

# Updates splash screen with flutter_native_splash
splash:
	dart run flutter_native_splash:create

# Hard reset
hard_reset:
	flutter clean
	rm -rf .idea
	rm -rf .dart_tool
	flutter pub cache clean
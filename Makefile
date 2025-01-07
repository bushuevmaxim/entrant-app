# Runs pub get
pg:
	fvm flutter pub get

set_up_arb_utils:
	fvm dart pub global activate arb_utils

# Sorts arb files alphabetically
sort_arb:
	fvm dart run arb_utils sort -i lib/l10n/app_en.arb
	fvm dart run arb_utils sort -i lib/l10n/app_ru.arb

# Spider
spider:
	spider build

# Runs flutter clean
cleanup:
	fvm flutter clean

# Makes lint
lint:
	fvm flutter analyze
	fvm dart run custom_lint

# Codegen
codegen:
	fvm dart run build_runner build --delete-conflicting-outputs

# Codegen watch
codegenw:
	fvm dart run build_runner watch --delete-conflicting-outputs

# Unit and widget tests
tests:
	fvm flutter test

# Update goldens
ug:
	fvm flutter test --update-goldens

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
	fvm use
	make set_up_arb_utils
	make pg
	make codegen
	make pods
	make lint

# Updates splash screen with flutter_native_splash
splash:
	fvm dart run flutter_native_splash:create

# Hard reset
hard_reset:
	fvm flutter clean
	rm -rf .idea
	rm -rf .dart_tool
	fvm flutter pub cache clean
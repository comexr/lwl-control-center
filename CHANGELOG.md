# Changelog

## [0.3.1] - 2019-09-18
### Added
- FEATURES.md aka general feature list
- CHANGELOG.md Basic changelog from start of versioning
- Icon to main nav exit option
- 'Discard' button for CPU profile edit

### Changed
- Current CPU frequency values are now periodically checked with active profile and rewritten if found not to be the same.
- 'Save' button on CPU profile edit relocated

## [0.3.0] - 2019-09-11
### Added
- Support feature
- systeminfos.sh download and run functionality to support area
- Anydesk install from repo and run functionality to support area
- Icons to support feature
- Icons to the main navigation

## [0.2.1] - 2019-09-05
### Added
- Fallback for displayed brightness value change. Now reads from sysfs when known dbus is not available.
- More info about backlight driver and used dbus interface

### Changed
- Application of new CPU frequency profile now sets default values for all parameters first. Then applies parameters to all cores while all cores are still online. Then disables any cores.

## [0.2.0] - 2019-09-03
### Added
- GUI for display brightness
- Functionality for tracking and controlling current brightness thorugh dbus (in GUI, for gnome only)
- Edit custom profile display brightness settings

### Changed
- Tweaks to profile manager buttons
- ESC to cancel profile name input
- More responsive update of CPU min/max frequency slider values

### Fixed
- Now disallows deleting the last custom profile to prevent emtpy custom profile list

## [0.1.2] - 2019-08-29
### Changed
- Modifications to nav menu
- Tweaks to profile-manager buttons

## [0.1.1] - 2019-08-29
### Changed
- Replace 'default' strings for default profile values with machine specific values
- Visual adjustments to cpu-settings
- Modified current editing profile logic
- Adjusted profile manager buttons

## [0.1.0] - 2019-08-28
### Added
- Profile manager feature
- Basic rename profile functionality

## [0.0.2] - 2019-08-26
### Added
- CPU frequency feature
- Editing CPU frequency features for custom profiles
- Viewing configured and "live" info from cores
- Comparing default profiles
- Basic tuxedo theme css template

## [0.0.1] - 2019-08-29
### Added
- Versioning (start of dev test versions)
- Basically start of the GUI with basic CPU frequency list for cores and Angular material framework

### Implementation before versioning
- Daemon
- Project structure
- Development features
- Etc.
# Spec Delta

## Purpose

Lets the repo build a HelloFromSwift macOS application bundle and install it into /Applications/, so the AppKit program runs as a first-class Mac app instead of a loose terminal executable.

## ADDED Requirements

### Requirement: App builds as a Release macOS bundle
The repo SHALL produce a HelloFromSwift.app bundle in Release configuration when its build is run.

#### Scenario: Release build produces the bundle
- **WHEN** the Release build command is run for the app target
- **THEN** a HelloFromSwift.app bundle is produced in the build artifacts

### Requirement: Bundle identity and Info.plist
The repo SHALL declare the app's bundle identity in its Info.plist, so the bundle appears as a first-class macOS app rather than a bare executable.

#### Scenario: Bundle declares identity
- **WHEN** the built HelloFromSwift.app bundle is inspected
- **THEN** it contains an executable named HelloFromSwift and an Info.plist declaring the app name and a bundle identifier

### Requirement: Install step drops the bundle into /Applications
The repo SHALL provide an install step that places the Release-built HelloFromSwift.app bundle into /Applications/HelloFromSwift.app.

#### Scenario: Install places the bundle
- **WHEN** the install step is run successfully
- **THEN** /Applications/HelloFromSwift.app exists and is the Release-built bundle

#### Scenario: Install replaces an existing bundle
- **WHEN** the install step is run and /Applications/HelloFromSwift.app already exists
- **THEN** the previously installed bundle is replaced and no duplicate HelloFromSwift.app is left behind

### Requirement: Local ad-hoc signing only
The repo SHALL sign the app ad-hoc for local install only, without distribution signing or notarization.

#### Scenario: Installed app runs locally
- **WHEN** the installed HelloFromSwift.app bundle is launched locally
- **THEN** it opens its window locally without needing distribution signing or notarization

### Requirement: App source is packaged unchanged
The repo SHALL keep the AppKit program (main.swift) as the single app source inside a tracked HelloFromSwift/ app directory, with content unchanged by the packaging change.

#### Scenario: App source lives in the app directory
- **WHEN** the repo is inspected after the change
- **THEN** the main.swift content is byte-identical to the source it replaced and lives at HelloFromSwift/main.swift

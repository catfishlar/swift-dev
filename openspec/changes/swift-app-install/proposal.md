# Proposal

## Why

The repo is an exploration playground for Swift development ("Exploring Swift Development"). Today its actual app is a single `main.swift` at the repo root — an AppKit program ("hi from swift") that only runs as a console script from the terminal. It has no bundle, no identity, and no install path; it cannot be launched like any other Mac app.

This change makes the program a proper Xcode macOS app: a tracked app project, an `HelloFromSwift/` app directory that holds `main.swift` (unchanged), and an install step that builds the Release bundle and drops it into `/Applications/`. The goal is to get a real `HelloFromSwift.app` installed on the user's Mac rather than a loose executable in a terminal.

## What Changes

- New tracked app project (`HelloFromSwift.xcodeproj`) with a real macOS app target — the app gets a bundle identity, Info.plist, and Dock identity.
- New `HelloFromSwift/` app directory holding `main.swift` (AppKit code moved in unchanged, no SwiftUI rewrite).
- New local install step (`install.sh`) that performs a Release build and copies the `.app` into `/Applications/`. Local installs use ad-hoc signing — no distribution signing, notarization, or entitlements.
- `.gitignore` gains Xcode user state (e.g. `*.xcuserdata`) — the project itself stays tracked, since the project is the app's source.
- **BREAKING:** none. This is a layout-and-packaging change; no published behavior is removed.

## Capabilities

### New Capabilities

- `app-installation`: the repo builds a HelloFromSwift macOS application bundle and can install it in `/Applications/` (release build + copy step).

### Modified Capabilities

- `none` — the repo currently has no specs.

## Impact

- **Code/layout:** `main.swift` moves from the repo root into `HelloFromSwift/`; it is the only source file. New: `HelloFromSwift.xcodeproj`, `HelloFromSwift/`, `install.sh`. `.gitignore` updated. `devops/`, `README.md`, and `openspec/` are untouched.
- **Build tooling:** Xcode becomes the primary build driver (`HelloFromSwift.xcodeproj` + Xcode's default schemes); `.build/`-style SwiftPM artifacts are no longer the build path.
- **Local-only app:** ad-hoc signed, notarized, or submitted anywhere. Designed for the user's own Mac to install and run; distribution is deliberately out of scope.
- **No spec deltas yet:** this proposal describes the *why*; `specs/app-installation/spec.md` (requirements), the design, and tasks follow this proposal in review.

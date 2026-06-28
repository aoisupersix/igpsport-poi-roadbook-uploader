# CLAUDE.md

A Flutter app for creating and uploading roadbooks containing POIs (Points of Interest) for iGPSPORT cycling computers.

## Tech Stack

- **Flutter**: 3.44.4 (pinned via fvm / `.fvmrc`). Always use `fvm flutter` / `fvm dart` for commands
- **State management**: hooks_riverpod + riverpod_annotation (code generation) + flutter_hooks
- **Models**: freezed + json_serializable (immutable data classes)
- **Routing**: go_router + go_router_builder (type-safe routes via code generation)
- **Localization**: slang (CSV-based, code generation)
- **Error handling**: dart_either (represent success/failure with `Either<L, R>`)
- **Lint**: flutter_lints + riverpod_lint + custom_lint

## Directory Structure (feature-first)

Split directories by feature. Place only cross-cutting, shared elements under `lib/common/`.

```text
lib/
  main.dart
  router/              # go_router definitions (type-safe routes in routes.dart, the router itself in router.dart)
  i18n/                # slang: features/<feature>_en.i18n.csv; strings.g.dart is generated
  common/              # only elements shared across multiple features
    components/        # shared Widgets
    models/            # shared models
    providers/         # shared providers
    hooks/             # shared hooks
    utils/             # extensions, constants, services, etc. (extensions/, consts.dart, ...)
  features/
    <feature>/         # e.g. poi, roadbook, route, upload, settings
      pages/           # screens (route destinations)
      components/      # Widgets specific to this feature
      models/          # models specific to this feature (freezed)
      providers/       # providers specific to this feature (riverpod)
      hooks/           # hooks specific to this feature (optional)
      utils/           # logic specific to this feature (optional)
```

### Placement Rules

- First, keep things contained within `features/<feature>/`. Don't put something used by only one feature in `common/`
- Promote to `common/` only once two or more features need to reference it
- Don't create sideways dependencies between features (feature A must not directly import feature B's internals). If sharing is needed, go through `common/`

## Code Generation

freezed / riverpod / go_router_builder / slang all rely on code generation.
`*.g.dart` / `*.freezed.dart` / `strings*.g.dart` are generated, so **do not edit them by hand** (they are also excluded from the analyzer).

```sh
# Generate once
fvm dart run build_runner build --delete-conflicting-outputs
# Recommended during development: watch
fvm dart run build_runner watch --delete-conflicting-outputs
```

After changing model or provider annotations, always regenerate before verifying behavior.

## Implementation Conventions

### Models (freezed)

- Define data classes with freezed and keep them immutable
- For classes that need JSON conversion, also use `@JsonSerializable` (json_serializable)
- Models representing state may be grouped by purpose, e.g. `models/screen_states/`

### Providers (riverpod)

- Use the `@riverpod` annotation + code generation (`riverpod_generator`). Don't write `Provider(...)` by hand
- On the UI side, subscribe via `hooks_riverpod`'s `HookConsumerWidget` / `ref.watch`
- Keep side effects and async processing in providers (Notifier / function providers) and keep Widgets thin

### Error Handling

- Don't let failable operations throw freely; return `Either<Failure, T>` (dart_either)
- Don't swallow errors; express failures with meaningful messages and types

### Routing

- Define routes as go_router_builder type-safe routes in `lib/router/routes.dart` and navigate via the generated types
- Place the screens themselves in each feature's `pages/`

### Localization (slang)

- Don't hardcode strings; add them to `lib/i18n/features/<feature>_en.i18n.csv` and reference them via the generated `t.xxx`

## Code Style

- Many additional lints are enabled in `analysis_options.yaml`. **Keep zero warnings**
- Prefer a functional approach and minimize side effects. Type strictly (avoid `any` equivalents)
- Give meaningful names to variables and functions. Avoid `foo`, `bar`, `data`, etc.
- Write comments, commit messages in English

## Git / Commit Messages

- **This project overrides the global rule.** The global `~/.claude/CLAUDE.md`
  says commit bodies should be in Japanese, but in this repository **both the
  commit subject and body MUST be written in English** (Conventional Commits
  format). When the project rule and the global rule conflict, the project rule
  wins.
- Keep using Conventional Commits (`feat:`, `fix:`, `chore:`, `ci:`, `docs:`, ...).

## Common Commands

```sh
fvm flutter pub get                      # fetch dependencies
fvm flutter analyze                      # static analysis (includes custom_lint)
fvm dart run custom_lint                 # run custom_lint standalone (riverpod_lint, etc.)
fvm dart format .                        # format
fvm flutter test                         # test
fvm flutter run                          # run
```

## Prohibitions / Notes

- Do not hand-edit generated files (`*.g.dart` / `*.freezed.dart` / `strings*.g.dart`)
- Do not run bare `flutter` / `dart` without `fvm` (prevents version drift)
- Do not create direct dependencies across features (share via `common/`)
- Do not commit or push without confirmation

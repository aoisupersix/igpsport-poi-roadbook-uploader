# igpsport_poi_roadbook_uploader

![App icon](assets/images/app_icon.png)

A Flutter app for creating and uploading roadbooks containing POIs (Points of
Interest) for iGPSPORT cycling computers.

## How it works

The app signs in to iGPSPORT using HTTP sessions that mimic the browser and the
official app, then:

1. Uploads a GPX route as a roadbook to the web upload endpoint
2. Sets the roadbook's visibility via the service API (Bearer authentication)
3. Registers POIs (auxiliary points) through the same API

> [!WARNING]
> This app relies on iGPSPORT's **unofficial, undocumented web/service APIs**.
> It may stop working without notice if those change. This is an unofficial app,
> is not affiliated with iGPSPORT, and is used at your own risk.

## Development

Flutter is pinned via fvm (`.fvmrc`), so always run commands through `fvm`.

```sh
fvm flutter pub get                                  # fetch dependencies
fvm dart run build_runner watch -d                   # code generation (watch)
fvm flutter run                                       # run the app
fvm flutter analyze                                   # static analysis
fvm flutter test                                      # run tests
```

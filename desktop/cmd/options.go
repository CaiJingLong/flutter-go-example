package main

import (
    "github.com/caijinglong/go-flutter-plugin/version"
    "github.com/go-flutter-desktop/go-flutter"
)

var options = []flutter.Option{
    flutter.WindowInitialDimensions(800, 1280),
    flutter.AddPlugin(version.VersionPlugin{}),
}

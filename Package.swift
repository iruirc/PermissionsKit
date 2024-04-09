// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "PermissionsKit",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11),
        .watchOS(.v3)
    ],
    products: [
        .library(
            name: "CameraPermission",
            type: .dynamic,
            targets: ["CameraPermission"]
        ),
        .library(
            name: "PhotoLibraryPermission",
            type: .dynamic,
            targets: ["PhotoLibraryPermission"]
        ),
        .library(
            name: "NotificationPermission",
            type: .dynamic,
            targets: ["NotificationPermission"]
        ),
        .library(
            name: "MicrophonePermission",
            type: .dynamic,
            targets: ["MicrophonePermission"]
        ),
        .library(
            name: "CalendarPermission",
            type: .dynamic,
            targets: ["CalendarPermission"]
        ),
        .library(
            name: "ContactsPermission",
            type: .dynamic,
            targets: ["ContactsPermission"]
        ),
        .library(
            name: "RemindersPermission",
            type: .dynamic,
            targets: ["RemindersPermission"]
        ),
        .library(
            name: "SpeechRecognizerPermission",
            type: .dynamic,
            targets: ["SpeechRecognizerPermission"]
        ),
        .library(
            name: "LocationPermission",
            type: .dynamic,
            targets: ["LocationPermission"]
        ),
        .library(
            name: "MotionPermission",
            type: .dynamic,
            targets: ["MotionPermission"]
        ),
        .library(
            name: "MediaLibraryPermission",
            type: .dynamic,
            targets: ["MediaLibraryPermission"]
        ),
        .library(
            name: "BluetoothPermission",
            type: .dynamic,
            targets: ["BluetoothPermission"]
        ),
        .library(
            name: "TrackingPermission",
            type: .dynamic,
            targets: ["TrackingPermission"]
        ),
        .library(
            name: "FaceIDPermission",
            type: .dynamic,
            targets: ["FaceIDPermission"]
        ),
        .library(
            name: "SiriPermission",
            type: .dynamic,
            targets: ["SiriPermission"]
        ),
        .library(
            name: "HealthPermission",
            type: .dynamic,
            targets: ["HealthPermission"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "PermissionsKit",
            resources: [
                .process("Resources")
            ],
            swiftSettings: [
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "CameraPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_CAMERA"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "PhotoLibraryPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_PHOTOLIBRARY"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "NotificationPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_NOTIFICATION"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "MicrophonePermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_MICROPHONE"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "CalendarPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_CALENDAR"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "ContactsPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_CONTACTS"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "RemindersPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_REMINDERS"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "SpeechRecognizerPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_SPEECH"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "LocationPermission",
            dependencies: [
                .target(name: "PermissionsKit")
            ],
            swiftSettings: [
                .define("PERMISSIONSKIT_LOCATION"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "MotionPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_MOTION"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "MediaLibraryPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_MEDIA_LIBRARY"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "BluetoothPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_BLUETOOTH"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "TrackingPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_TRACKING"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "FaceIDPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_FACEID"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "SiriPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_SIRI"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
        .target(
            name: "HealthPermission",
            dependencies: [.target(name: "PermissionsKit")],
            swiftSettings: [
                .define("PERMISSIONSKIT_HEALTH"),
                .define("PERMISSIONSKIT_SPM")
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)

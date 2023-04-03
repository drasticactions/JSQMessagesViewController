// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "JSQMessagesViewController",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "JSQMessagesViewController",
            targets: ["JSQMessagesViewController"]
        )
    ],
    targets: [
        .target(
            name: "JSQMessagesViewController",
            path: "JSQMessagesViewController"
        )
    ]
)

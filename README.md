# llama-xcframework

[llama.cpp](https://github.com/ggml-org/llama.cpp) compiled as an iOS xcframework (device `ios-arm64` and simulator `ios-arm64_x86_64-simulator`, Metal shaders embedded), published as a Swift package for the Ashentale app.

Upstream's release zip has shipped without the simulator slice since b10509, and `mattt/llama.swift` stopped at b10549. This package fills the gap.

```swift
.package(url: "https://github.com/Ashentale/llama-xcframework", exact: "1.12212.0")
```

Then `import llama` for the C API.

| Package version | llama.cpp |
|---|---|
| 1.12212.0 | b12212 |

Each release also carries the device dSYM (`llama-ios-arm64.dSYM.zip`) for crash symbolication.

llama.cpp is MIT licensed, see [LICENSE](LICENSE).

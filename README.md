# daliuren4swift

Swift 原生大六壬排盘 SDK，历法使用 `LunarSwift`，SwiftPM 资源内置三传规则表。要求 Swift 5.5+，运行时不依赖 Node.js 或其他语言。

```swift
let input: [String: Any] = [
    "date": "2026-09-04", "hour": 18, "minute": 0,
    "timezone": "Asia/Shanghai",
]
let chart = try calculateDaliuren(input)
let canonical = try canonicalDaliuren(input)
```

`calculateDaliuren` 返回完整结构化盘面，`canonicalDaliuren` 返回规范 JSON。当前算法版本为 `daliuren-shizhan-v1`。

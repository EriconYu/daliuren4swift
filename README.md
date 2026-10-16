# daliuren4swift

Swift 大六壬排盘 SDK，SwiftPM 资源内置经过版本锁定的排盘引擎。要求 Swift 5.5+ 和 Node.js 20+。

```swift
let input: [String: Any] = [
    "date": "2026-09-04", "hour": 18, "minute": 0,
    "timezone": "Asia/Shanghai",
]
let chart = try calculateDaliuren(input)
let canonical = try canonicalDaliuren(input)
```

`calculateDaliuren` 返回完整结构化盘面，`canonicalDaliuren` 返回规范 JSON。当前算法版本为 `daliuren-shizhan-v1`。

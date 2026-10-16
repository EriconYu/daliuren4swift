// swift-tools-version:5.5
import PackageDescription
let package=Package(name:"Daliuren",products:[.library(name:"Daliuren",targets:["Daliuren"])],dependencies:[.package(url:"https://github.com/6tail/lunar-swift.git",from:"1.0.0")],targets:[.target(name:"Daliuren",dependencies:[.product(name:"LunarSwift",package:"lunar-swift")],resources:[.copy("sanchuan.json")]),.testTarget(name:"DaliurenTests",dependencies:["Daliuren"])])

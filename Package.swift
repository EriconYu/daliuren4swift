// swift-tools-version:5.5
import PackageDescription
let package=Package(name:"Daliuren",products:[.library(name:"Daliuren",targets:["Daliuren"])],targets:[.target(name:"Daliuren",resources:[.copy("engine.cjs")]),.testTarget(name:"DaliurenTests",dependencies:["Daliuren"])])

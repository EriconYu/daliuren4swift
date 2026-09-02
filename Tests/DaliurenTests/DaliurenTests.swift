import XCTest
@testable import Daliuren
final class DaliurenTests:XCTestCase{
 func testSmoke()throws{let r=try calculateDaliuren(["date":"2026-04-10","hour":14,"minute":30,"timezone":"Asia/Shanghai"]);XCTAssertEqual((r["gongInfos"] as? [Any])?.count,12)}
 func testLateZi()throws{let a=try calculateDaliuren(["date":"2026-04-10","hour":23,"minute":30,"timezone":"Asia/Shanghai"]);let b=try calculateDaliuren(["date":"2026-04-11","hour":0,"minute":30,"timezone":"Asia/Shanghai"]);let ag=((a["dateInfo"] as! [String:Any])["ganZhi"] as! [String:Any]);let bg=((b["dateInfo"] as! [String:Any])["ganZhi"] as! [String:Any]);XCTAssertEqual(ag["day"] as? String,bg["day"] as? String);XCTAssertEqual(ag["hour"] as? String,bg["hour"] as? String)}
}

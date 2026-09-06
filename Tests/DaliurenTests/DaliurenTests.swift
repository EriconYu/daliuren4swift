import XCTest
@testable import Daliuren

final class DaliurenTests: XCTestCase {
    func testFixedChartAndNightBoundary() throws {
        let result = try calculateDaliuren([
            "date": "2026-09-04", "hour": 18, "minute": 0,
            "timezone": "Asia/Shanghai",
        ])
        XCTAssertEqual(result["algorithmVersion"] as? String, "daliuren-shizhan-v1")
        let dateInfo = result["dateInfo"] as? [String: Any]
        XCTAssertEqual(dateInfo?["diurnal"] as? Bool, false)
        XCTAssertEqual(dateInfo?["yueJiang"] as? String, "巳")
        let transmission = result["sanChuan"] as? [String: Any]
        XCTAssertEqual((transmission?["chu"] as? [Any])?.first as? String, "午")
        XCTAssertEqual(transmission?["method"] as? String, "元首")
        XCTAssertEqual((result["gongInfos"] as? [Any])?.count, 12)
    }

    func testExactSolarTermTransition() throws {
        let before = try calculateDaliuren([
            "date": "2026-02-18", "hour": 22, "minute": 0,
            "timezone": "Asia/Shanghai",
        ])
        let after = try calculateDaliuren([
            "date": "2026-02-18", "hour": 23, "minute": 55,
            "timezone": "Asia/Shanghai",
        ])
        XCTAssertEqual((before["dateInfo"] as? [String: Any])?["yueJiang"] as? String, "子")
        XCTAssertEqual((after["dateInfo"] as? [String: Any])?["yueJiang"] as? String, "亥")
    }

    func testCanonical() throws {
        let result = try canonicalDaliuren([
            "date": "2026-09-04", "hour": 18, "minute": 0,
            "timezone": "Asia/Shanghai",
        ])
        XCTAssertEqual((result["三传"] as? [Any])?.count, 3)
        XCTAssertEqual((result["天地盘"] as? [Any])?.count, 12)
    }
}

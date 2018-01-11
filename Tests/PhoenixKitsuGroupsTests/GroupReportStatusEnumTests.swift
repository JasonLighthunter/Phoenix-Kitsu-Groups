import XCTest
@testable import PhoenixKitsuGroups

class GroupReportStatusEnumTests: XCTestCase {
  func testGroupReportStatusEnum() {
    XCTAssertEqual(GroupReportStatusEnum(rawValue: "reported"), GroupReportStatusEnum.reported)
    XCTAssertEqual(GroupReportStatusEnum(rawValue: "resolved"), GroupReportStatusEnum.resolved)
    XCTAssertEqual(GroupReportStatusEnum(rawValue: "declined"), GroupReportStatusEnum.declined)
    XCTAssertNil(GroupReportStatusEnum(rawValue: "InvalidInput"))
  }
}

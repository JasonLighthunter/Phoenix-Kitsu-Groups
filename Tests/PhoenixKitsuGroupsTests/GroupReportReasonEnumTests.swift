import XCTest
@testable import PhoenixKitsuGroups

class GroupReportReasonEnumTests: XCTestCase {
  func testGroupReportReasonEnum() {
    XCTAssertEqual(GroupReportReasonEnum(rawValue: "nsfw"), GroupReportReasonEnum.nsfw)
    XCTAssertEqual(GroupReportReasonEnum(rawValue: "offensive"), GroupReportReasonEnum.offensive)
    XCTAssertEqual(GroupReportReasonEnum(rawValue: "spoiler"), GroupReportReasonEnum.spoiler)
    XCTAssertEqual(GroupReportReasonEnum(rawValue: "bullying"), GroupReportReasonEnum.bullying)
    XCTAssertEqual(GroupReportReasonEnum(rawValue: "other"), GroupReportReasonEnum.other)
    XCTAssertEqual(GroupReportReasonEnum(rawValue: "spam"), GroupReportReasonEnum.spam)
    XCTAssertNil(GroupReportReasonEnum(rawValue: "InvalidInput"))
  }
}

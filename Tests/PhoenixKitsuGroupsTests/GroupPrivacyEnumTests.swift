import XCTest
@testable import PhoenixKitsuGroups

class GroupPrivacyEnumTests: XCTestCase {
  func testGroupPrivacyEnum() {
    XCTAssertEqual(GroupPrivacyEnum(rawValue: "open"), GroupPrivacyEnum.open)
    XCTAssertEqual(GroupPrivacyEnum(rawValue: "closed"), GroupPrivacyEnum.closed)
    XCTAssertEqual(GroupPrivacyEnum(rawValue: "restricted"), GroupPrivacyEnum.restricted)
    XCTAssertNil(GroupPrivacyEnum(rawValue: "InvalidInput"))
  }
}

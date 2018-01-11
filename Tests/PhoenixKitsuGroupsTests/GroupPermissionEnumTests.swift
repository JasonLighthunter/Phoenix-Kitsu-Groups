import XCTest
@testable import PhoenixKitsuGroups

class GroupPermissionEnumTests: XCTestCase {
  func testGroupPermissionEnum() {
    XCTAssertEqual(GroupPermissionEnum(rawValue: "owner"), GroupPermissionEnum.owner)
    XCTAssertEqual(GroupPermissionEnum(rawValue: "tickets"), GroupPermissionEnum.tickets)
    XCTAssertEqual(GroupPermissionEnum(rawValue: "members"), GroupPermissionEnum.members)
    XCTAssertEqual(GroupPermissionEnum(rawValue: "leaders"), GroupPermissionEnum.leaders)
    XCTAssertEqual(GroupPermissionEnum(rawValue: "community"), GroupPermissionEnum.community)
    XCTAssertEqual(GroupPermissionEnum(rawValue: "content"), GroupPermissionEnum.content)
    XCTAssertNil(GroupPermissionEnum(rawValue: "InvalidInput"))
  }
}

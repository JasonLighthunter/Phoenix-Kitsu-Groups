import XCTest
@testable import PhoenixKitsuGroups

class GroupMemberRankEnumTests: XCTestCase {
  func testGroupMemberRankEnum() {
    XCTAssertEqual(GroupMemberRankEnum(rawValue: "pleb"), GroupMemberRankEnum.pleb)
    XCTAssertEqual(GroupMemberRankEnum(rawValue: "mod"), GroupMemberRankEnum.mod)
    XCTAssertEqual(GroupMemberRankEnum(rawValue: "admin"), GroupMemberRankEnum.admin)
    XCTAssertNil(GroupMemberRankEnum(rawValue: "InvalidInput"))
  }
}

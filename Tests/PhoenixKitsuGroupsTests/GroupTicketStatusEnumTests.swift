import XCTest
@testable import PhoenixKitsuGroups

class GroupTicketStatusEnumTests: XCTestCase {
  func testGroupTicketStatusEnum() {
    XCTAssertEqual(GroupTicketStatusEnum(rawValue: "created"), GroupTicketStatusEnum.created)
    XCTAssertEqual(GroupTicketStatusEnum(rawValue: "assigned"), GroupTicketStatusEnum.assigned)
    XCTAssertEqual(GroupTicketStatusEnum(rawValue: "resolved"), GroupTicketStatusEnum.resolved)
    XCTAssertNil(GroupTicketMessageKindEnum(rawValue: "InvalidInput"))
  }
}

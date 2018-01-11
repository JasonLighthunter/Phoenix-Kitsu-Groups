import XCTest
@testable import PhoenixKitsuGroups

class GroupTicketMessageKindEnumTests: XCTestCase {
  func testGroupTicketMessageKindEnum() {
    XCTAssertEqual(GroupTicketMessageKindEnum(rawValue: "message"),
                   GroupTicketMessageKindEnum.message)
    XCTAssertEqual(GroupTicketMessageKindEnum(rawValue: "mod_note"),
                   GroupTicketMessageKindEnum.modNote)
    XCTAssertNil(GroupTicketMessageKindEnum(rawValue: "InvalidInput"))
  }
}

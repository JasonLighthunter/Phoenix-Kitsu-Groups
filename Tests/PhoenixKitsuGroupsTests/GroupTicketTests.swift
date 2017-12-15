import XCTest
@testable import PhoenixKitsuGroups

class GroupTicketTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "1",
    "type": "groupTickets",
    "links": [
      "self": "https://kitsu.io/api/edge/group-tickets/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "status": "resolved"
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupTickets",
    "links": [
      "self": "https://kitsu.io/api/edge/group-tickets/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "status": "resolved"
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupTickets",
    "links": [
      "self": "https://kitsu.io/api/edge/group-tickets/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "status": "resolved"
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupTickets",
    "links": [
      "self": "https://kitsu.io/api/edge/group-tickets/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "status": "resolved"
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupTickets",
    "links": [
      "self": "https://kitsu.io/api/edge/group-tickets/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": nil,
      "status": "resolved"
    ]
  ]
  
  var groupTicket: GroupTicket?
  var groupTicketAttributes: GroupTicketAttributes?
  
  override func tearDown() {
    groupTicket = nil
    groupTicketAttributes = nil
    
    super.tearDown()
  }
  
  func testGroupTicketFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupTicket = try? decoder.decode(GroupTicket.self, from: data!)
    } else {
      groupTicket = nil
    }
    groupTicketAttributes = groupTicket?.attributes
    
    XCTAssertNotNil(groupTicket)
    
    XCTAssertEqual(groupTicket?.objectID, "1")
    XCTAssertEqual(groupTicket?.type, "groupTickets")
    
    XCTAssertNotNil(groupTicket?.links)
    
    XCTAssertNotNil(groupTicketAttributes)
    
    XCTAssertEqual(groupTicketAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupTicketAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupTicketAttributes?.status, GroupTicketStatusEnum.resolved)
  }
  
  func testGroupTicketValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupTicket = try? decoder.decode(GroupTicket.self, from: data!)
    } else {
      groupTicket = nil
    }
    groupTicketAttributes = groupTicket?.attributes
    
    XCTAssertNotNil(groupTicket)
    
    XCTAssertEqual(groupTicket?.objectID, "1")
    XCTAssertEqual(groupTicket?.type, "groupTickets")
    
    XCTAssertNotNil(groupTicket?.links)
    
    XCTAssertNotNil(groupTicketAttributes)
    
    XCTAssertEqual(groupTicketAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupTicketAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupTicketAttributes?.status, GroupTicketStatusEnum.resolved)
  }
  
  func testGroupTicketValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupTicket = try? decoder.decode(GroupTicket.self, from: data!)
    } else {
      groupTicket = nil
    }
    groupTicketAttributes = groupTicket?.attributes
    
    XCTAssertNotNil(groupTicket)
    
    XCTAssertEqual(groupTicket?.objectID, "1")
    XCTAssertEqual(groupTicket?.type, "groupTickets")
    
    XCTAssertNotNil(groupTicket?.links)
    
    XCTAssertNotNil(groupTicketAttributes)
    
    XCTAssertEqual(groupTicketAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupTicketAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupTicketAttributes?.status, GroupTicketStatusEnum.resolved)
  }
  
  func testGroupTicketInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupTicket = try? decoder.decode(GroupTicket.self, from: data!)
    } else {
      groupTicket = nil
    }
    
    XCTAssertNil(groupTicket)
  }
  
  func testGroupTicketInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupTicket = try? decoder.decode(GroupTicket.self, from: data!)
    } else {
      groupTicket = nil
    }
    
    XCTAssertNil(groupTicket)
  }
}




import XCTest
@testable import PhoenixKitsuGroups

class GroupTicketMessageTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "1",
    "type": "groupTicketMessages",
    "links": [
      "self": "https://kitsu.io/api/edge/group-ticket-messages/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "kind": "message",
      "content": "Could u please add this"
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupTicketMessages",
    "links": [
      "self": "https://kitsu.io/api/edge/group-reports/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "kind": "message",
      "content": "Could u please add this"
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupTicketMessages",
    "links": [
      "self": "https://kitsu.io/api/edge/group-reports/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "kind": "message",
      "content": "Could u please add this"
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupTicketMessages",
    "links": [
      "self": "https://kitsu.io/api/edge/group-reports/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "kind": "message",
      "content": "Could u please add this recap episode"
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupTicketMessages",
    "links": [
      "self": "https://kitsu.io/api/edge/group-reports/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "kind": "message",
      "content": nil
    ]
  ]
  
  var groupTicketMessage: GroupTicketMessage?
  var groupTicketMessageAttributes: GroupTicketMessageAttributes?
  
  override func tearDown() {
    groupTicketMessage = nil
    groupTicketMessageAttributes = nil
    
    super.tearDown()
  }
  
  func testGroupTicketMessageFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupTicketMessage = try? decoder.decode(GroupTicketMessage.self, from: data!)
    } else {
      groupTicketMessage = nil
    }
    groupTicketMessageAttributes = groupTicketMessage?.attributes
    
    XCTAssertNotNil(groupTicketMessage)
    
    XCTAssertEqual(groupTicketMessage?.objectID, "1")
    XCTAssertEqual(groupTicketMessage?.type, "groupTicketMessages")
    
    XCTAssertNotNil(groupTicketMessage?.links)
    
    XCTAssertNotNil(groupTicketMessageAttributes)
    
    XCTAssertEqual(groupTicketMessageAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupTicketMessageAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupTicketMessageAttributes?.kind, GroupTicketMessageKindEnum.message)
    XCTAssertEqual(groupTicketMessageAttributes?.content, "Could u please add this")
  }
  
  func testGroupTicketMessageValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupTicketMessage = try? decoder.decode(GroupTicketMessage.self, from: data!)
    } else {
      groupTicketMessage = nil
    }
    groupTicketMessageAttributes = groupTicketMessage?.attributes
    
    XCTAssertNotNil(groupTicketMessage)
    
    XCTAssertEqual(groupTicketMessage?.objectID, "1")
    XCTAssertEqual(groupTicketMessage?.type, "groupTicketMessages")
    
    XCTAssertNotNil(groupTicketMessage?.links)
    
    XCTAssertNotNil(groupTicketMessageAttributes)
    
    XCTAssertEqual(groupTicketMessageAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupTicketMessageAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupTicketMessageAttributes?.kind, GroupTicketMessageKindEnum.message)
    XCTAssertEqual(groupTicketMessageAttributes?.content, "Could u please add this")
  }
  
  func testGroupTicketMessageValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupTicketMessage = try? decoder.decode(GroupTicketMessage.self, from: data!)
    } else {
      groupTicketMessage = nil
    }
    groupTicketMessageAttributes = groupTicketMessage?.attributes
    
    XCTAssertNotNil(groupTicketMessage)
    
    XCTAssertEqual(groupTicketMessage?.objectID, "1")
    XCTAssertEqual(groupTicketMessage?.type, "groupTicketMessages")
    
    XCTAssertNotNil(groupTicketMessage?.links)
    
    XCTAssertNotNil(groupTicketMessageAttributes)
    
    XCTAssertEqual(groupTicketMessageAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupTicketMessageAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupTicketMessageAttributes?.kind, GroupTicketMessageKindEnum.message)
    XCTAssertEqual(groupTicketMessageAttributes?.content, "Could u please add this")
  }
  
  func testGroupTicketMessageInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupTicketMessage = try? decoder.decode(GroupTicketMessage.self, from: data!)
    } else {
      groupTicketMessage = nil
    }
    
    XCTAssertNil(groupTicketMessage)
  }
  
  func testGroupTicketMessageInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupTicketMessage = try? decoder.decode(GroupTicketMessage.self, from: data!)
    } else {
      groupTicketMessage = nil
    }
    
    XCTAssertNil(groupTicketMessage)
  }
}



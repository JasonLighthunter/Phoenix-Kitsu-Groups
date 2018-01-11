import XCTest
@testable import PhoenixKitsuGroups

class GroupActionLogTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "1",
    "type": "groupActionLogs",
    "links": [
      "self": "https://kitsu.io/api/edge/group-action-logs/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "verb": "about_changed"
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupActionLogs",
    "links": [
      "self": "https://kitsu.io/api/edge/group-action-logs/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "verb": "about_changed"
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupActionLogs",
    "links": [
      "self": "https://kitsu.io/api/edge/group-action-logs/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": nil,
      "verb" : "about_changed"
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupActionLogs",
    "links": [
      "self": "https://kitsu.io/api/edge/group-action-logs/1"
    ],
    "attributes": [
      "verb": "about_changed"
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupActionLogs",
    "links": [
      "self": "https://kitsu.io/api/edge/group-action-logs/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "verb": nil
    ]
  ]
  
  var groupActionLog: GroupActionLog?
  var groupActionLogAttributes: GroupActionLogAttributes?
  
  override func tearDown() {
    groupActionLog = nil
    groupActionLogAttributes = nil
    
    super.tearDown()
  }
  
  func testGroupActionLogFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupActionLog = try? decoder.decode(GroupActionLog.self, from: data!)
    } else {
      groupActionLog = nil
    }
    groupActionLogAttributes = groupActionLog?.attributes
    
    XCTAssertNotNil(groupActionLog)
    
    XCTAssertEqual(groupActionLog?.objectID, "1")
    XCTAssertEqual(groupActionLog?.type, "groupActionLogs")
    
    XCTAssertNotNil(groupActionLog?.links)
    
    XCTAssertNotNil(groupActionLogAttributes)
    
    XCTAssertEqual(groupActionLogAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupActionLogAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupActionLogAttributes?.verb, "about_changed")
  }
  
  func testGroupActionLogValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupActionLog = try? decoder.decode(GroupActionLog.self, from: data!)
    } else {
      groupActionLog = nil
    }
    groupActionLogAttributes = groupActionLog?.attributes
    
    XCTAssertNotNil(groupActionLog)
    
    XCTAssertEqual(groupActionLog?.objectID, "1")
    XCTAssertEqual(groupActionLog?.type, "groupActionLogs")
    
    XCTAssertNotNil(groupActionLog?.links)
    
    XCTAssertNotNil(groupActionLogAttributes)
    
    XCTAssertEqual(groupActionLogAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertNil(groupActionLogAttributes?.updatedAt)
    XCTAssertEqual(groupActionLogAttributes?.verb, "about_changed")
  }
  
  func testGroupActionLogValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupActionLog = try? decoder.decode(GroupActionLog.self, from: data!)
    } else {
      groupActionLog = nil
    }
    groupActionLogAttributes = groupActionLog?.attributes
    
    XCTAssertNotNil(groupActionLog)
    
    XCTAssertEqual(groupActionLog?.objectID, "1")
    XCTAssertEqual(groupActionLog?.type, "groupActionLogs")
    
    XCTAssertNotNil(groupActionLog?.links)
    
    XCTAssertNotNil(groupActionLogAttributes)
    
    XCTAssertEqual(groupActionLogAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertNil(groupActionLogAttributes?.updatedAt)
    XCTAssertEqual(groupActionLogAttributes?.verb, "about_changed")
  }
  
  func testGroupActionLogInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupActionLog = try? decoder.decode(GroupActionLog.self, from: data!)
    } else {
      groupActionLog = nil
    }
    groupActionLogAttributes = groupActionLog?.attributes
    
    XCTAssertNotNil(groupActionLog)
    
    XCTAssertEqual(groupActionLog?.objectID, "1")
    XCTAssertEqual(groupActionLog?.type, "groupActionLogs")
    
    XCTAssertNotNil(groupActionLog?.links)
    
    XCTAssertNil(groupActionLogAttributes)
  }
  
  func testGroupActionLogInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupActionLog = try? decoder.decode(GroupActionLog.self, from: data!)
    } else {
      groupActionLog = nil
    }
    groupActionLogAttributes = groupActionLog?.attributes
    
    XCTAssertNotNil(groupActionLog)
    
    XCTAssertEqual(groupActionLog?.objectID, "1")
    XCTAssertEqual(groupActionLog?.type, "groupActionLogs")
    
    XCTAssertNotNil(groupActionLog?.links)
    
    XCTAssertNil(groupActionLogAttributes)
  }
}





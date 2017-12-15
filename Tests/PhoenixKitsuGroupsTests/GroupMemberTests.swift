import XCTest
@testable import PhoenixKitsuGroups

class GroupMemberTests: XCTestCase {
  let decoder = JSONDecoder()

  let fullyFilledJSON: [String : Any] = [
    "id": "1",
    "type": "group-members",
    "links": [
      "self": "https://kitsu.io/api/edge/group-members/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "rank": "mod",
      "unreadCount": 4
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "group-members",
    "links": [
      "self": "https://kitsu.io/api/edge/group-members/1"
    ],
    "attributes": [
      "rank": "mod",
      "unreadCount": 4
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "group-members",
    "links": [
      "self": "https://kitsu.io/api/edge/group-members/1"
    ],
    "attributes": [
      "createdAt": nil,
      "updatedAt": nil,
      "rank": "mod",
      "unreadCount": 4
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "group-members",
    "links": [
      "self": "https://kitsu.io/api/edge/group-members/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "unreadCount": 4
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": nil,
    "type": "group-members",
    "links": [
      "self": "https://kitsu.io/api/edge/group-members/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "rank": nil,
      "unreadCount": 4
    ]
  ]
  
  var groupMember: GroupMember?
  var groupMemberAttributes: GroupMemberAttributes?
  
  override func tearDown() {
    groupMember = nil
    groupMemberAttributes = nil
    
    super.tearDown()
  }
  
  func testGroupMemberFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupMember = try? decoder.decode(GroupMember.self, from: data!)
    } else {
      groupMember = nil
    }
    groupMemberAttributes = groupMember?.attributes
    
    XCTAssertNotNil(groupMember)
    
    XCTAssertEqual(groupMember?.objectID, "1")
    XCTAssertEqual(groupMember?.type, "group-members")
    
    XCTAssertNotNil(groupMember?.links)
    
    XCTAssertNotNil(groupMemberAttributes)
    
    XCTAssertEqual(groupMemberAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupMemberAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupMemberAttributes?.rank, GroupMemberRankEnum.mod)
    XCTAssertEqual(groupMemberAttributes?.unreadCount, 4)
  }
  
  func testGroupMemberValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupMember = try? decoder.decode(GroupMember.self, from: data!)
    } else {
      groupMember = nil
    }
    groupMemberAttributes = groupMember?.attributes
    
    XCTAssertNotNil(groupMember)
    
    XCTAssertEqual(groupMember?.objectID, "1")
    XCTAssertEqual(groupMember?.type, "group-members")
    
    XCTAssertNotNil(groupMember?.links)
    
    XCTAssertNotNil(groupMemberAttributes)
    
    XCTAssertNil(groupMemberAttributes?.createdAt)
    XCTAssertNil(groupMemberAttributes?.updatedAt)
    XCTAssertEqual(groupMemberAttributes?.rank, GroupMemberRankEnum.mod)
    XCTAssertEqual(groupMemberAttributes?.unreadCount, 4)
  }
  
  func testGroupMemberValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupMember = try? decoder.decode(GroupMember.self, from: data!)
    } else {
      groupMember = nil
    }
    groupMemberAttributes = groupMember?.attributes
    
    XCTAssertNotNil(groupMember)
    
    XCTAssertEqual(groupMember?.objectID, "1")
    XCTAssertEqual(groupMember?.type, "group-members")
    
    XCTAssertNotNil(groupMember?.links)
    
    XCTAssertNotNil(groupMemberAttributes)
    
    XCTAssertNil(groupMemberAttributes?.createdAt)
    XCTAssertNil(groupMemberAttributes?.updatedAt)
    XCTAssertEqual(groupMemberAttributes?.rank, GroupMemberRankEnum.mod)
    XCTAssertEqual(groupMemberAttributes?.unreadCount, 4)
  }
  
  func testGroupMemberInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupMember = try? decoder.decode(GroupMember.self, from: data!)
    } else {
      groupMember = nil
    }
    
    XCTAssertNil(groupMember)
  }
  
  func testGroupMemberInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupMember = try? decoder.decode(GroupMember.self, from: data!)
    } else {
      groupMember = nil
    }
    
    XCTAssertNil(groupMember)
  }
}





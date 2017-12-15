import XCTest
@testable import PhoenixKitsuGroups

class GroupInviteTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "1",
    "type": "groupInvites",
    "links": [
      "self": "https://kitsu.io/api/edge/group-invites/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "acceptedAt": "2017-10-26T20:51:24.215Z",
      "declinedAt": "2017-10-26T20:51:24.215Z",
      "revokedAt": "2017-10-26T20:51:24.215Z"
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupInvites",
    "links": [
      "self": "https://kitsu.io/api/edge/group-invites/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupInvites",
    "links": [
      "self": "https://kitsu.io/api/edge/group-invites/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "acceptedAt": nil,
      "declinedAt": nil,
      "revokedAt": nil
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupInvites",
    "links": [
      "self": "https://kitsu.io/api/edge/group-invites/1"
    ],
    "attributes": [
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "acceptedAt": "2017-10-26T20:51:24.215Z",
      "declinedAt": "2017-10-26T20:51:24.215Z",
      "revokedAt": "2017-10-26T20:51:24.215Z"
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupInvites",
    "links": [
      "self": "https://kitsu.io/api/edge/group-invites/1"
    ],
    "attributes": [
      "createdAt": nil,
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "acceptedAt": "2017-10-26T20:51:24.215Z",
      "declinedAt": "2017-10-26T20:51:24.215Z",
      "revokedAt": "2017-10-26T20:51:24.215Z"
    ]
  ]
  
  var groupInvite: GroupInvite?
  var groupInviteAttributes: GroupInviteAttributes?
  
  override func tearDown() {
    groupInvite = nil
    groupInviteAttributes = nil
    
    super.tearDown()
  }
  
  func testGroupInviteFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupInvite = try? decoder.decode(GroupInvite.self, from: data!)
    } else {
      groupInvite = nil
    }
    groupInviteAttributes = groupInvite?.attributes
    
    XCTAssertNotNil(groupInvite)
    
    XCTAssertEqual(groupInvite?.objectID, "1")
    XCTAssertEqual(groupInvite?.type, "groupInvites")
    
    XCTAssertNotNil(groupInvite?.links)
    
    XCTAssertNotNil(groupInviteAttributes)
    
    XCTAssertEqual(groupInviteAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupInviteAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupInviteAttributes?.acceptedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupInviteAttributes?.declinedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupInviteAttributes?.revokedAt, "2017-10-26T20:51:24.215Z")
  }
  
  func testGroupInviteValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupInvite = try? decoder.decode(GroupInvite.self, from: data!)
    } else {
      groupInvite = nil
    }
    groupInviteAttributes = groupInvite?.attributes
    
    XCTAssertNotNil(groupInvite)
    
    XCTAssertEqual(groupInvite?.objectID, "1")
    XCTAssertEqual(groupInvite?.type, "groupInvites")
    
    XCTAssertNotNil(groupInvite?.links)
    
    XCTAssertNotNil(groupInviteAttributes)
    
    XCTAssertEqual(groupInviteAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupInviteAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertNil(groupInviteAttributes?.acceptedAt)
    XCTAssertNil(groupInviteAttributes?.declinedAt)
    XCTAssertNil(groupInviteAttributes?.revokedAt)
  }
  
  func testGroupInviteValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupInvite = try? decoder.decode(GroupInvite.self, from: data!)
    } else {
      groupInvite = nil
    }
    groupInviteAttributes = groupInvite?.attributes
    
    XCTAssertNotNil(groupInvite)
    
    XCTAssertEqual(groupInvite?.objectID, "1")
    XCTAssertEqual(groupInvite?.type, "groupInvites")
    
    XCTAssertNotNil(groupInvite?.links)
    
    XCTAssertNotNil(groupInviteAttributes)
    
    XCTAssertEqual(groupInviteAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupInviteAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertNil(groupInviteAttributes?.acceptedAt)
    XCTAssertNil(groupInviteAttributes?.declinedAt)
    XCTAssertNil(groupInviteAttributes?.revokedAt)
  }
  
  func testGroupInviteInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupInvite = try? decoder.decode(GroupInvite.self, from: data!)
    } else {
      groupInvite = nil
    }
    
    XCTAssertNil(groupInvite)
  }
  
  func testGroupInviteInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupInvite = try? decoder.decode(GroupInvite.self, from: data!)
    } else {
      groupInvite = nil
    }
    
    XCTAssertNil(groupInvite)
  }
}





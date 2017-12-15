import XCTest
@testable import PhoenixKitsuGroups

class GroupPermissionTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "1",
    "type": "group-permissions",
    "links": [
      "self": "https://kitsu.io/api/edge/group-permissions/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "permission": "members"
    ]
  ]

  let validMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "group-permissions",
    "links": [
      "self": "https://kitsu.io/api/edge/group-permissions/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "permission": "members",
    ]
  ]

  let validNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "group-permissions",
    "links": [
      "self": "https://kitsu.io/api/edge/group-permissions/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "permission": "members",
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "group-permissions",
    "links": [
      "self": "https://kitsu.io/api/edge/group-permissions/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": nil,
    "type": "group-permissions",
    "links": [
      "self": "https://kitsu.io/api/edge/group-permissions/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": nil,
      "permission": "members",
    ]
  ]
  
  var groupPermission: GroupPermission?
  var groupPermissionAttributes: GroupPermissionAttributes?
  
  override func tearDown() {
    groupPermission = nil
    groupPermissionAttributes = nil
    
    super.tearDown()
  }
  
  func testGroupPermissionFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupPermission = try? decoder.decode(GroupPermission.self, from: data!)
    } else {
      groupPermission = nil
    }
    groupPermissionAttributes = groupPermission?.attributes
    
    XCTAssertNotNil(groupPermission)
    
    XCTAssertEqual(groupPermission?.objectID, "1")
    XCTAssertEqual(groupPermission?.type, "group-permissions")
    
    XCTAssertNotNil(groupPermission?.links)
    
    XCTAssertNotNil(groupPermissionAttributes)
    
    XCTAssertEqual(groupPermissionAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupPermissionAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupPermissionAttributes?.permission, GroupPermissionEnum.members)
  }
  
  func testGroupPermissionValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupPermission = try? decoder.decode(GroupPermission.self, from: data!)
    } else {
      groupPermission = nil
    }
    groupPermissionAttributes = groupPermission?.attributes
    
    XCTAssertNotNil(groupPermission)
    
    XCTAssertEqual(groupPermission?.objectID, "1")
    XCTAssertEqual(groupPermission?.type, "group-permissions")
    
    XCTAssertNotNil(groupPermission?.links)
    
    XCTAssertNotNil(groupPermissionAttributes)
    
    XCTAssertEqual(groupPermissionAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupPermissionAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupPermissionAttributes?.permission, GroupPermissionEnum.members)
  }
  
  func testGroupPermissionValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupPermission = try? decoder.decode(GroupPermission.self, from: data!)
    } else {
      groupPermission = nil
    }
    groupPermissionAttributes = groupPermission?.attributes
    
    XCTAssertNotNil(groupPermission)
    
    XCTAssertEqual(groupPermission?.objectID, "1")
    XCTAssertEqual(groupPermission?.type, "group-permissions")
    
    XCTAssertNotNil(groupPermission?.links)
    
    XCTAssertNotNil(groupPermissionAttributes)
    
    XCTAssertEqual(groupPermissionAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupPermissionAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupPermissionAttributes?.permission, GroupPermissionEnum.members)
  }
  
  func testGroupPermissionInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupPermission = try? decoder.decode(GroupPermission.self, from: data!)
    } else {
      groupPermission = nil
    }
    
    XCTAssertNil(groupPermission)
  }
  
  func testGroupPermissionInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupPermission = try? decoder.decode(GroupPermission.self, from: data!)
    } else {
      groupPermission = nil
    }
    
    XCTAssertNil(groupPermission)
  }
}






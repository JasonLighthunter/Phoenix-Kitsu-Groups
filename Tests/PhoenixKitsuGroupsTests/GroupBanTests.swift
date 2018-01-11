import XCTest
@testable import PhoenixKitsuGroups

class GroupBanTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "1",
    "type": "groupBans",
    "links": [
      "self": "https://kitsu.io/api/edge/group-bans/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "notes": "testNotes",
      "notesFormatted": "testNotesFormatted"
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupBans",
    "links": [
      "self": "https://kitsu.io/api/edge/group-bans/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupBans",
    "links": [
      "self": "https://kitsu.io/api/edge/group-bans/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "notes": nil,
      "notesFormatted": nil
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupBans",
    "links": [
      "self": "https://kitsu.io/api/edge/group-bans/1"
    ],
    "attributes": [
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "notes": "testNotes",
      "notesFormatted": "testNotesFormatted"
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupBans",
    "links": [
      "self": "https://kitsu.io/api/edge/group-bans/1"
    ],
    "attributes": [
      "createdAt": nil,
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "notes": "testNotes",
      "notesFormatted": "testNotesFormatted"
    ]
  ]
  
  var groupBan: GroupBan?
  var groupBanAttributes: GroupBanAttributes?
  
  override func tearDown() {
    groupBan = nil
    groupBanAttributes = nil
    
    super.tearDown()
  }
  
  func testGroupBanFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupBan = try? decoder.decode(GroupBan.self, from: data!)
    } else {
      groupBan = nil
    }
    groupBanAttributes = groupBan?.attributes
    
    XCTAssertNotNil(groupBan)
    
    XCTAssertEqual(groupBan?.objectID, "1")
    XCTAssertEqual(groupBan?.type, "groupBans")
    
    XCTAssertNotNil(groupBan?.links)
    
    XCTAssertNotNil(groupBanAttributes)
    
    XCTAssertEqual(groupBanAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupBanAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupBanAttributes?.notes, "testNotes")
    XCTAssertEqual(groupBanAttributes?.notesFormatted, "testNotesFormatted")
  }
  
  func testGroupBanValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupBan = try? decoder.decode(GroupBan.self, from: data!)
    } else {
      groupBan = nil
    }
    groupBanAttributes = groupBan?.attributes
    
    XCTAssertNotNil(groupBan)
    
    XCTAssertEqual(groupBan?.objectID, "1")
    XCTAssertEqual(groupBan?.type, "groupBans")
    
    XCTAssertNotNil(groupBan?.links)
    
    XCTAssertNotNil(groupBanAttributes)
    
    XCTAssertEqual(groupBanAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupBanAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertNil(groupBanAttributes?.notes)
    XCTAssertNil(groupBanAttributes?.notesFormatted)
  }
  
  func testGroupBanValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupBan = try? decoder.decode(GroupBan.self, from: data!)
    } else {
      groupBan = nil
    }
    groupBanAttributes = groupBan?.attributes
    
    XCTAssertNotNil(groupBan)
    
    XCTAssertEqual(groupBan?.objectID, "1")
    XCTAssertEqual(groupBan?.type, "groupBans")
    
    XCTAssertNotNil(groupBan?.links)
    
    XCTAssertNotNil(groupBanAttributes)
    
    XCTAssertEqual(groupBanAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupBanAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertNil(groupBanAttributes?.notes)
    XCTAssertNil(groupBanAttributes?.notesFormatted)
  }
  
  func testGroupBanInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupBan = try? decoder.decode(GroupBan.self, from: data!)
    } else {
      groupBan = nil
    }
    groupBanAttributes = groupBan?.attributes
    
    XCTAssertNotNil(groupBan)
    
    XCTAssertEqual(groupBan?.objectID, "1")
    XCTAssertEqual(groupBan?.type, "groupBans")
    
    XCTAssertNotNil(groupBan?.links)
    
    XCTAssertNil(groupBanAttributes)
  }
  
  func testGroupBanInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupBan = try? decoder.decode(GroupBan.self, from: data!)
    } else {
      groupBan = nil
    }
    groupBanAttributes = groupBan?.attributes
    
    XCTAssertNotNil(groupBan)
    
    XCTAssertEqual(groupBan?.objectID, "1")
    XCTAssertEqual(groupBan?.type, "groupBans")
    
    XCTAssertNotNil(groupBan?.links)
    
    XCTAssertNil(groupBanAttributes)
  }
}






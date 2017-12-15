import XCTest
@testable import PhoenixKitsuGroups

class GroupMemberNoteTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "1",
    "type": "groupMemberNotes",
    "links": [
      "self": "https://kitsu.io/api/edge/group-member-notes/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "content": "testContent",
      "contentFormatted": "testContentFormatted"
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupMemberNotes",
    "links": [
      "self": "https://kitsu.io/api/edge/group-member-notes/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "content": "testContent",
      "contentFormatted": "testContentFormatted"
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupMemberNotes",
    "links": [
      "self": "https://kitsu.io/api/edge/group-member-notes/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "content": "testContent",
      "contentFormatted": "testContentFormatted"
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupMemberNotes",
    "links": [
      "self": "https://kitsu.io/api/edge/group-member-notes/1"
    ],
    "attributes": [
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "content": "testContent",
      "contentFormatted": "testContentFormatted"
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupMemberNotes",
    "links": [
      "self": "https://kitsu.io/api/edge/group-member-notes/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "content": nil,
      "contentFormatted": "testContentFormatted"
    ]
  ]
  
  var groupMemberNote: GroupMemberNote?
  var groupMemberNoteAttributes: GroupMemberNoteAttributes?
  
  override func tearDown() {
    groupMemberNote = nil
    groupMemberNoteAttributes = nil
    
    super.tearDown()
  }
  
  func testGroupMemberNoteFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupMemberNote = try? decoder.decode(GroupMemberNote.self, from: data!)
    } else {
      groupMemberNote = nil
    }
    groupMemberNoteAttributes = groupMemberNote?.attributes
    
    XCTAssertNotNil(groupMemberNote)
    
    XCTAssertEqual(groupMemberNote?.objectID, "1")
    XCTAssertEqual(groupMemberNote?.type, "groupMemberNotes")
    
    XCTAssertNotNil(groupMemberNote?.links)
    
    XCTAssertNotNil(groupMemberNoteAttributes)
    
    XCTAssertEqual(groupMemberNoteAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupMemberNoteAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupMemberNoteAttributes?.content, "testContent")
    XCTAssertEqual(groupMemberNoteAttributes?.contentFormatted, "testContentFormatted")
  }
  
  func testGroupMemberNoteValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupMemberNote = try? decoder.decode(GroupMemberNote.self, from: data!)
    } else {
      groupMemberNote = nil
    }
    groupMemberNoteAttributes = groupMemberNote?.attributes
    
    XCTAssertNotNil(groupMemberNote)
    
    XCTAssertEqual(groupMemberNote?.objectID, "1")
    XCTAssertEqual(groupMemberNote?.type, "groupMemberNotes")
    
    XCTAssertNotNil(groupMemberNote?.links)
    
    XCTAssertNotNil(groupMemberNoteAttributes)
    
    XCTAssertEqual(groupMemberNoteAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupMemberNoteAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupMemberNoteAttributes?.content, "testContent")
    XCTAssertEqual(groupMemberNoteAttributes?.contentFormatted, "testContentFormatted")
  }
  
  func testGroupMemberNoteValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupMemberNote = try? decoder.decode(GroupMemberNote.self, from: data!)
    } else {
      groupMemberNote = nil
    }
    groupMemberNoteAttributes = groupMemberNote?.attributes
    
    XCTAssertNotNil(groupMemberNote)
    
    XCTAssertEqual(groupMemberNote?.objectID, "1")
    XCTAssertEqual(groupMemberNote?.type, "groupMemberNotes")
    
    XCTAssertNotNil(groupMemberNote?.links)
    
    XCTAssertNotNil(groupMemberNoteAttributes)
    
    XCTAssertEqual(groupMemberNoteAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupMemberNoteAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupMemberNoteAttributes?.content, "testContent")
    XCTAssertEqual(groupMemberNoteAttributes?.contentFormatted, "testContentFormatted")
  }
  
  func testGroupMemberNoteInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupMemberNote = try? decoder.decode(GroupMemberNote.self, from: data!)
    } else {
      groupMemberNote = nil
    }
    
    XCTAssertNil(groupMemberNote)
  }
  
  func testGroupMemberNoteInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupMemberNote = try? decoder.decode(GroupMemberNote.self, from: data!)
    } else {
      groupMemberNote = nil
    }
    
    XCTAssertNil(groupMemberNote)
  }
}







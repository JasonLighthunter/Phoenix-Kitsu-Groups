import XCTest
@testable import PhoenixKitsuGroups

class LeaderChatMessageTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "1",
    "type": "leaderChatMessages",
    "links": [
      "self": "https://kitsu.io/api/edge/leader-chat-messages/1"
    ],
    "attributes": [
      "createdAt": "2017-03-12T17:23:36.640Z",
      "updatedAt": "2017-03-12T17:23:36.640Z",
      "content": "Does this work?",
      "contentFormatted": "<p>Does this work?</p>\\n",
      "editedAt": "2017-03-12T17:23:36.640Z"
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "leaderChatMessages",
    "links": [
      "self": "https://kitsu.io/api/edge/leader-chat-messages/1"
    ],
    "attributes": [
      "createdAt": "2017-03-12T17:23:36.640Z",
      "updatedAt": "2017-03-12T17:23:36.640Z",
      "content": "Does this work?",
      "contentFormatted": "<p>Does this work?</p>\\n"
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "leaderChatMessages",
    "links": [
      "self": "https://kitsu.io/api/edge/leader-chat-messages/1"
    ],
    "attributes": [
      "createdAt": "2017-03-12T17:23:36.640Z",
      "updatedAt": "2017-03-12T17:23:36.640Z",
      "content": "Does this work?",
      "contentFormatted": "<p>Does this work?</p>\\n",
      "editedAt": nil
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "leaderChatMessages",
    "links": [
      "self": "https://kitsu.io/api/edge/leader-chat-messages/1"
    ],
    "attributes": [
      "createdAt": "2017-03-12T17:23:36.640Z",
      "updatedAt": "2017-03-12T17:23:36.640Z",
      "content": "Does this work?",
      "editedAt": "2017-03-12T17:23:36.640Z"
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "leaderChatMessages",
    "links": [
      "self": "https://kitsu.io/api/edge/leader-chat-messages/1"
    ],
    "attributes": [
      "createdAt": "2017-03-12T17:23:36.640Z",
      "updatedAt": "2017-03-12T17:23:36.640Z",
      "content": nil,
      "contentFormatted": "<p>Does this work?</p>\\n",
      "editedAt": "2017-03-12T17:23:36.640Z"
    ]
  ]
  
  var leaderChatMessage: LeaderChatMessage?
  var leaderChatMessageAttributes: LeaderChatMessageAttributes?
  
  override func tearDown() {
    leaderChatMessage = nil
    leaderChatMessageAttributes = nil
    
    super.tearDown()
  }
  
  func testLeaderChatMessageFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      leaderChatMessage = try? decoder.decode(LeaderChatMessage.self, from: data!)
    } else {
      leaderChatMessage = nil
    }
    leaderChatMessageAttributes = leaderChatMessage?.attributes
    
    XCTAssertNotNil(leaderChatMessage)
    
    XCTAssertEqual(leaderChatMessage?.objectID, "1")
    XCTAssertEqual(leaderChatMessage?.type, "leaderChatMessages")
    
    XCTAssertNotNil(leaderChatMessage?.links)
    
    XCTAssertNotNil(leaderChatMessageAttributes)
    
    XCTAssertEqual(leaderChatMessageAttributes?.createdAt, "2017-03-12T17:23:36.640Z")
    XCTAssertEqual(leaderChatMessageAttributes?.updatedAt, "2017-03-12T17:23:36.640Z")
    XCTAssertEqual(leaderChatMessageAttributes?.content, "Does this work?")
    XCTAssertEqual(leaderChatMessageAttributes?.contentFormatted, "<p>Does this work?</p>\\n")
    XCTAssertEqual(leaderChatMessageAttributes?.editedAt, "2017-03-12T17:23:36.640Z")
    
//    "createdAt": "2017-03-12T17:23:36.640Z",
//    "updatedAt": "2017-03-12T17:23:36.640Z",
//    "content": "Does this work?",
//    "contentFormatted": "<p>Does this work?</p>\\n",
//    "editedAt": "2017-03-12T17:23:36.640Z"
  }
  
  func testLeaderChatMessageValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      leaderChatMessage = try? decoder.decode(LeaderChatMessage.self, from: data!)
    } else {
      leaderChatMessage = nil
    }
    leaderChatMessageAttributes = leaderChatMessage?.attributes
    
    XCTAssertNotNil(leaderChatMessage)
    
    XCTAssertEqual(leaderChatMessage?.objectID, "1")
    XCTAssertEqual(leaderChatMessage?.type, "leaderChatMessages")
    
    XCTAssertNotNil(leaderChatMessage?.links)
    
    XCTAssertNotNil(leaderChatMessageAttributes)
    
    XCTAssertEqual(leaderChatMessageAttributes?.createdAt, "2017-03-12T17:23:36.640Z")
    XCTAssertEqual(leaderChatMessageAttributes?.updatedAt, "2017-03-12T17:23:36.640Z")
    XCTAssertEqual(leaderChatMessageAttributes?.content, "Does this work?")
    XCTAssertEqual(leaderChatMessageAttributes?.contentFormatted, "<p>Does this work?</p>\\n")
    XCTAssertNil(leaderChatMessageAttributes?.editedAt)
  }
  
  func testLeaderChatMessageValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      leaderChatMessage = try? decoder.decode(LeaderChatMessage.self, from: data!)
    } else {
      leaderChatMessage = nil
    }
    leaderChatMessageAttributes = leaderChatMessage?.attributes
    
    XCTAssertNotNil(leaderChatMessage)
    
    XCTAssertEqual(leaderChatMessage?.objectID, "1")
    XCTAssertEqual(leaderChatMessage?.type, "leaderChatMessages")
    
    XCTAssertNotNil(leaderChatMessage?.links)
    
    XCTAssertNotNil(leaderChatMessageAttributes)
    
    XCTAssertEqual(leaderChatMessageAttributes?.createdAt, "2017-03-12T17:23:36.640Z")
    XCTAssertEqual(leaderChatMessageAttributes?.updatedAt, "2017-03-12T17:23:36.640Z")
    XCTAssertEqual(leaderChatMessageAttributes?.content, "Does this work?")
    XCTAssertEqual(leaderChatMessageAttributes?.contentFormatted, "<p>Does this work?</p>\\n")
    XCTAssertNil(leaderChatMessageAttributes?.editedAt)
  }
  
  func testLeaderChatMessageInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      leaderChatMessage = try? decoder.decode(LeaderChatMessage.self, from: data!)
    } else {
      leaderChatMessage = nil
    }
    leaderChatMessageAttributes = leaderChatMessage?.attributes
    
    XCTAssertNotNil(leaderChatMessage)
    
    XCTAssertEqual(leaderChatMessage?.objectID, "1")
    XCTAssertEqual(leaderChatMessage?.type, "leaderChatMessages")
    
    XCTAssertNotNil(leaderChatMessage?.links)
    
    XCTAssertNil(leaderChatMessageAttributes)
  }
  
  func testLeaderChatMessageInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      leaderChatMessage = try? decoder.decode(LeaderChatMessage.self, from: data!)
    } else {
      leaderChatMessage = nil
    }
    leaderChatMessageAttributes = leaderChatMessage?.attributes
    
    XCTAssertNotNil(leaderChatMessage)
    
    XCTAssertEqual(leaderChatMessage?.objectID, "1")
    XCTAssertEqual(leaderChatMessage?.type, "leaderChatMessages")
    
    XCTAssertNotNil(leaderChatMessage?.links)
    
    XCTAssertNil(leaderChatMessageAttributes)
  }
}





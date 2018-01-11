import XCTest
@testable import PhoenixKitsuGroups

class GroupNeighborTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "1",
    "type": "groupNeighbors",
    "links": [
      "self": "https://kitsu.io/api/edge/group-neighbors/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z"
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupNeighbors",
    "links": [
      "self": "https://kitsu.io/api/edge/group-neighbors/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z"
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupNeighbors",
    "links": [
      "self": "https://kitsu.io/api/edge/group-neighbors/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupNeighbors",
    "links": [
      "self": "https://kitsu.io/api/edge/group-neighbors/1"
    ],
    "attributes": [
      "updatedAt": "2017-10-26T20:51:24.215Z"
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupNeighbors",
    "links": [
      "self": "https://kitsu.io/api/edge/group-neighbors/1"
    ],
    "attributes": [
      "createdAt": nil,
      "updatedAt": "2017-10-26T20:51:24.215Z"
    ]
  ]
  
  var groupNeighbor: GroupNeighbor?
  var groupNeighborAttributes: GroupNeighborAttributes?
  
  override func tearDown() {
    groupNeighbor = nil
    groupNeighborAttributes = nil
    
    super.tearDown()
  }
  
  func testGroupNeighborFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupNeighbor = try? decoder.decode(GroupNeighbor.self, from: data!)
    } else {
      groupNeighbor = nil
    }
    groupNeighborAttributes = groupNeighbor?.attributes
    
    XCTAssertNotNil(groupNeighbor)
    
    XCTAssertEqual(groupNeighbor?.objectID, "1")
    XCTAssertEqual(groupNeighbor?.type, "groupNeighbors")
    
    XCTAssertNotNil(groupNeighbor?.links)
    
    XCTAssertNotNil(groupNeighborAttributes)
    
    XCTAssertEqual(groupNeighborAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupNeighborAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
  }
  
  func testGroupNeighborValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupNeighbor = try? decoder.decode(GroupNeighbor.self, from: data!)
    } else {
      groupNeighbor = nil
    }
    groupNeighborAttributes = groupNeighbor?.attributes
    
    XCTAssertNotNil(groupNeighbor)
    
    XCTAssertEqual(groupNeighbor?.objectID, "1")
    XCTAssertEqual(groupNeighbor?.type, "groupNeighbors")
    
    XCTAssertNotNil(groupNeighbor?.links)
    
    XCTAssertNotNil(groupNeighborAttributes)
    
    XCTAssertEqual(groupNeighborAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupNeighborAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
  }
  
  func testGroupNeighborValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupNeighbor = try? decoder.decode(GroupNeighbor.self, from: data!)
    } else {
      groupNeighbor = nil
    }
    groupNeighborAttributes = groupNeighbor?.attributes
    
    XCTAssertNotNil(groupNeighbor)
    
    XCTAssertEqual(groupNeighbor?.objectID, "1")
    XCTAssertEqual(groupNeighbor?.type, "groupNeighbors")
    
    XCTAssertNotNil(groupNeighbor?.links)
    
    XCTAssertNotNil(groupNeighborAttributes)
    
    XCTAssertEqual(groupNeighborAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupNeighborAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
  }
  
  func testGroupNeighborInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupNeighbor = try? decoder.decode(GroupNeighbor.self, from: data!)
    } else {
      groupNeighbor = nil
    }
    groupNeighborAttributes = groupNeighbor?.attributes
    
    XCTAssertNotNil(groupNeighbor)
    
    XCTAssertEqual(groupNeighbor?.objectID, "1")
    XCTAssertEqual(groupNeighbor?.type, "groupNeighbors")
    
    XCTAssertNotNil(groupNeighbor?.links)
    
    XCTAssertNil(groupNeighborAttributes)
  }
  
  func testGroupNeighborInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupNeighbor = try? decoder.decode(GroupNeighbor.self, from: data!)
    } else {
      groupNeighbor = nil
    }
    groupNeighborAttributes = groupNeighbor?.attributes
    
    XCTAssertNotNil(groupNeighbor)
    
    XCTAssertEqual(groupNeighbor?.objectID, "1")
    XCTAssertEqual(groupNeighbor?.type, "groupNeighbors")
    
    XCTAssertNotNil(groupNeighbor?.links)
    
    XCTAssertNil(groupNeighborAttributes)
  }
}

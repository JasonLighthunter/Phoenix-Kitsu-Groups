import XCTest
@testable import PhoenixKitsuGroups

class GroupCategoryTests: XCTestCase {
  let decoder = JSONDecoder()

  let fullyFilledJSON: [String : Any] = [
    "id": "1",
    "type": "groupCategories",
    "links": [
      "self": "https://kitsu.io/api/edge/group-categories/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "name": "testName",
      "slug": "one-piece-group",
      "description": "Group for fans of the One Piece",
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupCategories",
    "links": [
      "self": "https://kitsu.io/api/edge/group-categories/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "name": "testName",
      "slug": "one-piece-group",
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupCategories",
    "links": [
      "self": "https://kitsu.io/api/edge/group-categories/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "name": "testName",
      "slug": "one-piece-group",
      "description": nil,
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupCategories",
    "links": [
      "self": "https://kitsu.io/api/edge/group-categories/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "name": "testName",
      "slug": "one-piece-group",
      "description": "Group for fans of the One Piece",
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": nil,
    "type": "groupCategories",
    "links": [
      "self": "https://kitsu.io/api/edge/group-categories/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "name": nil,
      "slug": "one-piece-group",
      "description": "Group for fans of the One Piece",
    ]
  ]
  
  var groupCategory: GroupCategory?
  var groupCategoryAttributes: GroupCategoryAttributes?
  
  override func tearDown() {
    groupCategory = nil
    groupCategoryAttributes = nil
    
    super.tearDown()
  }
  
  func testGroupCategoryFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupCategory = try? decoder.decode(GroupCategory.self, from: data!)
    } else {
      groupCategory = nil
    }
    groupCategoryAttributes = groupCategory?.attributes
    
    XCTAssertNotNil(groupCategory)
    
    XCTAssertEqual(groupCategory?.objectID, "1")
    XCTAssertEqual(groupCategory?.type, "groupCategories")
    
    XCTAssertNotNil(groupCategory?.links)
    
    XCTAssertNotNil(groupCategoryAttributes)
    
    XCTAssertEqual(groupCategoryAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupCategoryAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupCategoryAttributes?.name, "testName")
    XCTAssertEqual(groupCategoryAttributes?.slug, "one-piece-group")
    XCTAssertEqual(groupCategoryAttributes?.description, "Group for fans of the One Piece")
  }
  
  func testGroupCategoryValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupCategory = try? decoder.decode(GroupCategory.self, from: data!)
    } else {
      groupCategory = nil
    }
    groupCategoryAttributes = groupCategory?.attributes
    
    XCTAssertNotNil(groupCategory)
    
    XCTAssertEqual(groupCategory?.objectID, "1")
    XCTAssertEqual(groupCategory?.type, "groupCategories")
    
    XCTAssertNotNil(groupCategory?.links)
    
    XCTAssertNotNil(groupCategoryAttributes)
    
    XCTAssertEqual(groupCategoryAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupCategoryAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupCategoryAttributes?.name, "testName")
    XCTAssertEqual(groupCategoryAttributes?.slug, "one-piece-group")
    XCTAssertNil(groupCategoryAttributes?.description)
  }
  
  func testGroupCategoryValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupCategory = try? decoder.decode(GroupCategory.self, from: data!)
    } else {
      groupCategory = nil
    }
    groupCategoryAttributes = groupCategory?.attributes
    
    XCTAssertNotNil(groupCategory)
    
    XCTAssertEqual(groupCategory?.objectID, "1")
    XCTAssertEqual(groupCategory?.type, "groupCategories")
    
    XCTAssertNotNil(groupCategory?.links)
    
    XCTAssertNotNil(groupCategoryAttributes)
    
    XCTAssertEqual(groupCategoryAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupCategoryAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupCategoryAttributes?.name, "testName")
    XCTAssertEqual(groupCategoryAttributes?.slug, "one-piece-group")
    XCTAssertNil(groupCategoryAttributes?.description)
  }
  
  func testGroupCategoryInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupCategory = try? decoder.decode(GroupCategory.self, from: data!)
    } else {
      groupCategory = nil
    }
    
    XCTAssertNil(groupCategory)
  }
  
  func testGroupCategoryInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupCategory = try? decoder.decode(GroupCategory.self, from: data!)
    } else {
      groupCategory = nil
    }
    
    XCTAssertNil(groupCategory)
  }
}




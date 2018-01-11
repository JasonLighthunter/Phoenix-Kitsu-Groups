import XCTest
@testable import PhoenixKitsuGroups

class GroupTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "1",
    "type": "groups",
    "links": [
        "self": "https://kitsu.io/api/edge/groups/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "slug": "one-piece-group",
      "about": "Group for fans of the One Piece",
      "locale": "testLocale",
      "membersCount": 548,
      "name": "One Piece group",
      "nsfw": false,
      "privacy": "open",
      "rules": "testRules",
      "rulesFormatted": "testRulesFormatted",
      "leadersCount": 2,
      "neighborsCount": 0,
      "featured": false,
      "tagline": "testTagline",
      "lastActivityAt": "2017-10-26T17:56:45.259Z",
      "avatar": [
        "tiny": "https://media.kitsu.io/groups/avatars/1/tiny.gif?1424323296",
        "small": "https://media.kitsu.io/groups/avatars/1/small.gif?1424323296",
        "medium": "https://media.kitsu.io/groups/avatars/1/medium.gif?1424323296",
        "large": "https://media.kitsu.io/groups/avatars/1/large.gif?1424323296",
        "original": "https://media.kitsu.io/groups/avatars/1/original.gif?1424323296",
        "meta": [
          "dimensions": [
            "tiny": [
              "width": 1,
              "height": 2
            ],
            "small": [
              "width": 1,
              "height": 2
            ],
            "medium": [
              "width": 1,
              "height": 2
            ],
            "large": [
              "width": 1,
              "height": 2
            ]
          ]
        ]
      ],
      "coverImage": [
        "tiny": "https://media.kitsu.io/groups/cover_images/1/tiny.jpg?1424209483",
        "small": "https://media.kitsu.io/groups/cover_images/1/small.jpg?1424209483",
        "large": "https://media.kitsu.io/groups/cover_images/1/large.jpg?1424209483",
        "original": "https://media.kitsu.io/groups/cover_images/1/original.jpeg?1424209483",
        "meta": [
          "dimensions": [
            "tiny": [
              "width": 1,
              "height": 1
            ],
            "small": [
              "width": 1,
              "height": 1
            ],
            "large": [
              "width": 1,
              "height": 1
            ]
          ]
        ]
      ]
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groups",
    "links": [
      "self": "https://kitsu.io/api/edge/groups/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "slug": "one-piece-group",
      "about": "Group for fans of the One Piece",
      "membersCount": 548,
      "name": "One Piece group",
      "nsfw": false,
      "privacy": "open",
      "leadersCount": 2,
      "neighborsCount": 0,
      "featured": false
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groups",
    "links": [
      "self": "https://kitsu.io/api/edge/groups/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "slug": "one-piece-group",
      "about": "Group for fans of the One Piece",
      "locale": nil,
      "membersCount": 548,
      "name": "One Piece group",
      "nsfw": false,
      "privacy": "open",
      "rules": nil,
      "rulesFormatted": nil,
      "leadersCount": 2,
      "neighborsCount": 0,
      "featured": false,
      "tagline": nil,
      "lastActivityAt": nil,
      "avatar": nil,
      "coverImage": nil
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groups",
    "links": [
      "self": "https://kitsu.io/api/edge/groups/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "slug": "one-piece-group",
      "about": "Group for fans of the One Piece",
      "locale": nil,
      "membersCount": 548,
      "nsfw": false,
      "privacy": "open",
      "rules": nil,
      "rulesFormatted": nil,
      "leadersCount": 2,
      "neighborsCount": 0,
      "featured": false,
      "tagline": nil,
      "lastActivityAt": nil,
      "avatar": nil,
      "coverImage": nil
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groups",
    "links": [
      "self": "https://kitsu.io/api/edge/groups/1"
    ],
    "attributes": [
      "createdAt": nil,
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "slug": "one-piece-group",
      "about": "Group for fans of the One Piece",
      "locale": nil,
      "membersCount": 548,
      "nsfw": false,
      "privacy": "open",
      "rules": nil,
      "rulesFormatted": nil,
      "leadersCount": 2,
      "neighborsCount": 0,
      "featured": false,
      "tagline": nil,
      "lastActivityAt": nil,
      "avatar": nil,
      "coverImage": nil
    ]
  ]
  
  var group: Group?
  var groupAttributes: GroupAttributes?
  
  override func tearDown() {
    group = nil
    groupAttributes = nil
    
    super.tearDown()
  }
  
  func testGroupFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      group = try? decoder.decode(Group.self, from: data!)
    } else {
      group = nil
    }
    groupAttributes = group?.attributes
    
    XCTAssertNotNil(group)
    
    XCTAssertEqual(group?.objectID, "1")
    XCTAssertEqual(group?.type, "groups")
    
    XCTAssertNotNil(group?.links)
    
    XCTAssertNotNil(groupAttributes)
    
    XCTAssertEqual(groupAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupAttributes?.slug, "one-piece-group")
    XCTAssertEqual(groupAttributes?.about, "Group for fans of the One Piece")
    XCTAssertEqual(groupAttributes?.locale, "testLocale")
    XCTAssertEqual(groupAttributes?.membersCount, 548)
    XCTAssertEqual(groupAttributes?.name, "One Piece group")
    XCTAssertFalse((groupAttributes?.isNSFW)!)
    XCTAssertEqual(groupAttributes?.privacy, GroupPrivacyEnum.open)
    XCTAssertEqual(groupAttributes?.rules, "testRules")
    XCTAssertEqual(groupAttributes?.rulesFormatted, "testRulesFormatted")
    XCTAssertEqual(groupAttributes?.leadersCount, 2)
    XCTAssertEqual(groupAttributes?.neighborsCount, 0)
    XCTAssertFalse((groupAttributes?.isFeatured)!)
    XCTAssertEqual(groupAttributes?.tagline, "testTagline")
    XCTAssertEqual(groupAttributes?.lastActivityAt, "2017-10-26T17:56:45.259Z")
    
    XCTAssertNotNil(groupAttributes?.avatar)
    XCTAssertNotNil(groupAttributes?.coverImage)
  }
  
  func testGroupValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      group = try? decoder.decode(Group.self, from: data!)
    } else {
      group = nil
    }
    groupAttributes = group?.attributes
    
    XCTAssertNotNil(group)
    
    XCTAssertEqual(group?.objectID, "1")
    XCTAssertEqual(group?.type, "groups")
    
    XCTAssertNotNil(group?.links)
    
    XCTAssertNotNil(groupAttributes)
    
    XCTAssertEqual(groupAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupAttributes?.slug, "one-piece-group")
    XCTAssertEqual(groupAttributes?.about, "Group for fans of the One Piece")
    XCTAssertNil(groupAttributes?.locale)
    XCTAssertEqual(groupAttributes?.membersCount, 548)
    XCTAssertEqual(groupAttributes?.name, "One Piece group")
    XCTAssertFalse((groupAttributes?.isNSFW)!)
    XCTAssertEqual(groupAttributes?.privacy, GroupPrivacyEnum.open)
    XCTAssertNil(groupAttributes?.rules)
    XCTAssertNil(groupAttributes?.rulesFormatted)
    XCTAssertEqual(groupAttributes?.leadersCount, 2)
    XCTAssertEqual(groupAttributes?.neighborsCount, 0)
    XCTAssertFalse((groupAttributes?.isFeatured)!)
    XCTAssertNil(groupAttributes?.tagline)
    XCTAssertNil(groupAttributes?.lastActivityAt)
    XCTAssertNil(groupAttributes?.avatar)
    XCTAssertNil(groupAttributes?.coverImage)
  }
  
  func testGroupValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      group = try? decoder.decode(Group.self, from: data!)
    } else {
      group = nil
    }
    groupAttributes = group?.attributes
    
    XCTAssertNotNil(group)
    
    XCTAssertEqual(group?.objectID, "1")
    XCTAssertEqual(group?.type, "groups")
    
    XCTAssertNotNil(group?.links)
    
    XCTAssertNotNil(groupAttributes)
    
    XCTAssertEqual(groupAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
    XCTAssertEqual(groupAttributes?.slug, "one-piece-group")
    XCTAssertEqual(groupAttributes?.about, "Group for fans of the One Piece")
    XCTAssertNil(groupAttributes?.locale)
    XCTAssertEqual(groupAttributes?.membersCount, 548)
    XCTAssertEqual(groupAttributes?.name, "One Piece group")
    XCTAssertFalse((groupAttributes?.isNSFW)!)
    XCTAssertEqual(groupAttributes?.privacy, GroupPrivacyEnum.open)
    XCTAssertNil(groupAttributes?.rules)
    XCTAssertNil(groupAttributes?.rulesFormatted)
    XCTAssertEqual(groupAttributes?.leadersCount, 2)
    XCTAssertEqual(groupAttributes?.neighborsCount, 0)
    XCTAssertFalse((groupAttributes?.isFeatured)!)
    XCTAssertNil(groupAttributes?.tagline)
    XCTAssertNil(groupAttributes?.lastActivityAt)
    XCTAssertNil(groupAttributes?.avatar)
    XCTAssertNil(groupAttributes?.coverImage)
  }
  
  func testGroupInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      group = try? decoder.decode(Group.self, from: data!)
    } else {
      group = nil
    }
    groupAttributes = group?.attributes
    
    XCTAssertNotNil(group)
    
    XCTAssertEqual(group?.objectID, "1")
    XCTAssertEqual(group?.type, "groups")
    
    XCTAssertNotNil(group?.links)
    
    XCTAssertNil(groupAttributes)
  }
  
  func testGroupInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      group = try? decoder.decode(Group.self, from: data!)
    } else {
      group = nil
    }
    groupAttributes = group?.attributes
    
    XCTAssertNotNil(group)
    
    XCTAssertEqual(group?.objectID, "1")
    XCTAssertEqual(group?.type, "groups")
    
    XCTAssertNotNil(group?.links)
    
    XCTAssertNil(groupAttributes)
  }
}



import XCTest
@testable import PhoenixKitsuGroups

class GroupReportTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "1",
    "type": "groupReports",
    "links": [
      "self": "https://kitsu.io/api/edge/group-reports/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "reason": "nsfw",
      "status": "reported",
      "explanation": "testExplanation",
      "naughtyType": "Comment",
      "naughtyId": 1
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupReports",
    "links": [
      "self": "https://kitsu.io/api/edge/group-reports/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "reason": "nsfw",
      "status": "reported",
      "naughtyType": "Comment",
      "naughtyId": 1
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupReports",
    "links": [
      "self": "https://kitsu.io/api/edge/group-reports/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "reason": "nsfw",
      "status": "reported",
      "explanation": nil,
      "naughtyType": "Comment",
      "naughtyId": 1
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "1",
    "type": "groupReports",
    "links": [
      "self": "https://kitsu.io/api/edge/group-reports/1"
    ],
    "attributes": [
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "reason": "nsfw",
      "status": "reported",
      "explanation": "testExplanation",
      "naughtyType": "Comment",
      "naughtyId": 1
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "1",
    "type": "groupReports",
    "links": [
      "self": "https://kitsu.io/api/edge/group-reports/1"
    ],
    "attributes": [
      "createdAt": "2015-02-17T21:16:53.207Z",
      "updatedAt": "2017-10-26T20:51:24.215Z",
      "reason": "nsfw",
      "status": nil,
      "explanation": "testExplanation",
      "naughtyType": "Comment",
      "naughtyId": 1
    ]
  ]
  
  var groupReport: GroupReport?
  var groupReportAttributes: GroupReportAttributes?
  
  override func tearDown() {
    groupReport = nil
    groupReportAttributes = nil
    
    super.tearDown()
  }
  
  func testGroupReportFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupReport = try? decoder.decode(GroupReport.self, from: data!)
    } else {
      groupReport = nil
    }
    groupReportAttributes = groupReport?.attributes
    
    XCTAssertNotNil(groupReport)
    
    XCTAssertEqual(groupReport?.objectID, "1")
    XCTAssertEqual(groupReport?.type, "groupReports")
    
    XCTAssertNotNil(groupReport?.links)
    
    XCTAssertNotNil(groupReportAttributes)
    
    XCTAssertEqual(groupReportAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupReportAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
  }
  
  func testGroupReportValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupReport = try? decoder.decode(GroupReport.self, from: data!)
    } else {
      groupReport = nil
    }
    groupReportAttributes = groupReport?.attributes
    
    XCTAssertNotNil(groupReport)
    
    XCTAssertEqual(groupReport?.objectID, "1")
    XCTAssertEqual(groupReport?.type, "groupReports")
    
    XCTAssertNotNil(groupReport?.links)
    
    XCTAssertNotNil(groupReportAttributes)
    
    XCTAssertEqual(groupReportAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupReportAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
  }
  
  func testGroupReportValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupReport = try? decoder.decode(GroupReport.self, from: data!)
    } else {
      groupReport = nil
    }
    groupReportAttributes = groupReport?.attributes
    
    XCTAssertNotNil(groupReport)
    
    XCTAssertEqual(groupReport?.objectID, "1")
    XCTAssertEqual(groupReport?.type, "groupReports")
    
    XCTAssertNotNil(groupReport?.links)
    
    XCTAssertNotNil(groupReportAttributes)
    
    XCTAssertEqual(groupReportAttributes?.createdAt, "2015-02-17T21:16:53.207Z")
    XCTAssertEqual(groupReportAttributes?.updatedAt, "2017-10-26T20:51:24.215Z")
  }
  
  func testGroupReportInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupReport = try? decoder.decode(GroupReport.self, from: data!)
    } else {
      groupReport = nil
    }
    groupReportAttributes = groupReport?.attributes
    
    XCTAssertNotNil(groupReport)
    
    XCTAssertEqual(groupReport?.objectID, "1")
    XCTAssertEqual(groupReport?.type, "groupReports")
    
    XCTAssertNotNil(groupReport?.links)
    
    XCTAssertNil(groupReportAttributes)
  }
  
  func testGroupReportInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      groupReport = try? decoder.decode(GroupReport.self, from: data!)
    } else {
      groupReport = nil
    }
    groupReportAttributes = groupReport?.attributes
    
    XCTAssertNotNil(groupReport)
    
    XCTAssertEqual(groupReport?.objectID, "1")
    XCTAssertEqual(groupReport?.type, "groupReports")
    
    XCTAssertNotNil(groupReport?.links)
    
    XCTAssertNil(groupReportAttributes)
  }
}


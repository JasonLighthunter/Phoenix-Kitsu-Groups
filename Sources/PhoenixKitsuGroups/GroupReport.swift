import PhoenixKitsuCore

public class GroupReport: KitsuObject {
  public static var requestURLString = "group-reports"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: GroupReportAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class GroupReportAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let reason: GroupReportReasonEnum
  public let status: GroupReportStatusEnum
  public let explanation: String?
  public let naughtyType: String
  public let naughtyID: Int
  
  private enum CodingKeys: String, CodingKey {
    case createdAt
    case updatedAt
    case reason
    case status
    case explanation
    case naughtyType
    case naughtyID = "naughtyId"
  }
}

import PhoenixKitsuCore
import Requestable

public class GroupReport: KitsuObject<GroupReportAttributes>, Requestable {
  public static var requestURLString = "group-reports"
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

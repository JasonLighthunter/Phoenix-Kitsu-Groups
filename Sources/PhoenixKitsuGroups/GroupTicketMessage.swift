import PhoenixKitsuCore

public class GroupTicketMessage: KitsuObject {
  public static var requestURLString = "group-ticket-messages"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: GroupTicketMessageAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class GroupTicketMessageAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let kind: GroupTicketMessageKindEnum
  public let content: String
}

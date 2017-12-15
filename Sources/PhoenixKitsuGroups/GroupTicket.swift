import PhoenixKitsuCore

public class GroupTicket: KitsuObject {
  public static var requestURLString = "group-tickets"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: GroupTicketAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class GroupTicketAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let status: GroupTicketStatusEnum
}

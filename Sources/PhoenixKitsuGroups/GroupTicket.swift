import PhoenixKitsuCore
import Requestable

public class GroupTicket: KitsuObject<GroupTicketAttributes>, Requestable {
  public static var requestURLString = "group-tickets"
}

public class GroupTicketAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let status: GroupTicketStatusEnum
}

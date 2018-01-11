import PhoenixKitsuCore
import Requestable

public class GroupTicketMessage: KitsuObject<GroupTicketMessageAttributes>, Requestable {
  public static var requestURLString = "group-ticket-messages"
}

public class GroupTicketMessageAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let kind: GroupTicketMessageKindEnum
  public let content: String
}

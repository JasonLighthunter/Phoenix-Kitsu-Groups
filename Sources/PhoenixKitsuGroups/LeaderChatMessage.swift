import PhoenixKitsuCore
import Requestable

public class LeaderChatMessage: KitsuObject<LeaderChatMessageAttributes>, Requestable {
  public static var requestURLString = "leader-chat-messages"
}

public class LeaderChatMessageAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let content: String
  public let contentFormatted: String
  public let editedAt: String?
}

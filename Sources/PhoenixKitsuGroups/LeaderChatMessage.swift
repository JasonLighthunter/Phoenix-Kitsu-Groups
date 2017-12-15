import PhoenixKitsuCore

public class LeaderChatMessage: KitsuObject {
  public static var requestURLString = "leader-chat-messages"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: LeaderChatMessageAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class LeaderChatMessageAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let content: String
  public let contentFormatted: String
  public let editedAt: String?
}

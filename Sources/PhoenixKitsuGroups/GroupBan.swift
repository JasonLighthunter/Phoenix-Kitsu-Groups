import PhoenixKitsuCore

public class GroupBan: KitsuObject {
  public static var requestURLString = "group-bans"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: GroupBanAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class GroupBanAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let notes: String?
  public let notesFormatted: String?
}

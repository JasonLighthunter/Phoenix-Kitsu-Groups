import PhoenixKitsuCore

public class GroupInvite: KitsuObject {
  public static var requestURLString = "group-bans"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: GroupInviteAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class GroupInviteAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let acceptedAt: String?
  public let declinedAt: String?
  public let revokedAt: String?
}

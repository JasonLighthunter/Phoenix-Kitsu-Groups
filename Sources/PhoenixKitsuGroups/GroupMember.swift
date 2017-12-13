import PhoenixKitsuCore

public class GroupMember: KitsuObject {
  public static var requestURLString = "group-members"

  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: GroupMemberAttributes?

  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class GroupMemberAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
  public let rank: GroupMemberRankEnum
  public let unreadCount: Int
}

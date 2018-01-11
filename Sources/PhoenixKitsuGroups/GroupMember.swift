import PhoenixKitsuCore
import Requestable

public class GroupMember: KitsuObject<GroupMemberAttributes>, Requestable {
  public static var requestURLString = "group-members"
}

public class GroupMemberAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
  public let rank: GroupMemberRankEnum
  public let unreadCount: Int
}

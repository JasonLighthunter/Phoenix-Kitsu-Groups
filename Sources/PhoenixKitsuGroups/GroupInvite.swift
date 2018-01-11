import PhoenixKitsuCore
import Requestable

public class GroupInvite: KitsuObject<GroupInviteAttributes>, Requestable {
  public static var requestURLString = "group-invites"
}

public class GroupInviteAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let acceptedAt: String?
  public let declinedAt: String?
  public let revokedAt: String?
}

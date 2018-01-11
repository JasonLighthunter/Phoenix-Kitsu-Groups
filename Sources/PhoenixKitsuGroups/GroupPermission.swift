import PhoenixKitsuCore
import Requestable

public class GroupPermission: KitsuObject<GroupPermissionAttributes>, Requestable {
  public static var requestURLString = "group-permissions"
}

public class GroupPermissionAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let permission: GroupPermissionEnum
}

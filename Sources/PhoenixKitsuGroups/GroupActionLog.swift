import PhoenixKitsuCore
import Requestable

public class GroupActionLog: KitsuObject<GroupActionLogAttributes>, Requestable {
  public static var requestURLString = "group-action-logs"
}

public class GroupActionLogAttributes: KitsuObjectAttributesWithCreatedAt {
  public let createdAt: String
  public let updatedAt: String?
  public let verb: String
}

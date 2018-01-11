import PhoenixKitsuCore
import Requestable

public class GroupBan: KitsuObject<GroupBanAttributes>, Requestable {
  public static var requestURLString = "group-bans"
}

public class GroupBanAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let notes: String?
  public let notesFormatted: String?
}

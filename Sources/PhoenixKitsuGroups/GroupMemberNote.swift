import PhoenixKitsuCore
import Requestable

public class GroupMemberNote: KitsuObject<GroupMemberNoteAttributes>, Requestable {
  public static var requestURLString = "group-member-notes"
}

public class GroupMemberNoteAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let content: String
  public let contentFormatted: String
}

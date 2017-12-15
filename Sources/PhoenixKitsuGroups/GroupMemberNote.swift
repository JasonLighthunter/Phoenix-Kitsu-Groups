import PhoenixKitsuCore

public class GroupMemberNote: KitsuObject {
  public static var requestURLString = "group-member-notes"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: GroupMemberNoteAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class GroupMemberNoteAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let content: String
  public let contentFormatted: String
}

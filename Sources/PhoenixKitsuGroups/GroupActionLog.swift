import PhoenixKitsuCore

public class GroupActionLog: KitsuObject {
  public static var requestURLString = "group-action-logs"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: GroupActionLogAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class GroupActionLogAttributes: KitsuObjectAttributesWithCreatedAt {
  public let createdAt: String
  public let updatedAt: String?
  public let verb: String
}

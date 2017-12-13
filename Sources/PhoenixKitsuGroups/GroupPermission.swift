import PhoenixKitsuCore

public class GroupPermission: KitsuObject {
  public static var requestURLString = "group-permissions"

  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: GroupPermissionAttributes?

  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class GroupPermissionAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let permission: GroupPermissionEnum
}

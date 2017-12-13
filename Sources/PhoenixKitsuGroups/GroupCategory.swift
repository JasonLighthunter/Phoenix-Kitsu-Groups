import PhoenixKitsuCore

public class GroupCategory: KitsuObject {
  public static var requestURLString = "group-categories"

  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: GroupCategoryAttributes?

  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class GroupCategoryAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let name: String
  public let slug: String
  public let description: String?
}

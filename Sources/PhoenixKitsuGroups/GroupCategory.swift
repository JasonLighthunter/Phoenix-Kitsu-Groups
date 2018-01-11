import PhoenixKitsuCore
import Requestable

public class GroupCategory: KitsuObject<GroupCategoryAttributes>, Requestable {
  public static var requestURLString = "group-categories"
}

public class GroupCategoryAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let name: String
  public let slug: String
  public let description: String?
}

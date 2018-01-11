import PhoenixKitsuCore
import Requestable

public class GroupNeighbor: KitsuObject<GroupNeighborAttributes>, Requestable {
  public static var requestURLString = "group-neighbor"
}

public class GroupNeighborAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
}

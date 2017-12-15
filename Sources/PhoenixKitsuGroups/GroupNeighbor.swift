import PhoenixKitsuCore

public class GroupNeighbor: KitsuObject {
  public static var requestURLString = "group-neighbor"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: GroupNeighborAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class GroupNeighborAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
}

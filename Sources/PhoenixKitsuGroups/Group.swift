import PhoenixKitsuCore

public class Group: KitsuObject {
  public static let requestURLString = "groups"

  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: GroupAttributes?

  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

// codebeat:disable[TOO_MANY_IVARS]
public class GroupAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let slug: String
  public let about: String
  public let locale: String?
  public let membersCount: Int
  public let name: String
  public let isNSFW: Bool
  public let privacy: GroupPrivacyEnum
  public let rules: String?
  public let rulesFormatted: String?
  public let leadersCount: Int
  public let neighborsCount: Int
  public let isFeatured: Bool
  public let tagline: String?
  public let lastActivityAt: String?
  public let avatar: Image?
  public let coverImage: Image?

  private enum CodingKeys: String, CodingKey {
    case createdAt
    case updatedAt
    case slug
    case about
    case locale
    case membersCount
    case name
    case isNSFW = "nsfw"
    case privacy
    case rules
    case rulesFormatted
    case leadersCount
    case neighborsCount
    case isFeatured = "featured"
    case tagline
    case lastActivityAt
    case avatar
    case coverImage
  }
}
// codebeat:enable[TOO_MANY_IVARS]

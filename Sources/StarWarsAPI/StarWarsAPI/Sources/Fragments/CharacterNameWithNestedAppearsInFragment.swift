// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI
@_exported import enum ApolloAPI.GraphQLEnum
@_exported import enum ApolloAPI.GraphQLNullable

public struct CharacterNameWithNestedAppearsInFragment: StarWarsAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString { """
    fragment CharacterNameWithNestedAppearsInFragment on Character {
      __typename
      name
      ...CharacterAppearsIn
    }
    """ }

  public let __data: DataDict
  public init(data: DataDict) { __data = data }

  public static var __parentType: ParentType { .Interface(StarWarsAPI.Character.self) }
  public static var selections: [Selection] { [
    .field("name", String.self),
    .fragment(CharacterAppearsIn.self),
  ] }

  /// The name of the character
  public var name: String { __data["name"] }
  /// The movies this character appears in
  public var appearsIn: [GraphQLEnum<Episode>?] { __data["appearsIn"] }

  public struct Fragments: FragmentContainer {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public var characterAppearsIn: CharacterAppearsIn { _toFragment() }
  }
}

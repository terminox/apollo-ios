// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public extension MyGraphQLSchema {
  class ClassroomPetsQuery: GraphQLQuery {
    public static let operationName: String = "ClassroomPets"
    public static let document: ApolloAPI.DocumentType = .notPersisted(
      definition: .init(
        #"""
        query ClassroomPets {
          classroomPets {
            __typename
            ...ClassroomPetDetails
          }
        }
        """#,
        fragments: [ClassroomPetDetails.self]
      ))

    public init() {}

    public struct Data: MyGraphQLSchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ApolloAPI.ParentType { MyGraphQLSchema.Objects.Query }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("classroomPets", [ClassroomPet?]?.self),
      ] }

      public var classroomPets: [ClassroomPet?]? { __data["classroomPets"] }

      /// ClassroomPet
      ///
      /// Parent Type: `ClassroomPet`
      public struct ClassroomPet: MyGraphQLSchema.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ApolloAPI.ParentType { MyGraphQLSchema.Unions.ClassroomPet }
        public static var __selections: [ApolloAPI.Selection] { [
          .fragment(ClassroomPetDetails.self),
        ] }

        public var asAnimal: AsAnimal? { _asInlineFragment() }
        public var asPet: AsPet? { _asInlineFragment() }
        public var asWarmBlooded: AsWarmBlooded? { _asInlineFragment() }
        public var asCat: AsCat? { _asInlineFragment() }
        public var asBird: AsBird? { _asInlineFragment() }
        public var asPetRock: AsPetRock? { _asInlineFragment() }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public var classroomPetDetails: ClassroomPetDetails { _toFragment() }
        }

        /// ClassroomPet.AsAnimal
        ///
        /// Parent Type: `Animal`
        public struct AsAnimal: MyGraphQLSchema.InlineFragment {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ApolloAPI.ParentType { MyGraphQLSchema.Interfaces.Animal }

          public var species: String { __data["species"] }

          public struct Fragments: FragmentContainer {
            public let __data: DataDict
            public init(data: DataDict) { __data = data }

            public var classroomPetDetails: ClassroomPetDetails { _toFragment() }
          }
        }

        /// ClassroomPet.AsPet
        ///
        /// Parent Type: `Pet`
        public struct AsPet: MyGraphQLSchema.InlineFragment {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ApolloAPI.ParentType { MyGraphQLSchema.Interfaces.Pet }

          public var humanName: String? { __data["humanName"] }

          public struct Fragments: FragmentContainer {
            public let __data: DataDict
            public init(data: DataDict) { __data = data }

            public var classroomPetDetails: ClassroomPetDetails { _toFragment() }
          }
        }

        /// ClassroomPet.AsWarmBlooded
        ///
        /// Parent Type: `WarmBlooded`
        public struct AsWarmBlooded: MyGraphQLSchema.InlineFragment {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ApolloAPI.ParentType { MyGraphQLSchema.Interfaces.WarmBlooded }

          public var species: String { __data["species"] }
          public var laysEggs: Bool { __data["laysEggs"] }

          public struct Fragments: FragmentContainer {
            public let __data: DataDict
            public init(data: DataDict) { __data = data }

            public var classroomPetDetails: ClassroomPetDetails { _toFragment() }
          }
        }

        /// ClassroomPet.AsCat
        ///
        /// Parent Type: `Cat`
        public struct AsCat: MyGraphQLSchema.InlineFragment {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ApolloAPI.ParentType { MyGraphQLSchema.Objects.Cat }

          public var species: String { __data["species"] }
          public var humanName: String? { __data["humanName"] }
          public var laysEggs: Bool { __data["laysEggs"] }
          public var bodyTemperature: Int { __data["bodyTemperature"] }
          public var isJellicle: Bool { __data["isJellicle"] }

          public struct Fragments: FragmentContainer {
            public let __data: DataDict
            public init(data: DataDict) { __data = data }

            public var classroomPetDetails: ClassroomPetDetails { _toFragment() }
          }
        }

        /// ClassroomPet.AsBird
        ///
        /// Parent Type: `Bird`
        public struct AsBird: MyGraphQLSchema.InlineFragment {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ApolloAPI.ParentType { MyGraphQLSchema.Objects.Bird }

          public var species: String { __data["species"] }
          public var humanName: String? { __data["humanName"] }
          public var laysEggs: Bool { __data["laysEggs"] }
          public var wingspan: Double { __data["wingspan"] }

          public struct Fragments: FragmentContainer {
            public let __data: DataDict
            public init(data: DataDict) { __data = data }

            public var classroomPetDetails: ClassroomPetDetails { _toFragment() }
          }
        }

        /// ClassroomPet.AsPetRock
        ///
        /// Parent Type: `PetRock`
        public struct AsPetRock: MyGraphQLSchema.InlineFragment {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ApolloAPI.ParentType { MyGraphQLSchema.Objects.PetRock }

          public var humanName: String? { __data["humanName"] }
          public var favoriteToy: String { __data["favoriteToy"] }

          public struct Fragments: FragmentContainer {
            public let __data: DataDict
            public init(data: DataDict) { __data = data }

            public var classroomPetDetails: ClassroomPetDetails { _toFragment() }
          }
        }
      }
    }
  }

}
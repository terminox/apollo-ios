import XCTest
import Nimble
@testable import ApolloCodegenLib

class SchemaFileGeneratorTests: XCTestCase {
  let irSchema = IR.Schema(name: "MockSchema", referencedTypes: .init([]))

  var subject: SchemaFileGenerator!

  override func tearDown() {
    subject = nil
  }

  // MARK: Test Helpers

  private func buildSubject() {
    subject = SchemaFileGenerator(
      schema: irSchema,
      config: ApolloCodegen.ConfigurationContext(config: ApolloCodegenConfiguration.mock())
    )
  }

  // MARK: Property Tests

  func test__properties__shouldReturnTargetType_schema() {
    // given
    buildSubject()

    // then
    expect(self.subject.target).to(equal(.schema))
  }

  func test__properties__givenIrSchema_shouldReturnFileName_matchingName() {
    // given
    buildSubject()

    let expected = "Schema.swift"

    // then
    expect(self.subject.fileName).to(equal(expected))
  }

  func test__properties__givenGraphIrSchema_shouldOverwrite() {
    // given
    buildSubject()

    // then
    expect(self.subject.overwrite).to(beTrue())
  }
}

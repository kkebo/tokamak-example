import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(tokamak_exampleTests.allTests),
    ]
}
#endif

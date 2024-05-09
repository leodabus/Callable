import XCTest
#if canImport(Vapor)
import Vapor
#endif

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CallableTests.allTests),
    ]
}
#endif

import XCTest
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CallableTests.allTests),
    ]
}
#endif

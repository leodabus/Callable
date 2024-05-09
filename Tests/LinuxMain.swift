import XCTest
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
import CallableTests

var tests = [XCTestCaseEntry]()
tests += CallableTests.allTests()
XCTMain(tests)

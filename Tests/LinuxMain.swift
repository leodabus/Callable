import XCTest
#if canImport(Vapor)
import Vapor
#endif

import CallableTests

var tests = [XCTestCaseEntry]()
tests += CallableTests.allTests()
XCTMain(tests)

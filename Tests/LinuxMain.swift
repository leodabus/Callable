import XCTest

import CallableTests

var tests = [XCTestCaseEntry]()
tests += CallableTests.allTests()
XCTMain(tests)

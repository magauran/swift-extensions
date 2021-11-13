// Int_Tests.swift
// ExtensionsTests
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

import XCTest
@testable import Extensions

final class Int_Tests: XCTestCase {
	func test_fibonacci_Succeeds() {
		// Given
		let sequence: [Int] = fibonacci(9)
		
		// Then
		XCTAssertEqual(sequence, [0, 1, 1, 2, 3, 5, 8, 13, 21, 34])
	}
}

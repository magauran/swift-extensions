// Sorted_Tests.swift
// ExtensionsTests
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

import XCTest
@testable import Extensions

final class Sorted_Tests: XCTestCase {
	@Sorted(by: <)
	fileprivate var values: [Int] = [1, 3, 2]
	
	func test_clamped_succeeds() {
		XCTAssertEqual(self.values, [1, 2, 3])
		
		self.values.append(0)
		XCTAssertEqual(self.values, [0, 1, 2, 3])
	}
}

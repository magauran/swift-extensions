// Array+Comparable_Tests.swift
// ExtensionsTests
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

import XCTest
@testable import Extensions

extension Array_Tests {
	func test_IsWithinClosedRange_ReturnsFalse() {
		// Given
		let number: UInt = 4
		let range: ClosedRange<UInt> = 1...3
		
		// Then
		XCTAssertFalse(number.isWithin(range))
	}
	
	func test_IsWithinClosedRange_ReturnsTrue() {
		// Given
		let number: UInt = 2
		let range: ClosedRange<UInt> = 1...3
		
		// Then
		XCTAssertTrue(number.isWithin(range))
	}
	
	func test_IsWithinBounds_ReturnsFalse() {
		// Given
		let number: UInt = 4
		let lowerBound: UInt = 1
		let upperBound: UInt = 3
		
		// Then
		XCTAssertFalse(number.isWithin(lowerBound, to: upperBound))
	}
	
	func test_IsWithinBounds_ReturnsTrue() {
		// Given
		let number: UInt = 2
		let lowerBound: UInt = 1
		let upperBound: UInt = 3
		
		// Then
		XCTAssertTrue(number.isWithin(lowerBound, to: upperBound))
	}
}

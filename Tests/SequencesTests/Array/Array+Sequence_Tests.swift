// Array+Sequence_Tests.swift
// SequencesTests
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

import XCTest
@testable import Sequences

extension Array_Tests {
	func test_AnySatisfyWhere_ReturnsFalse() {
		// Given
		let sequence: [UInt] = [10, 20, 30, 40, 50]
		
		// Then
		let result: Bool = sequence.anySatisfy(where: { $0 == 0 })
		
		// Then
		XCTAssertFalse(result)
	}
	
	func test_AnySatisfyWhere_ReturnsTrue() {
		// Given
		let sequence: [UInt] = [10, 20, 30, 40, 50]
		
		// Then
		let result: Bool = sequence.anySatisfy(where: { $0 == 10 })
		
		// Then
		XCTAssertTrue(result)
	}
	
	func test_NoneSatisfyWhere_ReturnsFalse() {
		// Given
		let sequence: [UInt] = [10, 20, 30, 40, 50]
		
		// Then
		let result: Bool = sequence.noneSatisfy(where: { $0 == 10 })
		
		// Then
		XCTAssertFalse(result)
	}
	
	func test_NoneSatisfyWhere_ReturnsTrue() {
		// Given
		let sequence: [UInt] = [10, 20, 30, 40, 50]
		
		// Then
		let result: Bool = sequence.noneSatisfy(where: { $0 == 0 })
		
		// Then
		XCTAssertTrue(result)
	}
	
	func test_ContainsContentsOf_ReturnsFalse() {
		// Given
		let sequence: [UInt] = [10, 20, 30, 40, 50]
		
		// Then
		let result: Bool = sequence.contains(contentsOf: [1, 3, 5])
		
		// Then
		XCTAssertFalse(result)
	}
	
	func test_ContainsContentsOf_ReturnsTrue() {
		// Given
		let sequence: [UInt] = [10, 20, 30, 40, 50]
		
		// Then
		let result: Bool = sequence.contains(contentsOf: [10, 30, 50])
		
		// Then
		XCTAssertTrue(result)
	}
	
	func test_ContainsContentsOf_Fails() {
		// Given
		let sequence: [String] = ["h", "e", "l", "l", "o"]
		
		// Then
		let result: Int = sequence.count(where: { $0 == "y" })
		
		// Then
		XCTAssertEqual(result, 0)
	}
		
	func test_ContainsContentsOf_Succeeds() {
		// Given
		let sequence: [String] = ["h", "e", "l", "l", "o"]
		
		// Then
		let result: Int = sequence.count(where: { $0 == "l" })
		
		// Then
		XCTAssertEqual(result, 2)
	}
}

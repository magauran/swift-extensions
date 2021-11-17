// Array+Collection_Tests.swift
// ExtensionsTests
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

import XCTest
@testable import Extensions

extension Array_Tests {
	func test_FirstIndex_Fails() {
		// Given
		let collection: [UInt] = []
		
		// Then
		XCTAssertEqual(collection.startIndex, 0)
		XCTAssertNil(collection.firstIndex)
	}
	
	func test_FirstIndex_Succeeds() {
		// Given
		let collection: [UInt] = [10, 20, 30, 40, 50]
		
		// Then
		XCTAssertEqual(collection.startIndex, 0)
		XCTAssertEqual(collection.firstIndex, 0)
	}
	
	@available(swift, deprecated: 5.5)
	func test_Second_Fails() {
		// Given
		let collection: [UInt] = []
		
		// Then
		XCTAssertNil(collection.second)
		XCTAssertEqual(collection.endIndex, 0)
	}
	
	@available(swift, deprecated: 5.5)
	func test_Second_Succeeds() {
		// Given
		let collection: [UInt] = [10, 20, 30, 40, 50]
		
		// Then
		XCTAssertEqual(collection.second, 20)
		XCTAssertEqual(collection.endIndex, 5)
	}
	
	@available(swift, deprecated: 5.5)
	func test_Third_Fails() {
		// Given
		let collection: [UInt] = []
		
		// Then
		XCTAssertNil(collection.third)
		XCTAssertEqual(collection.endIndex, 0)
	}
	
	@available(swift, deprecated: 5.5)
	func test_Third_Succeeds() {
		// Given
		let collection: [UInt] = [10, 20, 30, 40, 50]
		
		// Then
		XCTAssertEqual(collection.third, 30)
		XCTAssertEqual(collection.endIndex, 5)
	}
	
	func test_after_Succeeds() {
		// Given
		let collection: [UInt] = [10, 20, 30, 40, 50]
		
		// Then
		XCTAssertEqual(collection.after(50), 10)
	}
}

// Array+BidirectionalCollection_Tests.swift
// SequencesTests
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

import XCTest
@testable import Sequences

extension Array_Tests {
	func test_LastIndex_Fails() {
		// Given
		let collection: [UInt] = []
		
		// Then
		XCTAssertNil(collection.lastIndex)
		XCTAssertEqual(collection.endIndex, 0)
	}
	
	func test_LastIndex_Succeeds() {
		// Given
		let collection: [UInt] = [10, 20, 30, 40, 50]
		
		// Then
		XCTAssertEqual(collection.lastIndex, 4)
		XCTAssertEqual(collection.endIndex, 5)
	}
	
	@available(swift, deprecated: 5.5)
	func test_SecondLast_Fails() {
		// Given
		let collection: [UInt] = []
		
		// Then
		XCTAssertNil(collection.secondLast)
		XCTAssertEqual(collection.endIndex, 0)
	}
	
	@available(swift, deprecated: 5.5)
	func test_SecondLast_Succeeds() {
		// Given
		let collection: [UInt] = [10, 20, 30, 40, 50]
		
		// Then
		XCTAssertEqual(collection.secondLast, 40)
		XCTAssertEqual(collection.endIndex, 5)
	}
	
	@available(swift, deprecated: 5.5)
	func test_ThirdLast_Fails() {
		// Given
		let collection: [UInt] = []
		
		// Then
		XCTAssertNil(collection.thirdLast)
		XCTAssertEqual(collection.endIndex, 0)
	}
	
	@available(swift, deprecated: 5.5)
	func test_ThirdLast_Succeeds() {
		// Given
		let collection: [UInt] = [10, 20, 30, 40, 50]
		
		// Then
		XCTAssertEqual(collection.thirdLast, 30)
		XCTAssertEqual(collection.endIndex, 5)
	}
}

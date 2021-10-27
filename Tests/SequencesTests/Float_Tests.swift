// Float_Tests.swift
// SequencesTests
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

import XCTest
@testable import Sequences

final class Array_Tests: XCTestCase {
	func test_firstIndex_Fails() {
		// Given
		let collection: [UInt] = []
		
		// Then
		XCTAssertEqual(collection.startIndex, 0)
		XCTAssertEqual(collection.firstIndex, nil)
	}
	
	func test_firstIndex_Succeeds() {
		// Given
		let collection: [UInt] = [10, 20, 30, 40, 50]
		
		// Then
		XCTAssertEqual(collection.startIndex, 0)
		XCTAssertEqual(collection.firstIndex, 0)
	}
	
	func test_lastIndex_Fails() {
		// Given
		let collection: [UInt] = []
		
		// Then
		XCTAssertEqual(collection.lastIndex, nil)
		XCTAssertEqual(collection.endIndex, 0)
	}
	
	func test_lastIndex_Succeeds() {
		// Given
		let collection: [UInt] = [10, 20, 30, 40, 50]
		
		// Then
		XCTAssertEqual(collection.lastIndex, 4)
		XCTAssertEqual(collection.endIndex, 5)
	}
}

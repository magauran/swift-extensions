// Array+RangeReplaceableCollection_Tests.swift
// SequencesTests
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

import XCTest
@testable import Sequences

extension Array_Tests {
	func test_RemoveFirstWhere_Fails() {
		// Given
		var collection: [String] = ["h", "e", "l", "l", "o"]
		
		// Then
		collection.removeFirst(where: { $0 == "y" })
		
		// Then
		XCTAssertEqual(collection, ["h", "e", "l", "l", "o"])
	}
	
	func test_RemoveFirstWhere_Succeeds() {
		// Given
		var collection: [String] = ["h", "e", "l", "l", "o"]
		
		// Then
		collection.removeFirst(where: { $0 == "l" })
		
		// Then
		XCTAssertEqual(collection, ["h", "e", "l", "o"])
	}
	
	func test_RemoveLastWhere_Fails() {
		// Given
		var collection: [String] = ["h", "e", "l", "l", "o"]
		
		// Then
		collection.removeLast(where: { $0 == "y" })
		
		// Then
		XCTAssertEqual(collection, ["h", "e", "l", "l", "o"])
	}
	
	func test_RemoveLastWith_Succeeds() {
		// Given
		var collection: [String] = ["h", "e", "l", "l", "o"]
		
		// Then
		collection.removeLast(where: { $0 == "l" })
		
		// Then
		XCTAssertEqual(collection, ["h", "e", "l", "o"])
	}
	
	func test_RemoveRandomElement_Succeeds() {
		// Given
		var collection: [UInt] = [10, 20, 30, 40, 0]
		
		// Then
		for _ in collection.indices {
			collection.removeRandomElement()
		}
		
		// Then
		XCTAssertTrue(collection.isEmpty)
	}
}

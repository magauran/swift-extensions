// Array+MutableCollection_Tests.swift
// SequencesTests
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

import XCTest
@testable import Sequences

extension Array_Tests {
	func test_ReplaceWhere_Fails() {
		// Given
		var collection: [UInt] = []
		
		// Then
		collection.replace(where: { $0 == 0 }, with: 30)
		
		// Then
		XCTAssertEqual(collection, [])
	}
	
	func test_ReplaceWhere_Succeeds() {
		// Given
		var collection: [UInt] = [10, 20, 0, 40, 50]
		
		// Then
		collection.replace(where: { $0 == 0 }, with: 30)
		
		// Then
		XCTAssertEqual(collection, [10, 20, 30, 40, 50])
	}
	
	func test_ReplaceFirstWith_Fails() {
		// Given
		var collection: [UInt] = []
		
		// Then
		collection.replaceFirst(with: 10)
		
		// Then
		XCTAssertEqual(collection, [])
	}
	
	func test_ReplaceFirstWith_Succeeds() {
		// Given
		var collection: [UInt] = [0, 20, 30, 40, 50]
		
		// Then
		collection.replaceFirst(with: 10)
		
		// Then
		XCTAssertEqual(collection, [10, 20, 30, 40, 50])
	}
	
	func test_ReplaceLastWith_Fails() {
		// Given
		var collection: [UInt] = []
		
		// Then
		collection.replaceLast(with: 50)
		
		// Then
		XCTAssertEqual(collection, [])
	}
	
	func test_ReplaceLastWith_Succeeds() {
		// Given
		var collection: [UInt] = [10, 20, 30, 40, 0]
		
		// Then
		collection.replaceLast(with: 50)
		
		// Then
		XCTAssertEqual(collection, [10, 20, 30, 40, 50])
	}
}

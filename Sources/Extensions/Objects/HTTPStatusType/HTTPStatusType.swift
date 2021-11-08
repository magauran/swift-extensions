// HTTPStatusType.swift
// Extensions
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

/// A representation of a HTTP status type.
@frozen
public enum HTTPStatusType {
	/// Informational.
	case informational
	
	/// Successful.
	case successful
	
	/// Redirection.
	case redirection
	
	/// Client error.
	case clientError
	
	/// Server error.
	case serverError
}

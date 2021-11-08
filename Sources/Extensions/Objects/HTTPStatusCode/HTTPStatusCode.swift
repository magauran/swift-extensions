// HTTPStatusCode.swift
// Extensions
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

/// A representation of a HTTP status code.
public enum HTTPStatusCode: UInt16, RawRepresentable, Error {
	/// Continue.
	case `continue` = 100
	
	/// Switching protocols.
	case switchingProtocols = 101

	/// OK.
	case ok = 200
	
	/// Created.
	case created = 201
	
	/// Accepted
	case accepted = 202
	
	/// Non-authoritative information
	case nonAuthoritativeInformation = 203
	
	/// No content.
	case noContent = 204
	
	/// Reset content.
	case resetContent = 205
	
	/// Partial content.
	case partialContent = 206

	/// Multiple choices.
	case multipleChoices = 300
	
	/// Moved permanently.
	case movedPermanently = 301
	
	/// Found.
	case found = 302
	
	/// See other.
	case seeOther = 303
	
	/// Not modified.
	case notModified = 304
	
	/// Use proxy.
	case useProxy = 305
	
	/// Temporray redirect.
	case temporaryRedirect = 307

	/// Bad request.
	case badRequest = 400
	
	/// Unauthorized.
	case unauthorized = 401
	
	/// Payment required.
	case paymentRequired = 402
	
	/// Forbidden.
	case forbidden = 403
	
	/// Not found.
	case notFound = 404
	
	/// Method not allowed.
	case methodNotAllowed = 405
	
	/// Not acceptable.
	case notAcceptable = 406
	
	/// Proxy authentication required.
	case proxyAuthenticationRequired = 407
	
	/// request timeout.
	case requestTimeout = 408
	
	/// Conflict.
	case conflict = 409
	
	/// Gone
	case gone = 410
	
	/// Length required.
	case lengthRequired = 411
	
	/// Precondition failed.
	case preconditionFailed = 412
	
	/// Request entity too large.
	case requestEntityTooLarge = 413
	
	/// Request URI too long.
	case requestURITooLong = 414
	
	/// Unsupported media type.
	case unsupportedMediaType = 415
	
	/// Requested range not satisfiable.
	case requestedRangeNotSatisfiable = 416
	
	/// Expectation failed.
	case expectationFailed = 417

	/// Internal server error.
	case internalServerError = 500
	
	/// Not implemented.
	case notImplemented = 501
	
	/// Bad gateway.
	case badGateway = 502
	
	/// Service unavailable.
	case serviceUnavailable = 503
	
	/// Gateway timeout.
	case gatewayTimeout = 504
	
	/// HTTP version not supported.
	case HTTPVersionNotSupported = 505
	
	/// The type of this status.
	public var type: HTTPStatusType? {
		switch self.rawValue {
		case 100..<200:
			return .informational
		case 200..<300:
			return .successful
		case 300..<400:
			return .redirection
		case 400..<500:
			return .clientError
		case 500..<600:
			return .serverError
		default:
			return nil
		}
	}
	
	/// A boolean value indicating whether this status type is informational.
	public var isInformational: Bool {
		return self.type == .informational
	}
	
	/// A boolean value indicating whether this status type is successful.
	public var isSuccessful: Bool {
		return self.type == .successful
	}
	
	/// A boolean value indicating whether this status type is a redirection.
	public var isRedirection: Bool {
		return self.type == .redirection
	}
	
	/// A boolean value indicating whether this status type is a client error.
	public var isClientError: Bool {
		return self.type == .clientError
	}
	
	/// A boolean value indicating whether this status type is a server error.
	public var isServerError: Bool {
		return self.type == .serverError
	}
}

//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Thu Do on 07/06/2023.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}


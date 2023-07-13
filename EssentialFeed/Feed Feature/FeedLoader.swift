//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Thu Do on 16/02/2023.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}

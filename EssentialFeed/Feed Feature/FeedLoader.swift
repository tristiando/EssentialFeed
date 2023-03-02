//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Thu Do on 16/02/2023.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}

//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Thu Do on 16/02/2023.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}

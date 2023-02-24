//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Thu Do on 16/02/2023.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}

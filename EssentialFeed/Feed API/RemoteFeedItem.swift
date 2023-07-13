//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Thu Do on 10/05/2023.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}

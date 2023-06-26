//
//  ManagedFeedImage.swift
//  EssentialFeed
//
//  Created by Thu Do on 26/06/2023.
//

import CoreData

@objc(ManagedFeedImage)
internal class ManagedFeedImage: NSManagedObject {
    @NSManaged var id: UUID
    @NSManaged var imageDescription: String?
    @NSManaged var location: String?
    @NSManaged var url: URL
    @NSManaged var cache: ManagedCache
    
    static func images(from localFeed: [LocalFeedImage], context: NSManagedObjectContext) -> NSOrderedSet {
        return NSOrderedSet(array: localFeed.map { local in
            let managedImage = ManagedFeedImage(context: context)
            managedImage.id = local.id
            managedImage.imageDescription = local.description
            managedImage.location = local.location
            managedImage.url = local.url
            return managedImage
        })
    }
    
    var local: LocalFeedImage {
        return LocalFeedImage(id: id, description: imageDescription, location: location, url: url)
    }
}


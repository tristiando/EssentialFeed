//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Thu Do on 24/08/2023.
//

import UIKit
import EssentialFeed

final class FeedImageViewModel {
    private var task: FeedImageDataLoaderTask?
    private let model: FeedImage
    private let imageLoader: FeedImageDataLoader
    
    init(model: FeedImage, imageLoader: FeedImageDataLoader) {
        self.model = model
        self.imageLoader = imageLoader
    }
    
    var location: String? {
        return model.location
    }
    
    var hasLocation: Bool {
        return location != nil
    }
    
    var description: String? {
        return model.description
    }
    
    var onImageLoad: ((UIImage) -> Void)?
    var onImageLoadingStateChange: ((Bool) -> Void)?
    var onShouldRetryImageLoadStateChange: ((Bool) -> Void)?
    
    func loadImageData() {
        onImageLoadingStateChange?(true)
        onShouldRetryImageLoadStateChange?(false)
        task = imageLoader.loadImageData(from: model.url) { [weak self] result in
            let data = try? result.get()
            if let image = data.flatMap(UIImage.init) {
                self?.onImageLoad?(image)
            } else {
                self?.onShouldRetryImageLoadStateChange?(true)
            }
            self?.onImageLoadingStateChange?(false)
        }
    }
    
    func cancelImageDataLoad() {
        task?.cancel()
        task = nil
    }
}


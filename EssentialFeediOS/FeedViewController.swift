//
//  FeedViewController.swift
//  EssentialFeediOS
//
//  Created by Thu Do on 19/07/2023.
//

import UIKit
import EssentialFeed

final public class FeedViewController: UITableViewController {
    private var loader: FeedLoader?
    
    public convenience init(loader: FeedLoader) {
        self.init()
        self.loader = loader
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshControl = UIRefreshControl()
        refreshControl?.addTarget(self, action: #selector(load), for: .valueChanged)
        refreshControl?.beginRefreshing()
        load()
    }
    
    @objc private func load() {
        refreshControl?.beginRefreshing()
        loader?.load { [weak self] _ in
            self?.refreshControl?.endRefreshing()
        }
    }
}

//
//  VideosTableViewController.swift
//  CustomTableViewExample
//
//  Created by Eren Demir on 25.04.2022.
//

import UIKit


class VideosTableViewController: UITableViewController {
    
    
    var videos:[Video] = Video.fetchVideos()
    
    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell",for: indexPath) as! VideoTableViewCell
        let video = videos[indexPath.row]
        cell.video = video
        return cell
    }
    
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("select row \(indexPath.row)")
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

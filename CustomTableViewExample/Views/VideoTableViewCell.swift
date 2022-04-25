//
//  VideoTableViewCell.swift
//  CustomTableViewExample
//
//  Created by Eren Demir on 25.04.2022.
//

import UIKit

class VideoTableViewCell: UITableViewCell{
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    
    
    var video: Video! {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        thumbnailImageView.image = UIImage(named: video.thumbnailFileName)
        
        thumbnailImageView.layer.cornerRadius = 5.0
        thumbnailImageView.layer.masksToBounds = true
        usernameLabel.text = video.authorName
    }
}

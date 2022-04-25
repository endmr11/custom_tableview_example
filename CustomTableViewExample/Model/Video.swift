//
//  Video.swift
//  CustomTableViewExample
//
//  Created by Eren Demir on 25.04.2022.
//

import Foundation

struct Video {
    
    let authorName: String
    let videoFileName: String
    let description: String
    let thumbnailFileName: String
    
    static func fetchVideos() -> [Video] {
        let v1 = Video(authorName: "Eren", videoFileName: "v1", description: "Example local video", thumbnailFileName: "v1")
        let v2 = Video(authorName: "Ahmet", videoFileName: "v2", description: "Example local video", thumbnailFileName: "v2")
        let v3 = Video(authorName: "Mehmet", videoFileName: "v3", description: "Example local video", thumbnailFileName: "v3")
        let v4 = Video(authorName: "Furkan", videoFileName: "v4", description: "Example local video", thumbnailFileName: "v4")
        let v5 = Video(authorName: "Yusuf", videoFileName: "v5", description: "Example local video", thumbnailFileName: "v5")
        let v6 = Video(authorName: "Murat", videoFileName: "v6", description: "Example local video", thumbnailFileName: "v6")
        
        return [v1,v2,v3,v4,v5,v6]
    }
}

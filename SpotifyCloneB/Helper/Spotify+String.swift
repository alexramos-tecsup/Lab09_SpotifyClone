//
//  Spotify+String.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 7/05/22.
//

import Foundation

class HelperString {
    
    static let imageProfileLink = "https://i.scdn.co/image/ab6775700000ee856157564f3141f2d66b272fee"
    
    static func getURLFromString(url: String) -> URL? {
        guard let url = URL(string: url) else { return nil }
        
        return url
    }
    
}

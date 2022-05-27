//
//  Request.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 7/05/22.
//

import Foundation

class Request {
    
    let token  = "BQCqt1AxTmWpsnrzB4DFMSJyIxPnJ_m92IxnSKhuwrWOCRW3_jXqfSmdWCZ1iA4ylvHeMxIWNGg-d7x7RPhFqriN0b828w7NkM1QsgTNKoszU4LQhU8ZBI7BWHAEEHkuvEs7o_6KsSPC1gdfuUOnv0MEh_A89OVHsGdWd7nzmJ5PBGo-Dw"
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    func getDataFromAPI(url: String) async -> Data? {
        do {
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(url)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
    
}

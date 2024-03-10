//
//  PostData.swift
//  HAX0R News
//
//  Created by Ashwin Gupta on 25/2/2024.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
    
    
}

struct Post: Decodable, Identifiable{
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}


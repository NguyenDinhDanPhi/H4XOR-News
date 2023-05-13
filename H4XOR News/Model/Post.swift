//
//  Post.swift
//  H4XOR News
//
//  Created by dan phi on 02/05/2023.
//

import Foundation

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}

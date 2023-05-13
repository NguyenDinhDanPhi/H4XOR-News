//
//  NetworkingManager.swift
//  H4XOR News
//
//  Created by dan phi on 28/04/2023.
//

import Foundation

class NetworkManager: ObservableObject {
    
  @Published  var post = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, err) in
                if err == nil {
                    let decode = JSONDecoder()
                    if let safeData = data {
                        do {
                            let result = try decode.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.post = result.hits
                            }
                           
                        } catch {
                            print(err)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}

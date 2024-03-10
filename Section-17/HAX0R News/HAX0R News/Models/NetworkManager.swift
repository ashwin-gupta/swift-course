//
//  NetworkManager.swift
//  HAX0R News
//
//  Created by Ashwin Gupta on 25/2/2024.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    
                    if let safeData = data {
                        
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async{
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                        }
                        
                    }
                    
                } else {
                    print("Error")
                }
            }
            
            task.resume()
        }
    }
}

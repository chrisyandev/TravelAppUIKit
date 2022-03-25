//
//  Networking.swift
//  TravelAppUIKit
//
//  Created by Chris Yan on 2022-03-24.
//

import UIKit

class Networking {
    
    static func makeMockApi() {
        
        let session = URLSession.shared
        let url = URL(string: "https://dummy.restapiexample.com/api/v1/employees")!
        
        let task = session.dataTask(with: url) { data, response, error in
            if let error = error {
                self.handle(error: error)
            } else {
                if let _ = data,
                    let response = response as? HTTPURLResponse,
                        (200...299).contains(response.statusCode) {
                    print("working!")
                    // TODO: deserialize data here
                } else {
                    print("not working!")
                }
            }
            
        }
        
        task.resume()
        
    }
    
    static func handle(error: Error) {
        print("error is: \(error.localizedDescription)")
    }
    
}

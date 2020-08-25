//
//  File.swift
//  
//
//  Created by Andrew Thom on 8/24/20.
//

import Foundation

class CTPStatus {
    func getStatus(callback: @escaping (CTStatusResponse?, Error?) -> Void) {
        let url = URL(string: "https://api.covidtracking.com/v1/status.json")!
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                callback(nil, error)
                return
            }
            if let httpResponse = response as? HTTPURLResponse {
                if httpResponse.statusCode != 200 {
                    callback(nil, nil)
                    return
                }
            }
            let json = JSONDecoder()
            let status = try! json.decode(CTStatusResponse.self, from: data!)
            callback(status, nil)
        }.resume()
    }
}

struct CTStatusResponse : Codable {
    var buildTime: String
    var production: Bool
    var runNumber: Int
}

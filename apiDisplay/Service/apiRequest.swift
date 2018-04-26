//
//  apiService.swift
//  apiDisplay
//
//  Created by HengVisal on 4/25/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

import Foundation
import APIKit

class apiService
{
    
    static let shared = apiService()
    private init() {}

    func apiPostRequest(completion: @escaping (apiResult) -> Void) {
        let request = apiInfo(grant_type: "password", client_id: "3", client_secret: "7d1rKIZCc80wQVEDk95uesFwUQnOGFpz7HPQGSbm", username: "suguru.sasaki@quad.co.jp", password: "abc123")
        Session.send(request)
        { result in
            switch result {
            case .success(let apiResult):
                completion(apiResult)
            case .failure(let error):
                print("error1: \(error)")
            }
        }

    }
}


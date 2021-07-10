//
//  Networking.swift
//  SwiftLearning
//
//  Created by itsupport on 12/06/21.
//  Copyright © 2021 itsupport. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

func getRequest(requestData:RequestData,completion: @escaping (String)->()){
    let request = AF.request(requestData.url)
    request.responseJSON { (response) in
        if response.data != nil {
            let data = response.data!
            let json = try! JSON(data: data)
            completion(json.description)
        }
    }
}

//
//  Repository.swift
//  SwiftLearning
//
//  Created by itsupport on 12/06/21.
//  Copyright © 2021 itsupport. All rights reserved.
//

import Foundation

func fetchFilmData(completion : @escaping (Welcome)->()){
    fetchFilms(){ response in
        completion(response)
    }
}

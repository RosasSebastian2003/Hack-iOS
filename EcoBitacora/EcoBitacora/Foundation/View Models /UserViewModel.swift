//
//  UserViewModel.swift
//  EcoBitacora
//
//  Created by Sebastian Rosas Maciel on 3/9/24.
//

import Foundation

struct User: Decodable {
    var name: String
}

@Observable final class UserViewModel {
    let extractor = Extractors()
    var users: [User] =  []
    
    init() {
        self.users = extractor.load("filename.json")
    }
}

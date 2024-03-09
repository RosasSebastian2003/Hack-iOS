//
//  Helpers.swift
//  EcoBitacora
//
//  Created by Sebastian Rosas Maciel on 3/9/24.
//

import Foundation

struct Extractors {
    /* 
     Generic JSON file extractor, works with any data type as long as it's decodable
     An instance of extractors needs to be created in order for the function to be used
     
     ex:
     struct User {...}
     let extractors = Extractors()
     let loadedUsers: User = extractors.load(file.json)
     */
    
    func load<T: Decodable>(_ filename: String) -> T {
        let data: Data
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
        }


        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }


        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }
}

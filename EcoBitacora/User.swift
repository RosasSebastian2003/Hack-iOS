//
//  User.swift
//  EcoBitacora
//
//  Created by Javier Davila on 09/03/24.
//

//User contiene User, name, mail, id, password
//Car contiene model, uso de gasolina por km, trips
//Trips contiene distancia del viaje y duración


import Foundation

struct User: Codable {
    let id: Int
    let name: String 
    let mail: String
    let password: String
    let car: Car?
}

struct Car: Codable {
    let model: String
    let gasConsumption: Double // Cambiado a Double para mayor precisión.
    var trips: [Trips] // Ahora puede contener múltiples viajes.
}

struct Trips: Codable {
    let distance: Double
    let duration: Int
}

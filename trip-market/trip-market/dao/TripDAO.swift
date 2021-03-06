//
//  TripDAO.swift
//  trip-market
//
//  Created by Angelo Ferreira on 11/11/20.
//  Copyright © 2020 Angelo Ferreira. All rights reserved.
//

import UIKit

class TripDAO: NSObject {
    func getAllTrips() -> Array<Trip> {
        
        let moon = Trip(title: "Moon", days: 10, price: "1.000.000.00,00", imagePath: "moon.jpg")
        let saturn = Trip(title: "Saturn", days: 5, price: "5.000.000.00,00", imagePath: "saturn.jpg")
        let mars = Trip(title: "Mars", days: 7, price: "3.000.000.00,00", imagePath: "mars.jpg")
        
        let moon1 = Trip(title: "Moon", days: 10, price: "1.000.000.00,00", imagePath: "moon.jpg")
        let saturn1 = Trip(title: "Saturn", days: 5, price: "5.000.000.00,00", imagePath: "saturn.jpg")
        let mars1 = Trip(title: "Mars", days: 7, price: "3.000.000.00,00", imagePath: "mars.jpg")
        
        let moon2 = Trip(title: "Moon", days: 10, price: "1.000.000.00,00", imagePath: "moon.jpg")
        let saturn2 = Trip(title: "Saturn", days: 5, price: "5.000.000.00,00", imagePath: "saturn.jpg")
        let mars2 = Trip(title: "Mars", days: 7, price: "3.000.000.00,00", imagePath: "mars.jpg")
        
        let tripList:Array<Trip> = [moon, saturn, mars, moon1, saturn1, mars1, moon2, saturn2, mars2]
        
        return tripList
    }
}

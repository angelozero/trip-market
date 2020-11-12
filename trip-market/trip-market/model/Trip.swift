//
//  Trip.swift
//  trip-market
//
//  Created by Angelo Ferreira on 11/11/20.
//  Copyright © 2020 Angelo Ferreira. All rights reserved.
//

import UIKit

class Trip: NSObject {
    
    let title: String
    let days: Int
    let price: String
    let imagePath: String
    
    init(title:String, days:Int, price:String, imagePath:String) {
        self.title = title
        self.days = days
        self.price = price
        self.imagePath = imagePath
    }
}

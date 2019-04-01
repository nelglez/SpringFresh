//
//  Products.swift
//  SpringFresh
//
//  Created by Nelson Gonzalez on 3/30/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation
struct Products {
    let quantity: Int
    let amount: Double
    
    var cost: Double {
        return Double(quantity) * amount
    }
}

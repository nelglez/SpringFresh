//
//  InvoiceProducts.swift
//  SpringFresh
//
//  Created by Nelson Gonzalez on 4/1/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation
import UIKit

struct InvoiceProducts: Equatable {
    
    var beforeImages: UIImage?
    
    
    var storeNumber: Int
    //MARK: - Consumer Bunch
    var consumerBunchSku: Int = 920339
    var consumerBuchRetail: Double = 3.99
    var consumerBuchUnitPrice: Double = 3.00
    var consumerBunchQuantity: Int
    var consumerBuchTotal: Double
    
    //MARK: - CrazyDaisy
    var crazyDaisySku: Int = 479949
    var crazyDaisyRetail: Double = 4.99
    var crazyDaisyUnitPrice: Double = 3.74
    var crazyDaisyQuantity: Int
    var crazyDaisyTotal: Double
    
    //MARK: - Designer Bouquet
    var designerBouquetSku: Int = 920336
    var designerBouquetRetail: Double = 6.99
    var designerBouquetUnitPrice: Double = 5.25
    var designerBouquetQuantity: Int
    var designerBouquetTotal: Double
    
    //MARK: - PringFresh Bouquet
    var springFreshBouquetSku: Int = 920335
    var springFreshBouquetRetail: Double = 10.49
    var springFreshBouquetUnitPrice: Double = 7.86
    var springFreshBouquetQuantity: Int
    var springFreshBouquetTotal: Double
    
    //MARK: - Crazy About You
    var crazyAboutYouSku: Int = 479964
    var crazyAboutYouRetail: Double = 11.99
    var crazyAboutYouUnitPrice: Double = 8.99
    var crazyAboutYouQuantity: Int
    var crazyAboutYouTotal: Double
    
    //MARK: - Abstract vases
    var abstractVasesSku: Int = 479956
    var abstractVasesRetail: Double = 3.99
    var abstractVasesUnitPrice: Double = 2.99
    var abstractVasesQuantity: Int
    var abstractVasesTotal: Double
    
    //MARK: - Med Floral Baskets
    var medFloralBasketsSku: Int = 774302
    var medFloralBasketsRetail: Double = 9.99
    var medFloralBasketsUnitPrice: Double = 7.00
    var medFloralBasketsQuantity: Int
    var medFloralBasketsTotal: Double
    
    //MARK: - Assorted Bouquet
    var assortedBouquetSku: Int = 480012
    var assortedBouquetRetail: Double = 5.99
    var assortedBouquetUnitPrice: Double = 4.49
    var assortedBouquetQuantity: Int
    var assortedBouquetTotal: Double
    
    //MARK: - Total
    var quantity: Int
    var subTotal: Double?
    var total: Double
    var returns: Int
    
    var afterImages: UIImage?
    var notes: String?
    
    init(beforeImages: UIImage?, storeNumber: Int, consumerBunchSku: Int = 920339, consumerBuchRetail: Double = 3.99, consumerBuchUnitPrice: Double = 3.00, consumerBunchQuantity: Int, consumerBuchTotal: Double, crazyDaisySku: Int = 479949, crazyDaisyRetail: Double = 4.99, crazyDaisyUnitPrice: Double = 3.74, crazyDaisyQuantity: Int, crazyDaisyTotal: Double, designerBouquetSku: Int = 920336, designerBouquetRetail: Double = 6.99, designerBouquetUnitPrice: Double = 5.25, designerBouquetQuantity: Int, designerBouquetTotal: Double, springFreshBouquetSku: Int = 920335, springFreshBouquetRetail: Double = 10.49, springFreshBouquetUnitPrice: Double = 7.86, springFreshBouquetQuantity: Int, springFreshBouquetTotal: Double, crazyAboutYouSku: Int = 479964, crazyAboutYouRetail: Double = 11.99, crazyAboutYouUnitPrice: Double = 8.99, crazyAboutYouQuantity: Int, crazyAboutYouTotal: Double, abstractVasesSku: Int = 479956, abstractVasesRetail: Double = 3.99, abstractVasesUnitPrice: Double = 2.99, abstractVasesQuantity: Int, abstractVasesTotal: Double, medFloralBasketsSku: Int = 774302, medFloralBasketsRetail: Double = 9.99, medFloralBasketsUnitPrice: Double = 7.00, medFloralBasketsQuantity: Int, medFloralBasketsTotal: Double, assortedBouquetSku: Int = 480012, assortedBouquetRetail: Double = 5.99, assortedBouquetUnitPrice: Double = 4.49, assortedBouquetQuantity: Int, assortedBouquetTotal: Double, quantity: Int, subTotal: Double?, total: Double, returns: Int, afterImages: UIImage?, notes: String?){
        
        self.beforeImages = beforeImages
       
        
        self.storeNumber = storeNumber
        self.consumerBunchSku = consumerBunchSku
        self.consumerBuchRetail = consumerBuchRetail
        self.consumerBuchUnitPrice = consumerBuchUnitPrice
        self.consumerBunchQuantity = consumerBunchQuantity
        self.consumerBuchTotal = consumerBuchTotal
        
        self.crazyDaisySku = crazyDaisySku
        self.crazyDaisyRetail = crazyDaisyRetail
        self.crazyDaisyUnitPrice = crazyDaisyUnitPrice
        self.crazyDaisyQuantity = crazyDaisyQuantity
        self.crazyDaisyTotal = crazyDaisyTotal
        
        self.designerBouquetSku = designerBouquetSku
        self.designerBouquetRetail = designerBouquetRetail
        self.designerBouquetUnitPrice = designerBouquetUnitPrice
        self.designerBouquetQuantity = designerBouquetQuantity
        self.designerBouquetTotal = designerBouquetTotal
        
        self.springFreshBouquetSku = springFreshBouquetSku
        self.springFreshBouquetRetail = springFreshBouquetRetail
        self.springFreshBouquetUnitPrice = springFreshBouquetUnitPrice
        self.springFreshBouquetQuantity = springFreshBouquetQuantity
        self.springFreshBouquetTotal = springFreshBouquetTotal
        
        self.crazyAboutYouSku = crazyAboutYouSku
        self.crazyAboutYouRetail = crazyAboutYouRetail
        self.crazyAboutYouUnitPrice = crazyAboutYouUnitPrice
        self.crazyAboutYouQuantity = crazyAboutYouQuantity
        self.crazyAboutYouTotal = crazyAboutYouTotal
        
        self.abstractVasesSku = abstractVasesSku
        self.abstractVasesRetail = abstractVasesRetail
        self.abstractVasesUnitPrice = abstractVasesUnitPrice
        self.abstractVasesQuantity = abstractVasesQuantity
        self.abstractVasesTotal = abstractVasesTotal
        
        self.medFloralBasketsSku = medFloralBasketsSku
        self.medFloralBasketsRetail = medFloralBasketsRetail
        self.medFloralBasketsUnitPrice = medFloralBasketsUnitPrice
        self.medFloralBasketsQuantity = medFloralBasketsQuantity
        self.medFloralBasketsTotal = medFloralBasketsTotal
        
        self.assortedBouquetSku = assortedBouquetSku
        self.assortedBouquetRetail = assortedBouquetRetail
        self.assortedBouquetUnitPrice = assortedBouquetUnitPrice
        self.assortedBouquetQuantity = assortedBouquetQuantity
        self.assortedBouquetTotal = assortedBouquetTotal
        
        self.quantity = quantity
        self.subTotal = subTotal
        self.total = total
        self.returns = returns
        
        self.afterImages = afterImages
        self.notes = notes
    }
}

//
//  InvoiceController.swift
//  SpringFresh
//
//  Created by Nelson Gonzalez on 4/1/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class InvoiceController {
    
    private(set) var invoices: [InvoiceProducts] = []
    
    func createInvoiceData(beforeImages: UIImage? = nil, storeNumber: Int, consumerBunchQuantity: Int, consumerBuchTotal: Double, crazyDaisyQuantity: Int, crazyDaisyTotal: Double, designerBouquetQuantity: Int, designerBouquetTotal: Double, springFreshBouquetQuantity: Int, springFreshBouquetTotal: Double, crazyAboutYouQuantity: Int, crazyAboutYouTotal: Double, abstractVasesQuantity: Int, abstractVasesTotal: Double, medFloralBasketsQuantity: Int, medFloralBasketsTotal: Double, assortedBouquetQuantity: Int, assortedBouquetTotal: Double, quantity: Int, subTotal: Double?, total: Double, returns: Int, afterImages: UIImage? = nil, notes: String? = nil){
        let invoiceData = InvoiceProducts(beforeImages: beforeImages, storeNumber: storeNumber, consumerBunchQuantity: consumerBunchQuantity, consumerBuchTotal: consumerBuchTotal, crazyDaisyQuantity: crazyDaisyQuantity, crazyDaisyTotal: crazyDaisyTotal, designerBouquetQuantity: designerBouquetQuantity, designerBouquetTotal: designerBouquetTotal, springFreshBouquetQuantity: springFreshBouquetQuantity, springFreshBouquetTotal: springFreshBouquetTotal, crazyAboutYouQuantity: crazyAboutYouQuantity, crazyAboutYouTotal: crazyAboutYouTotal, abstractVasesQuantity: abstractVasesQuantity, abstractVasesTotal: abstractVasesTotal, medFloralBasketsQuantity: medFloralBasketsQuantity, medFloralBasketsTotal: medFloralBasketsTotal, assortedBouquetQuantity: assortedBouquetQuantity, assortedBouquetTotal: assortedBouquetTotal, quantity: quantity, subTotal: subTotal, total: total, returns: returns, afterImages: afterImages, notes: notes)
        
        
        invoices.append(invoiceData)
    }
    
    func remove(invoice: InvoiceProducts) {
        guard let index = invoices.firstIndex(of: invoice) else { return }
        invoices.remove(at: index)
    }
}

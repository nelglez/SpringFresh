//
//  InvoiceTotalTableViewCell.swift
//  SpringFresh
//
//  Created by Nelson Gonzalez on 5/13/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class InvoiceTotalTableViewCell: UITableViewCell {
    @IBOutlet weak var storeNumberLabel: UILabel!
    
    @IBOutlet weak var consumerBunchQuantityLabel: UILabel!
    @IBOutlet weak var consumerBunchTotalLabel: UILabel!
    
    @IBOutlet weak var crazyDaisyQuantityLabel: UILabel!
    @IBOutlet weak var crazyDaisyTotalLabel: UILabel!
    
    @IBOutlet weak var designerBouquetQuantityLabel: UILabel!
    @IBOutlet weak var designerBouquetTotalLabel: UILabel!
    
    @IBOutlet weak var springFreshQuantityLabel: UILabel!
    @IBOutlet weak var springFreshTotalLabel: UILabel!
    
    @IBOutlet weak var crazyAboutYouQuantityLabel: UILabel!
    @IBOutlet weak var crazyAboutYoutTotalLabel: UILabel!
    
    @IBOutlet weak var abstractVasesQuantityLabel: UILabel!
    @IBOutlet weak var abstractVasesTotalLabel: UILabel!
    
    @IBOutlet weak var floralBasketQuantityLabel: UILabel!
    @IBOutlet weak var floralBasketTotalLabel: UILabel!
    
    @IBOutlet weak var assortedBouquetQuantityLabel: UILabel!
    @IBOutlet weak var assortedBouquetTotalLabel: UILabel!
    
    @IBOutlet weak var totalQuantityLabel: UILabel!
    
    @IBOutlet weak var subTotalLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var returnsLabel: UILabel!
    
    @IBOutlet weak var notesTextView: UITextView!
    
    @IBOutlet weak var beforeImageView: UIImageView!
    @IBOutlet weak var afterImageView: UIImageView!
    
    
    var invoiceProducts: InvoiceProducts? {
        didSet {
            updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    private func updateViews() {
        guard let invoiceProducts = invoiceProducts else { return }
        
        storeNumberLabel.text = "\(invoiceProducts.storeNumber)"
        
        consumerBunchQuantityLabel.text = "\(invoiceProducts.consumerBunchQuantity)"
        consumerBunchTotalLabel.text = "\(invoiceProducts.consumerBuchTotal)"
        
        crazyDaisyQuantityLabel.text = "\(invoiceProducts.crazyDaisyQuantity)"
        crazyDaisyTotalLabel.text = "\(invoiceProducts.crazyDaisyTotal)"
        
        designerBouquetQuantityLabel.text = "\(invoiceProducts.designerBouquetQuantity)"
        designerBouquetTotalLabel.text = "\(invoiceProducts.designerBouquetTotal)"
        
        springFreshQuantityLabel.text = "\(invoiceProducts.springFreshBouquetQuantity)"
        springFreshTotalLabel.text = "\(invoiceProducts.springFreshBouquetTotal)"
        
        crazyAboutYouQuantityLabel.text = "\(invoiceProducts.crazyAboutYouQuantity)"
        crazyAboutYoutTotalLabel.text = "\(invoiceProducts.crazyAboutYouTotal)"
        
        abstractVasesQuantityLabel.text = "\(invoiceProducts.abstractVasesQuantity)"
        abstractVasesTotalLabel.text = "\(invoiceProducts.abstractVasesTotal)"
        
        floralBasketQuantityLabel.text = "\(invoiceProducts.medFloralBasketsQuantity)"
        floralBasketTotalLabel.text = "\(invoiceProducts.medFloralBasketsTotal)"
        
        assortedBouquetQuantityLabel.text = "\(invoiceProducts.assortedBouquetQuantity)"
        assortedBouquetTotalLabel.text = "\(invoiceProducts.assortedBouquetTotal)"
        
        totalQuantityLabel.text = "\(invoiceProducts.quantity)"
        subTotalLabel.text = "\(invoiceProducts.subTotal ?? 0.0)"
        totalLabel.text = "\(invoiceProducts.total)"
        
        returnsLabel.text = "\(invoiceProducts.returns)"
        
        notesTextView.text = invoiceProducts.notes
        
        beforeImageView.image = invoiceProducts.beforeImages
        afterImageView.image = invoiceProducts.afterImages
        
    }

    
}

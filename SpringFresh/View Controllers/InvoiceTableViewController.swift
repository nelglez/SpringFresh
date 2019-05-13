//
//  InvoiceTableViewController.swift
//  SpringFresh
//
//  Created by Nelson Gonzalez on 3/28/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class InvoiceTableViewController: UITableViewController, UITextFieldDelegate, UITextViewDelegate {
    @IBOutlet weak var consumerBunchQuantityTextField: UITextField!
    @IBOutlet weak var consumerBunchTotalTextField: UITextField!
    
    @IBOutlet weak var crazyDaisyQuantityTextField: UITextField!
    @IBOutlet weak var crazyDaisyTotalTextField: UITextField!
    
    @IBOutlet weak var designerBouquetQuantityTextField: UITextField!
    @IBOutlet weak var designerBouquetTotalTextField: UITextField!
    
    @IBOutlet weak var spingFreshBouquetQuantityTextField: UITextField!
    @IBOutlet weak var springFreshBouquetTotalTextField: UITextField!
    
    @IBOutlet weak var crazyAboutYouQuantityTextField: UITextField!
    @IBOutlet weak var crazyAboutYourTotalTextField: UITextField!
    
    @IBOutlet weak var abstractVasesQuantityTextField: UITextField!
    @IBOutlet weak var abstractVasesTotalTextField: UITextField!
    
    @IBOutlet weak var medFloralBasketsQuantityTextField: UITextField!
    @IBOutlet weak var medFloralBasketsTotalTextField: UITextField!
    
    @IBOutlet weak var assortedBouquetQuantityTextField: UITextField!
    @IBOutlet weak var assortedBouquetTotalTextField: UITextField!
    
    @IBOutlet weak var totalQuanityTextLabel: UILabel!
    @IBOutlet weak var totalSubTotalTextLabel: UILabel!
    @IBOutlet weak var totalTotalLabel: UILabel!
    @IBOutlet weak var totalReturnsTextField: UITextField!
    @IBOutlet weak var storeNumberTextField: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    @IBOutlet weak var beforePictureImageView: UIImageView!
    
    @IBOutlet weak var afterPictureImageView: UIImageView!
    
    @IBOutlet weak var notesTextView: UITextView!
    
    
    var currentVC: UIViewController!
    
    var currentImageView: UIImageView?
    
    let invoiceController = InvoiceController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textFieldDelegates()
        updateTotals()
        addDoneButtonOnKeyboard()
        
        notesTextView.delegate = self
        notesTextView.text = "Notes:..."
        
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if notesTextView.text == "Notes:..." {
            notesTextView.text = nil
            notesTextView.textColor = UIColor.black
        }
    }
    
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if notesTextView.text == nil {
            notesTextView.text = "Notes:..."
        }
    }
    
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if (text == "\n") {
            notesTextView.resignFirstResponder()
            return false
        }
        return true
    }

    
    
   
    
    //This is for the keyboard to GO AWAYY !! when user clicks anywhere on the view
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         self.view.endEditing(true)
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        updateTotals()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateTotals()
    }

  
    
   
    private func saveData() {
        
        guard let storeNumber = storeNumberTextField.text, !storeNumber.isEmpty, let consumerBunchQuantity = consumerBunchQuantityTextField.text, let consumerBunchTotal = consumerBunchTotalTextField.text, let crazyDaisyQuantity = crazyDaisyQuantityTextField.text, let crazyDaisyTotal = crazyDaisyTotalTextField.text, let designerBouquetQuantity = designerBouquetQuantityTextField.text, let designerBouquetTotal = designerBouquetTotalTextField.text, let springFreshBouquetQuantity = spingFreshBouquetQuantityTextField.text, let springFreshBouquetTotal = springFreshBouquetTotalTextField.text, let crazyAboutYouQuantity = crazyAboutYouQuantityTextField.text, let crazyAboutYouTotal = crazyAboutYourTotalTextField.text, let astractVasesQuantity = abstractVasesQuantityTextField.text, let astractVasesTotal = abstractVasesTotalTextField.text, let medFloralBasketsQuantity = medFloralBasketsQuantityTextField.text, let medFloralBasketsTotal = medFloralBasketsTotalTextField.text, let assortedBouquetQuantity = assortedBouquetQuantityTextField.text, let assortedBouquetTotal = assortedBouquetTotalTextField.text, let totalQuantity = totalQuanityTextLabel.text, !totalQuantity.isEmpty, let total = totalTotalLabel.text, !total.isEmpty, let returns = totalReturnsTextField.text else {return}
        
        invoiceController.createInvoiceData(beforeImages: beforePictureImageView.image, storeNumber: Int(storeNumber) ?? 0, consumerBunchQuantity: Int(consumerBunchQuantity) ?? 0, consumerBuchTotal: Double(consumerBunchTotal) ?? 0.0, crazyDaisyQuantity: Int(crazyDaisyQuantity) ?? 0, crazyDaisyTotal: Double(crazyDaisyTotal) ?? 0.0, designerBouquetQuantity: Int(designerBouquetQuantity) ?? 0, designerBouquetTotal: Double(designerBouquetTotal) ?? 0.0, springFreshBouquetQuantity: Int(springFreshBouquetQuantity) ?? 0, springFreshBouquetTotal: Double(springFreshBouquetTotal) ?? 0.0, crazyAboutYouQuantity: Int(crazyAboutYouQuantity) ?? 0, crazyAboutYouTotal: Double(crazyAboutYouTotal) ?? 0.0, abstractVasesQuantity: Int(astractVasesQuantity) ?? 0, abstractVasesTotal: Double(astractVasesTotal) ?? 0.0, medFloralBasketsQuantity: Int(medFloralBasketsQuantity) ?? 0, medFloralBasketsTotal: Double(medFloralBasketsTotal) ?? 0.0, assortedBouquetQuantity: Int(assortedBouquetQuantity) ?? 0 , assortedBouquetTotal: Double(assortedBouquetTotal) ?? 0.0, quantity: Int(totalQuantity) ?? 0, subTotal: Double(totalSubTotalTextLabel.text ?? ""), total: Double(total) ?? 0.0, returns: Int(returns) ?? 0, afterImages: afterPictureImageView.image, notes: notesTextView.text)
    }


    @IBAction func submitButtonPressed(_ sender: UIButton) {
        
        saveData()
        
        let image = UIImage(named: "camera")
        
        beforePictureImageView.image = image
        afterPictureImageView.image = image
        notesTextView.textColor = .lightGray
        notesTextView.text = "Notes:..."
        
        print(invoiceController.invoices)
    }
    
    
    
    
    @IBAction func addBeforePictureButtonPressed(_ sender: UIButton) {
        
        presentPicker()
        currentImageView = beforePictureImageView
    }
    
    @IBAction func addAfterPictureButtonPressed(_ sender: UIButton) {
        presentPicker()
        currentImageView = afterPictureImageView
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowInvoiceProductsVC" {
            if let destinationVC = segue.destination as? InvoiceTotalTableViewController {
                destinationVC.invoiceController = invoiceController
            }
        }
    }
    
}






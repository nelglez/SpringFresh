//
//  InvoiceTableViewController.swift
//  SpringFresh
//
//  Created by Nelson Gonzalez on 3/28/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class InvoiceTableViewController: UITableViewController, UITextFieldDelegate {
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
    
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textFieldDelegates()
        updateTotals()
        addDoneButtonOnKeyboard()
    }

    fileprivate func addDoneButtonOnKeyboard() {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))
        
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.consumerBunchQuantityTextField.inputAccessoryView = doneToolbar
        self.consumerBunchTotalTextField.inputAccessoryView = doneToolbar
        self.crazyDaisyQuantityTextField.inputAccessoryView = doneToolbar
        self.crazyDaisyTotalTextField.inputAccessoryView = doneToolbar
        self.designerBouquetQuantityTextField.inputAccessoryView = doneToolbar
        self.designerBouquetTotalTextField.inputAccessoryView = doneToolbar
        self.spingFreshBouquetQuantityTextField.inputAccessoryView = doneToolbar
        self.springFreshBouquetTotalTextField.inputAccessoryView = doneToolbar
        self.crazyAboutYouQuantityTextField.inputAccessoryView = doneToolbar
        self.crazyDaisyTotalTextField.inputAccessoryView = doneToolbar
        self.abstractVasesQuantityTextField.inputAccessoryView = doneToolbar
        self.abstractVasesTotalTextField.inputAccessoryView = doneToolbar
        self.medFloralBasketsQuantityTextField.inputAccessoryView = doneToolbar
        self.medFloralBasketsTotalTextField.inputAccessoryView = doneToolbar
        self.assortedBouquetQuantityTextField.inputAccessoryView = doneToolbar
        self.assortedBouquetTotalTextField.inputAccessoryView = doneToolbar
        self.totalReturnsTextField.inputAccessoryView = doneToolbar
        
    }
    
    @objc fileprivate func doneButtonAction() {
      
        self.view.endEditing(true)
    }
    
    private func textFieldDelegates() {
        consumerBunchQuantityTextField.delegate = self
        consumerBunchTotalTextField.delegate = self
        
        crazyDaisyQuantityTextField.delegate = self
        crazyDaisyTotalTextField.delegate = self
        
        designerBouquetQuantityTextField.delegate = self
        designerBouquetTotalTextField.delegate = self
        
        spingFreshBouquetQuantityTextField.delegate = self
        springFreshBouquetTotalTextField.delegate = self
        
        crazyAboutYouQuantityTextField.delegate = self
        crazyAboutYourTotalTextField.delegate = self
        
        abstractVasesQuantityTextField.delegate = self
        abstractVasesTotalTextField.delegate = self
        
        medFloralBasketsQuantityTextField.delegate = self
        medFloralBasketsTotalTextField.delegate = self
        
        assortedBouquetQuantityTextField.delegate = self
        assortedBouquetTotalTextField.delegate = self
        
        totalReturnsTextField.delegate = self
        
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

    private func updateTotals() {
        print("Updated!")
        var total: Int = 0
    
        if let consumerBunchQuantity = consumerBunchQuantityTextField.text,!consumerBunchQuantity.isEmpty {
            
            total += Int(consumerBunchQuantity)!
        }
        if let crazyDaisy = crazyDaisyQuantityTextField.text, !crazyDaisy.isEmpty {
            total += Int(crazyDaisy)!
        }
        if let designerBouquet = designerBouquetQuantityTextField.text, !designerBouquet.isEmpty {
            total += Int(designerBouquet)!
        }
        if let springFresh = spingFreshBouquetQuantityTextField.text, !springFresh.isEmpty {
            total += Int(springFresh)!
        }
        if let crazyAboutYout = crazyAboutYouQuantityTextField.text, !crazyAboutYout.isEmpty {
            total += Int(crazyAboutYout)!
        }
        if let vases = abstractVasesQuantityTextField.text, !vases.isEmpty {
            total += Int(vases)!
        }
        if let baskets = medFloralBasketsQuantityTextField.text, !baskets.isEmpty {
            total += Int(baskets)!
        }
        if let assortedBouquets = assortedBouquetQuantityTextField.text, !assortedBouquets.isEmpty {
            total += Int(assortedBouquets)!
        }

        
        totalQuanityTextLabel.text = "\(total)"
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func submitButtonPressed(_ sender: UIButton) {
        
        
    }
}

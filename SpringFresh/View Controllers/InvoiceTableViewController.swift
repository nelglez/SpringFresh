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
    @IBOutlet weak var storeNumberTextField: UITextField!
    
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
        self.crazyAboutYourTotalTextField.inputAccessoryView = doneToolbar
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
       
        var items:[Products] = []
        
        var sum: Double = 0.00
        var quantity: Int = 0
    
        if let consumerBunchQuantity = consumerBunchQuantityTextField.text,!consumerBunchQuantity.isEmpty, let consumerBunchTotal = consumerBunchTotalTextField.text, !consumerBunchTotal.isEmpty {
            
            guard let consumerQuantityTotal = Int(consumerBunchQuantity), let bunchTotal = Double(consumerBunchTotal) else {return}
            
    
            let consumer = Products(quantity: consumerQuantityTotal, amount: bunchTotal)
            
            items.append(consumer)
            print(items.map({$0.cost}))
        }

        if let crazyDaisy = crazyDaisyQuantityTextField.text, !crazyDaisy.isEmpty, let crazyDaisyTotal = crazyDaisyTotalTextField.text, !crazyDaisyTotal.isEmpty {
           
            guard let crazyDaisyQuantity = Int(crazyDaisy), let crazyDaisyBunchTotal = Double(crazyDaisyTotal) else {return}
            
            
            let crazyDaisy = Products(quantity: crazyDaisyQuantity, amount: crazyDaisyBunchTotal)
            
            items.append(crazyDaisy)
            print(items.map({$0.cost}))
            
        }
        if let designerBouquet = designerBouquetQuantityTextField.text, !designerBouquet.isEmpty, let designerBouquetTotal = designerBouquetTotalTextField.text, !designerBouquetTotal.isEmpty {

            guard let designerBouquetQuantity = Int(designerBouquet), let desginerBouquetTotal = Double(designerBouquetTotal) else {return}

            let designerBouquet = Products(quantity: designerBouquetQuantity, amount: desginerBouquetTotal)
            
            items.append(designerBouquet)

            print(items.map({$0.cost}))
        }
        if let springFresh = spingFreshBouquetQuantityTextField.text, !springFresh.isEmpty, let springFreshTotal = springFreshBouquetTotalTextField.text, !springFreshTotal.isEmpty {

            guard let springFreshQuantity = Int(springFresh), let springFreshTotal = Double(springFreshTotal) else {return}

            let springFresh = Products(quantity: springFreshQuantity, amount: springFreshTotal)
            
            items.append(springFresh)
            print(items.map({$0.cost}))

        }
        if let crazyAboutYou = crazyAboutYouQuantityTextField.text, !crazyAboutYou.isEmpty, let crazyAboutYouTotal = crazyAboutYourTotalTextField.text, !crazyAboutYouTotal.isEmpty {

            guard let crazyAboutYouQuantity = Int(crazyAboutYou), let crazyAboutYouTotal = Double(crazyAboutYouTotal) else {return}

            let crazyAboutYou = Products(quantity: crazyAboutYouQuantity, amount: crazyAboutYouTotal)
            
            items.append(crazyAboutYou)
            print(items.map({$0.cost}))
        }
        if let vases = abstractVasesQuantityTextField.text, !vases.isEmpty, let vasesTotal = abstractVasesTotalTextField.text, !vasesTotal.isEmpty {

            guard let vasesQuantity = Int(vases), let vasesTotal = Double(vasesTotal) else {return}

            let vases = Products(quantity: vasesQuantity, amount: vasesTotal)
            
            items.append(vases)
            print(items.map({$0.cost}))
        }
        if let baskets = medFloralBasketsQuantityTextField.text, !baskets.isEmpty, let basketsTotal = medFloralBasketsTotalTextField.text, !basketsTotal.isEmpty {

            guard let basketsQuantity = Int(baskets), let basketsTotal = Double(basketsTotal) else {return}

            let baskets = Products(quantity: basketsQuantity, amount: basketsTotal)
            
            items.append(baskets)
            print(items.map({$0.cost}))

        }
        if let assortedBouquets = assortedBouquetQuantityTextField.text, !assortedBouquets.isEmpty, let assortedBouquetsTotal = assortedBouquetTotalTextField.text, !assortedBouquetsTotal.isEmpty {

            guard let assortedBouquetsQuantity = Int(assortedBouquets), let assortedBouquetsTotal = Double(assortedBouquetsTotal) else {return}

            let assortedBouquets = Products(quantity: assortedBouquetsQuantity, amount: assortedBouquetsTotal)
            
            items.append(assortedBouquets)
            print(items.map({$0.cost}))
        }
        
        let newTotal = items.map({$0.cost})
        let newQuantity = items.map({$0.quantity})
        
        for i in newTotal {
            
            sum += i
        }
        
        for i in newQuantity {
            quantity += i
        }
        
        totalQuanityTextLabel.text = "\(quantity)"
        totalTotalLabel.text = "\(sum.dollarString)"
        
    }
    
   
   
    
//    func updateTotals(consumerBunchQuantity: String, consumerBunchTotal: String, crazyDaisyQuantity: String, crazyDaisyTotal: String) {
//
//        guard let consumerQuantity = Int(consumerBunchQuantity) else { return }
//        guard let consumerAmount = Double(consumerBunchTotal) else { return }
//
//        guard let crazyDaisyQuantity = Int(crazyDaisyQuantity) else { return }
//        guard let crazyDaisyAmount = Double(crazyDaisyTotal) else { return }
//
//        let consumer = Products(quantity: consumerQuantity, amount: consumerAmount)
//        let crazyDaisy = Products(quantity: crazyDaisyQuantity, amount: crazyDaisyAmount)
//
//        let items = [consumer, crazyDaisy]
//
//        let numberOfItems = items.reduce(0) { $0 + $1.amount }
//        let totalCost = items.reduce(0) { $0 + $1.cost }
//
//    }


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
    
    
    private func saveData() {
        
    }
    
}




extension Double {
    var dollarString:String {
        return String(format: "%.2f", self)
    }
}

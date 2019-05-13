//
//  InvoiceTotalTableViewController.swift
//  SpringFresh
//
//  Created by Nelson Gonzalez on 5/13/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class InvoiceTotalTableViewController: UITableViewController {
    
    var invoiceController: InvoiceController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

      self.tableView.reloadData()
    }

    // MARK: - Table view data source

  

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return invoiceController?.invoices.count ?? 0
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InvoiceCell", for: indexPath) as! InvoiceTotalTableViewCell

        let invoiceProducts = invoiceController?.invoices[indexPath.row]
        
        cell.invoiceProducts = invoiceProducts

        return cell
    }
  
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            guard let invoice = invoiceController?.invoices[indexPath.row] else { return }
            
            invoiceController?.remove(invoice: invoice)
            
           tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }

    
    @IBAction func submitBarButtonItemPressed(_ sender: UIBarButtonItem) {
    }
    
}

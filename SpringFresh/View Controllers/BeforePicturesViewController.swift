//
//  BeforePicturesViewController.swift
//  SpringFresh
//
//  Created by Nelson Gonzalez on 3/18/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class BeforePicturesViewController: UIViewController, UITextViewDelegate {
    @IBOutlet weak var imageView1: UIImageView!

    @IBOutlet weak var notesTextField: UITextView!
    
    var image: UIImage? = nil
    var currentVC: UIViewController!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       notesTextField.delegate = self
        notesTextField.text = "Notes:"
      
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if notesTextField.text == "Notes:" {
            notesTextField.text = nil
            notesTextField.textColor = UIColor.black
        }
    }
    
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if notesTextField.text == nil {
            notesTextField.text = "Notes:"
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if (text == "\n") {
            notesTextField.resignFirstResponder()
            return false
        }
        return true
    }
    
    
    @IBAction func addPictureButtonPressed(_ sender: UIButton) {
        presentPicker()
    }
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        
        imageView1.image = nil
        notesTextField.text = nil
    }
}

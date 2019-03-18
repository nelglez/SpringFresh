//
//  BeforePicturesViewController.swift
//  SpringFresh
//
//  Created by Nelson Gonzalez on 3/18/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class BeforePicturesViewController: UIViewController {
    @IBOutlet weak var imageView1: UIImageView!

    
    var image: UIImage? = nil
  
    var currentVC: UIViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

       
      
    }
    
    
    @IBAction func addPictureButtonPressed(_ sender: UIButton) {
        presentPicker()
    }
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        imageView1.image = nil
    }
}

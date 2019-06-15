//
//  AddInfoViewController.swift
//  DocumentsChallenge
//
//  Created by John Williams III on 6/14/19.
//  Copyright © 2019 John Williams III. All rights reserved.
//

import UIKit

class AddInfoViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var infoTextField: UITextView!
    
    var document: Document?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let document = document {
            infoTextField.text = document.content ?? ""
            nameTextField.text = document.name
            
            title = document.name
        } else {
            title = ""
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

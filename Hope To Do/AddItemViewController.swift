//
//  AddItemViewController.swift
//  Hope To Do
//
//  Created by Shinto Joseph on 22/05/18.
//  Copyright © 2018 Shinto Joseph. All rights reserved.
//

import Foundation
import UIKit



protocol AddItemViewControllerDelegate:class{
    
    func addItemViewController(_ controller:AddItemViewController,didFinishAdding item:ChecklistItem)
}

class AddItemViewController: UITableViewController, UITextFieldDelegate {
    
    @IBOutlet weak var donebarButton: UIBarButtonItem!
    @IBOutlet weak var textField: UITextField!
    weak var delegate: AddItemViewControllerDelegate?
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        textField.becomeFirstResponder()
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }

    @IBAction func done(){
        
        let item = ChecklistItem()
        item.text = textField.text!
        item.checked = false
        
        delegate?.addItemViewController(self, didFinishAdding: item)
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel(){
        dismiss(animated: true, completion: nil)
    }
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        let newText = textField.text! as String
     
        if newText.count >= 2 {
            donebarButton.isEnabled = true
        } else {
            donebarButton.isEnabled = false
        }
       
        

        return true
    }
    
    
}


//
//  AddItemTableViewController.swift
//  bucketList
//
//  Created by Stacey Abbott on 11/13/17.
//  Copyright © 2017 Stacey Abbott. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    
    weak var delegate: AddItemTableViewControllerDelegate?
    var item: String?
    var indexPath: NSIndexPath?
    
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func cancelButtonpressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
        print("cancel")
    }
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        let text = itemTextField.text!
        delegate?.itemSaved(by: self, with: text, at: indexPath)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemTextField.text = item

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

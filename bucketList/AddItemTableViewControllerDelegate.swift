//
//  AddItemTableViewControllerDelegate.swift
//  bucketList
//
//  Created by Stacey Abbott on 11/14/17.
//  Copyright © 2017 Stacey Abbott. All rights reserved.
//

import Foundation

protocol AddItemTableViewControllerDelegate: class {
    func itemSaved(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?)
    func cancelButtonPressed(by controller: AddItemTableViewController)
}

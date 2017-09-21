//
//  AddItemDelegate.swift
//  todoList
//
//  Created by H on 9/17/17.
//  Copyright © 2017 Harshada. All rights reserved.
//

import Foundation

protocol AddItemDelegate: class {
    func itemSaved(by controller: AddItemViewController, title: String, desc: String, date: String)
}

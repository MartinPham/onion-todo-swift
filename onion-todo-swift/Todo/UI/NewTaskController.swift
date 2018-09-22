//
//  NewTaskController.swift
//  onion-todo-swift
//
//  Created by Martin Pham on 22/09/18.
//  Copyright © 2018 FornaceSrl. All rights reserved.
//

import Foundation
import UIKit

class NewTaskController : UIViewController {
	@IBOutlet weak var nameTextField: UITextField!
	
	
	@IBAction func submit(_ sender: Any) {
		let taskCreator = TaskCreator(withTaskRepository: AppDelegate.shared.getTaskRepository())
		
		do {
			try taskCreator.createANewTask(fromName: nameTextField.text!)
		
			
			navigationController?.popViewController(animated: true)
		} catch TaskError.invalidName {
			let alert = UIAlertController(title: "Error", message: "Invalid name", preferredStyle: UIAlertControllerStyle.alert)
			alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
			self.present(alert, animated: true, completion: nil)
		} catch {
			let alert = UIAlertController(title: "Error", message: "Unexpected", preferredStyle: UIAlertControllerStyle.alert)
			alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
			self.present(alert, animated: true, completion: nil)
		}
		
		
		
	}
}

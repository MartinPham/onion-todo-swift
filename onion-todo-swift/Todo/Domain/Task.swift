//
//  Task.swift
//  onion-todo-swift
//
//  Created by Martin Pham on 22/09/18.
//  Copyright © 2018 FornaceSrl. All rights reserved.
//

import Foundation

class Task : NSObject {
	private var name: TaskName;
	
	private init(withName _name: TaskName) {
		name = _name
	}
	
	
	public static func create(fromName _name: TaskName) -> Task {
		let task = Task(withName: _name)
	
		return task
	}
	
	public func getName() -> TaskName {
		return name
	}
}

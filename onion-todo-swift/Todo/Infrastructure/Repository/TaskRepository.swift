//
//  TaskRepository.swift
//  onion-todo-swift
//
//  Created by Martin Pham on 22/09/18.
//  Copyright © 2018 FornaceSrl. All rights reserved.
//

import Foundation

class TaskRepository: NSObject, TaskRepositoryProtocol {
	
	private var tasks: [Task] = [Task]()
	
	public func findAll() -> [Task] {
		return tasks
	}
	
	
	public func persist(task _task: Task) {
		tasks.append(_task)
	}
}

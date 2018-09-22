//
//  TaskBrowser.swift
//  onion-todo-swift
//
//  Created by Martin Pham on 22/09/18.
//  Copyright © 2018 FornaceSrl. All rights reserved.
//

import Foundation

class TaskBrowser : NSObject {
	private var taskRepository: TaskRepositoryProtocol
	
	public init(withTaskRepository _taskRepository: TaskRepositoryProtocol)
	{
		taskRepository = _taskRepository
	}
	
	public func getAllTasks() -> [Task] {
		return taskRepository.findAll()
	}
}

//
//  CreateANewTask.swift
//  onion-todo-swift
//
//  Created by Martin Pham on 22/09/18.
//  Copyright © 2018 FornaceSrl. All rights reserved.
//

import Foundation

class TaskCreator : NSObject {
	private var taskRepository: TaskRepositoryProtocol
	
	public init(withTaskRepository _taskRepository: TaskRepositoryProtocol)
	{
		taskRepository = _taskRepository
	}
	
	public func createANewTask(fromName _name: String) throws {
		do {
			let taskName = try TaskName(_name)
			
			
			let task = Task.create(fromName: taskName)
			
			taskRepository.persist(task: task)
		} catch TaskError.invalidName {
			throw TaskError.invalidName
		}

	}
}

//
//  Name.swift
//  onion-todo-swift
//
//  Created by Martin Pham on 22/09/18.
//  Copyright © 2018 FornaceSrl. All rights reserved.
//

import Foundation

class TaskName : NSObject {
	private var name: String;
	
	public init(_ _name: String) throws {
		let politeNameSpecification = PoliteName()
		if(!politeNameSpecification.isSatisfiedBy(_name))
		{
			throw TaskError.invalidName
		}
		
		
		name = _name
	}
	
	public override var description: String { return name }
}

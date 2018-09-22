//
//  PoliteName.swift
//  onion-todo-swift
//
//  Created by Martin Pham on 23/09/18.
//  Copyright © 2018 FornaceSrl. All rights reserved.
//

import Foundation


class PoliteName : NSObject, SpecificationProtocol {
	func isSatisfiedBy(_ value: Any) -> Bool {
		let taskName = value as! String
		
		if(taskName.lowercased().range(of: "fuck") != nil)
		{
			return false;
		}
		
		return true;
	}
}

//
//  SpecificationProtocol.swift
//  onion-todo-swift
//
//  Created by Martin Pham on 22/09/18.
//  Copyright © 2018 FornaceSrl. All rights reserved.
//

import Foundation

protocol SpecificationProtocol {
	func isSatisfiedBy(_ value: Any) -> Bool
}

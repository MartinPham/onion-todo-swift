//
//  ViewController.swift
//  onion-todo-swift
//
//  Created by Martin Pham on 22/09/18.
//  Copyright © 2018 FornaceSrl. All rights reserved.
//

import UIKit

class TodoController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	private var tasks: [Task] = []
	
	@IBOutlet weak var taskListTableView: UITableView!
	
	@IBAction func addTask(_ sender: Any) {
		performSegue(withIdentifier: "addTask", sender: self)
	}
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		
	}
	
	override func viewDidAppear(_ animated: Bool) {
		
		let taskBrowser = TaskBrowser(withTaskRepository: AppDelegate.shared.getTaskRepository())
		let taskList = taskBrowser.getAllTasks()
		
		tasks.removeAll()
		for task in taskList
		{
			tasks.append(task)
		}
		
		taskListTableView.reloadData()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return tasks.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "task", for: indexPath)
		
		let task = tasks[indexPath.row]
		
		cell.textLabel?.text = String(describing: task.getName())
		
		return cell
	}
}


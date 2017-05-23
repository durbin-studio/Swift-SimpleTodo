//
//  ViewController.swift
//  Another Todo
//
//  Created by Md. Waheduzzaman on 5/23/17.
//  Copyright © 2017 Md. Waheduzzaman. All rights reserved.
//

import UIKit

//global variable so that it can be accessed from other classes as well
var todoList = ["hello","world","new","new world","buy car","buy macbook","read book","learn learn learn"];

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //returns the number of rows to the tableview
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
//        print("total number of list: ");
//        print(todoList.count);
        return (todoList.count);
    }
    
    //to handle slides/swipes on each row
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if(editingStyle == UITableViewCellEditingStyle.delete){
            removeItem(index: indexPath.row);
        }
    }
    
    //swift method to delete an item from the array;
    //not necessary at all but just to write my own function
    func removeItem(index: Int) {
        todoList.remove(at: index);
        //update the tableList
        myTableView.reloadData();
    }
    

    //returns the inflated cell
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "mCell");
        cell.textLabel?.text = todoList[indexPath.row];
//        print("returning cell: ");
//        print(indexPath.row);
        return cell;
    }
    
    
    
    //kinda like onResume of Android Activity (Lifecycle)
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData();
    }

}


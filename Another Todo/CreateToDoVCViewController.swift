//
//  CreateToDoVCViewController.swift
//  Another Todo
//
//  Created by Md. Waheduzzaman on 5/23/17.
//  Copyright © 2017 Md. Waheduzzaman. All rights reserved.
//

import UIKit

class CreateToDoVCViewController: UIViewController {

    @IBOutlet weak var textView: UITextField!
    
    @IBAction func addTodo(_ sender: Any) {
        if(textView.text != ""){
            todoList.append(textView.text!);
            textView.text = "";
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true);
    }

}

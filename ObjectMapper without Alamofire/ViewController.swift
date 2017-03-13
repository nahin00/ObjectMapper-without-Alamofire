//
//  ViewController.swift
//  ObjectMapper without Alamofire
//
//  Copyright © 2017 Nahin Ahmed. All rights reserved.
//

import UIKit
import ObjectMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let user = User(username: "nahin", age: 20)
        
        print("username: \(user.username!)")
        print("age: \(user.age)")
        
        
        
        // Convert a model object to a JSON string
        
        let ModelObjectToJSONString = user.toJSONString(prettyPrint: true)
        print(ModelObjectToJSONString!)
        
       
        
        // Convert a JSON string to a model object
        
        let JSONStringToModelObject = User(JSONString: ModelObjectToJSONString! )
        print(JSONStringToModelObject!)
        
        
        let temperature = Temperature(celcius: 0.0, fahrenheit: 0.1)
        
        print("celcius: \(temperature.celcius!)")
        print("fahrenheit: \(temperature.fahrenheit!)")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


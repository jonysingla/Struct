//
//  ViewController.swift
//  StructDemo
//
//  Created by PanshulK on 17/06/17.
//  Copyright © 2017 Jony Singla. All rights reserved.
//
// https://stackoverflow.com/questions/24217586/structure-vs-class-in-swift-language

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Struct example
//        var studDet = StudentDetail(name: "Jony")
        var studDet = StudentDetail(valueAge: 0, age: 4)
        var studDetOne = studDet
        studDetOne.valueAge = 6
//        studDetOne.name = "Vikrant"
        print("Name One  = \(studDet)")               // Jony
        print("Name Two  = \(studDetOne)")            // Vikrnat
        
        // class example
        var studName = StudentDetailDemo(nameOne: "Deepak")
        var studLast = studName
        studLast.nameOne = "Vikrant"
        print("Name = \(studName.nameOne)")  // Vikrant
        print("Name = \(studLast.nameOne)")  // Vikrant
        
        // identical operator
        let abc = idendticalOper()
        let bcd = idendticalOper()
        let def = abc
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// struct example
struct StudentDetail {
//    var name: String
    var valueAge: Int
    let age: Int
}
// class example
class StudentDetailDemo {
    var nameOne: String
    init(nameOne: String) {
        self.nameOne = nameOne
    }
}

// identical operator
class idendticalOper
{
    
}

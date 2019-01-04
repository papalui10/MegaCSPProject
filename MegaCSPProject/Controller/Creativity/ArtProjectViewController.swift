//
//  ViewController.swift
//  ArtProject
//
//  Created by Veliz, Luis on 11/1/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

func greet(person: String) -> String
{
    let greeting = "Hello, " + person + "!"
    return greeting

    print(greet(person: "Josh"))
}

public class ArtProjectViewController: UIViewController
{
   
    @IBOutlet weak var ChangeScreen: UIButton!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}


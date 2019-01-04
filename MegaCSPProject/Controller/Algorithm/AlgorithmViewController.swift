//
//  ViewController.swift
//  LuisAlgorithm
//
//  Created by Veliz, Luis on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController
{
    
    @IBOutlet weak var algorithmText: UILabel!

    @IBOutlet weak var swiftImage: UIImageView!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        
        formatAlgorithm()
    }
    //displays the steps as bullets
    private func formatAlgorithm() -> Void
    {
        let title : String = "Algorithms for creating a project."
        
        let stepOne : String = "Turn on PC."
        let stepTwo : String = "Long in to computer."
        let stepThree : String = "Open up Xcode app."
        let stepFour : String = "Click create new iOS project."
        let stepFive : String = "Once in the project select Main.storyboard and LaunchScreen.storyboard right click and create new group from selection. Name the file View."
        let stepSix : String = "Select AppDelegate.swift, Assets.xcassets, and Info.plist create new group and name it resources."
        let stepSeven : String = "Select ViewController.swift and create new group and name it Controller."
        
        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        for step in algorithm
        {
            let bullet : String = "🎃"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
        
    }
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }
}


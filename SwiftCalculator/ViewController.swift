//
//  ViewController.swift
//  SwiftCalculator
//
//  Created by Yanliang on 4/20/16.
//
//

import UIKit

class ViewController: UIViewController {
    
    // init all the buttons
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var clearBtn: UIButton!
    @IBOutlet var negativeBtn: UIButton!
    @IBOutlet var percentBtn: UIButton!
    @IBOutlet var divideBtn: UIButton!
    @IBOutlet var multipleBtn: UIButton!
    @IBOutlet var subBtn: UIButton!
    @IBOutlet var plusBtn: UIButton!
    @IBOutlet var equalBtn: UIButton!
    
    @IBOutlet var pointBtn: UIButton!
    @IBOutlet var zeroBtn: UIButton!
    @IBOutlet var oneBtn: UIButton!
    @IBOutlet var twoBtn: UIButton!
    @IBOutlet var threeBtn: UIButton!
    @IBOutlet var fourBtn: UIButton!
    @IBOutlet var fiveBtn: UIButton!
    @IBOutlet var sixBtn: UIButton!
    @IBOutlet var sevenBtn: UIButton!
    @IBOutlet var eightBtn: UIButton!
    @IBOutlet var nineBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.buttonExtrior()
        
    }
    
    func buttonExtrior() {
        clearBtn.layer.borderColor = UIColor.blackColor().CGColor
        clearBtn.layer.borderWidth = 0.5
        negativeBtn.layer.borderColor = UIColor.blackColor().CGColor
        negativeBtn.layer.borderWidth = 0.5
        percentBtn.layer.borderColor = UIColor.blackColor().CGColor
        percentBtn.layer.borderWidth = 0.5
        divideBtn.layer.borderColor = UIColor.blackColor().CGColor
        divideBtn.layer.borderWidth = 0.5
        multipleBtn.layer.borderColor = UIColor.blackColor().CGColor
        multipleBtn.layer.borderWidth = 0.5
        subBtn.layer.borderColor = UIColor.blackColor().CGColor
        subBtn.layer.borderWidth = 0.5
        plusBtn.layer.borderColor = UIColor.blackColor().CGColor
        plusBtn.layer.borderWidth = 0.5
        equalBtn.layer.borderColor = UIColor.blackColor().CGColor
        equalBtn.layer.borderWidth = 0.5
        pointBtn.layer.borderColor = UIColor.blackColor().CGColor
        pointBtn.layer.borderWidth = 0.5
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


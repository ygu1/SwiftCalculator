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
    
    var digital1: String = ""
    var digital2: String = ""
    var decimalNumber: Int = 0
    var integerNumber: Int = 0
    var calculatePressed: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func pressAdd(sender: UIButton) {
        calculatePressed = true
        resultLabel.text = "0"
    }
    @IBAction func pressSub(sender: UIButton) {
    }
    @IBAction func pressTime(sender: UIButton) {
    }
    @IBAction func pressDivide(sender: UIButton) {
    }
    
    @IBAction func pressDigital(sender: UIButton) {
        if calculatePressed {
            if digital2 == "0" {
                digital2 = ""
            }
            digital2 = digital2 + (sender.titleLabel?.text)!
            resultLabel.text = digital2
        }
        else {
            if digital1 == "0" {
                digital1 = ""
            }
            digital1 = digital1 + (sender.titleLabel?.text)!
            resultLabel.text = digital1
        }
    }
    
    /*
     *  press clear button
     */
    @IBAction func pressClear(sender: UIButton) {
        digital1 = "0"
        resultLabel.text = digital1
    }
    func buttonExtrior() {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


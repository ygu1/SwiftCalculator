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
    @IBOutlet var addBtn: UIButton!
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
    
    var digital1: String = "0"
    var digital2: String = "0"
    var decimalNumber: Int = 0
    var integerNumber: Int = 0
    var calculatePressed: Bool = false
    var whichCalculatePressed: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBtn.tag = 1
        subBtn.tag = 2
        multipleBtn.tag = 3
        divideBtn.tag = 4
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    
    
    @IBAction func calculatePressed(sender: UIButton) {
        if calculatePressed{
            
        }
        else{
            whichCalculatePressed = sender.tag
            calculatePressed = true
        }
    }
    
    @IBAction func equalPressed(sender: UIButton) {
        if calculatePressed {
            switch whichCalculatePressed {
            case 1:
                self.pressAdd()
            case 2:
                self.pressSub()
            case 3:
                self.pressTime()
            case 4:
                self.pressDivide()
            default:
                break
            }
            calculatePressed = false
            whichCalculatePressed = 0
        }
    }
    
    
    func pressAdd() {
        let tempResult: Double = (Double(digital1))! + (Double(digital2))!
        resultLabel.text = String(format:"%f",tempResult)
        digital1 = resultLabel.text!
        digital2 = "0"
    }
    func pressSub() {
        let tempResult: Double = (Double(digital1))! - (Double(digital2))!
        resultLabel.text = String(format:"%f",tempResult)
        digital1 = resultLabel.text!
        digital2 = "0"
    }
    func pressTime() {
        let tempResult: Double = (Double(digital1))! * (Double(digital2))!
        resultLabel.text = String(format:"%f",tempResult)
        digital1 = resultLabel.text!
        digital2 = "0"
    }
    func pressDivide() {
        let tempResult: Double = (Double(digital1))! / (Double(digital2))!
        resultLabel.text = String(format:"%f",tempResult)
        digital1 = resultLabel.text!
        digital2 = "0"
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


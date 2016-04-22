//
//  ViewController.swift
//  SwiftCalculator
//
//  Created by Yanliang Gu on 4/20/16.
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
            sender.layer.borderWidth = 1
            whichCalculatePressed = sender.tag
            calculatePressed = true
        }
    }
    
    @IBAction func equalPressed(sender: UIButton) {
        var divideFlag: Bool = true
        if calculatePressed {
            switch whichCalculatePressed {
            case 1:
                self.pressAdd()
            case 2:
                self.pressSub()
            case 3:
                self.pressTime()
            case 4:
                // string 2 cannot be ZERO
                if digital2 != "0" {
                    self.pressDivide()
                }
                else{
                    resultLabel.text = "Error"
                    digital1 = "0"
                    digital2 = "0"
                    divideFlag = false
                }
            default:
                break
            }
            if divideFlag {
                digital1 = resultLabel.text!
                digital2 = "0"
            }
            self.changeBtnBorder()
            clearBtn.titleLabel?.text = "AC"
            calculatePressed = false
            whichCalculatePressed = 0
            divideFlag = true
        }
    }
    
    /*
     *  Add function
     */
    func pressAdd() {
        let tempResult: Double = (Double(digital1))! + (Double(digital2))!
        resultLabel.text = self.isInteger(tempResult)
    }
    /*
     *  Sub function
     */
    func pressSub() {
        let tempResult: Double = (Double(digital1))! - (Double(digital2))!
        resultLabel.text = self.isInteger(tempResult)
    }
    /*
     *  Time function
     */
    func pressTime() {
        let tempResult: Double = (Double(digital1))! * (Double(digital2))!
        resultLabel.text = self.isInteger(tempResult)
    }
    /*
     *  Divide function
     */
    func pressDivide() {
        let tempResult: Double = (Double(digital1))! / (Double(digital2))!
        // check is this an integer
        resultLabel.text = self.isInteger(tempResult)
    }
    
    /*
     *  Use to decide whether the number is integer
     */
    func isInteger(num:Double)->String{
        if floor(num) == num{
            return String(format:"%.0f",num)
        }
        else{
            return String(format:"%f",num)
        }
    }
    
    
    
    /*
     *  When any digital button is pressed, this number will be added to
     *  a string. So there are two strings used to calculate.
     */
    @IBAction func pressDigital(sender: UIButton) {
        // first string
        if calculatePressed {
            if digital2 != "0" {
                digital2 = digital2 + (sender.titleLabel?.text)!
                
            }
            else{
                digital2 = (sender.titleLabel?.text)!
                if digital2 != "0" {
                    clearBtn.titleLabel?.text = "C"
                }
            }
            resultLabel.text = digital2
        }
        // second one
        else {
            if digital1 != "0" {
                digital1 = digital1 + (sender.titleLabel?.text)!
            }
            else{
                digital1 = (sender.titleLabel?.text)!
            }
            resultLabel.text = digital1
        }
    }
    
    /*
     *  Press clear button function. If any calculation button is pressed,
     *  this function will clear the second digital string.
     *  If continue to press this button, it will clear all.
     */
    @IBAction func pressClear(sender: UIButton) {
        if calculatePressed {
            if digital2 == "0" {
                digital1 = "0"
                self.changeBtnBorder()
                whichCalculatePressed = 0
                calculatePressed = false
            }
            else{
                digital2 = "0"
                clearBtn.titleLabel?.text = "AC"
            }
        }
        else{
            digital1 = "0"
        }
        resultLabel.text = "0"
    }
    
    /*
     *   Remove the bold border after finishing calculation.
     */
    func changeBtnBorder(){
        if whichCalculatePressed != 0
        {
            let btn = self.view.viewWithTag(whichCalculatePressed) as! UIButton
            btn.layer.borderWidth = 0.5
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  Fibonacci
//
//  Created by Santosh Sankar on 9/24/14.
//  Copyright (c) 2014 Santosh Sankar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Graphic elements
    var selectedValueLabel: UILabel?
    var outputTextView: UITextView?
    var theSlider: UISlider?
    
    //An instance of the model
    var fibo: FibonacciModel = FibonacciModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.addASlider()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addASlider(){
        // Create the slider
        self.theSlider = UISlider(frame: CGRectMake(60,244,200,20))
        self.view.addSubview(theSlider!)
        
        //Assign max and min values
        self.theSlider!.minimumValue = 2
        self.theSlider!.maximumValue = 50
        
        //Create labels to display the min/max values
        var minLabel = UILabel(frame: CGRectMake(70,205,40,40))
        minLabel.text = String(Int(theSlider!.minimumValue))
        self.view.addSubview(minLabel)
        
        var maxLabel = UILabel(frame:CGRectMake(235,205,40,40))
        maxLabel.text = String(Int(theSlider!.maximumValue))
        self.view.addSubview(maxLabel)
        
        //Create laels to display selected value
        self.selectedValueLabel = UILabel(frame:CGRectMake(140, 320, 40, 40))
        self.selectedValueLabel!.text = String(Int(theSlider!.value))
        self.view.addSubview(selectedValueLabel!) //set to min value
        
        //Create a label to hold output
        self.outputTextView = UITextView(frame: CGRectMake(20,350,300,140))
        self.view.addSubview(self.outputTextView!)
        
        //Update the value label when the slider value is updated
        self.theSlider!.addTarget(self, action: "sliderValueDidChange", forControlEvents: UIControlEvents.ValueChanged)
        
    }
    
    func sliderValueDidChange(){
        var returnedArray: [Int] = []
        var formattedOutput: String = " "
        
        
        //Display the updated slider value
        self.selectedValueLabel!.text = String(Int(theSlider!.value))
        
        //Calc the Fibonacci elements based on the new slider value
        returnedArray = self.fibo.calculateFibonacciNumbers(minimum2: Int(theSlider!.value))
        
        //Put elements in a nicely formatted array
        
        for number in returnedArray{
            formattedOutput = formattedOutput + String(number) + ", "
        }
        
        //Update the textfield with the formatted array
        self.outputTextView!.text = formattedOutput
        
    }
    

}


//
//  FibonacciModel.swift
//  Fibonacci
//
//  Created by Santosh Sankar on 9/24/14.
//  Copyright (c) 2014 Santosh Sankar. All rights reserved.
//

import Foundation

class FibonacciModel{
    
    func calculateFibonacciNumbers (minimum2 endofSeq: Int) -> Array<Int> {
        
        //Declare stored property with initial values
        var sequence: [Int] = [1,1]
        
        for numbers in 2 ..< endofSeq{
            var newFibNum = sequence[numbers-1] + sequence[numbers-2]
            sequence.append(newFibNum)
        }
        return sequence
        
    }
    
}
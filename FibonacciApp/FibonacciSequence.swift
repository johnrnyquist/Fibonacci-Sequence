//
//  FibonacciSequence.swift
//  FibonacciApp
//
//  Created by John Nyquist on 11/4/17.
//  Copyright © 2017 Nyquist Art + Logic LLC. All rights reserved.
//

import Foundation

class FibonacciSequence {
    
    let includesZero: Bool
    let values: [UInt]
    
    init(maxNumber: UInt, includesZero: Bool) {
        self.includesZero = includesZero
        if maxNumber == 0 && includesZero == false {
            values = []
        } else if maxNumber == 0 {
            values = [0]
        } else {
            var sequence:[UInt] = [0,1,1]
            var nextNumber:UInt = 2
            while nextNumber <= maxNumber {
                sequence.append(nextNumber)
                let lastNumber:UInt = sequence.last!
                let secondToLastNumber:UInt = sequence[sequence.count-2]
                nextNumber = secondToLastNumber + lastNumber
            }
            if includesZero == false {
                sequence.remove(at:0)
            }
            values = sequence
        }
    }
    
    init(numberOfItemsInSequence: UInt, includesZero: Bool) {
        self.includesZero = includesZero
        if numberOfItemsInSequence == 0 {
            values = []
        } else if numberOfItemsInSequence == 1 {
            if includesZero == true {
                values = [0]
            } else {
                values = [1]
            }
        } else {
            var sequence: [UInt]
            if includesZero == true {
                sequence = [0,1]
            } else {
                sequence = [1,1]
            }
            var n:Int = sequence.count
            while n < numberOfItemsInSequence {    // as we never use the variable in the for loop, we can replace it with underscore _
                let lastNumber:UInt = sequence.last!
                let secondToLastNumber:UInt = sequence[sequence.count-2]
                let nextNumber:UInt = secondToLastNumber + lastNumber
                sequence.append(nextNumber)
                n+=1
            }
            values = sequence
        }
    }
}

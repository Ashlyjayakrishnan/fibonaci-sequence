//
//  main.swift
//  fibonaci sequence
//
//  Created by Ashly Baby on 2019-02-12.
//  Copyright © 2019 Ashly Baby. All rights reserved.
//

import Foundation

print("Hello, World!")

func fibonacci(n: Int) {
    
    var num1 = 0
    var num2 = 1
    
    for _ in 0 ..< n {
        
        let num = num1 + num2
        num1 = num2
        num2 = num
    }
    
    print("result = \(num2)")
}
fibonacci(n: 7)
// Using Recursion
func fibonacciRecursiveNum1(num1: Int, num2: Int, steps: Int) {
    
    if steps > 0 {
        let newNum = num1 + num2
        fibonacciRecursiveNum1(num1: num2, num2: newNum, steps: steps-1)
    }
    else {
        print("result = \(num2)")
    }
}
fibonacciRecursiveNum1(num1: 0, num2: 1, steps: 7)
// returns an array containing the first n Fibonacci numbers//this one not return the correct answer
func fibonacci(n: Int) -> [Int] {
    
    assert(n > 1)
    
    var array = [0, 1]
    
    while array.count < n {
        array.append(array[array.count - 1] + array[array.count - 2])
    }
    return array
}

print(10) // [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
//this is the correct answer
func fib(_ num: Int) -> Int {
    switch num {
    case Int.min...1: return max(0, num)
    default: return fib(num-2) + fib(num-1)
    }
}

let sequence = Array(0...10)
sequence.forEach { print(fib($0)) } // 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55

//
//  ViewController.swift
//  IsJohnnyMakingProgress
//
//  Created by Daniel Washington Ignacio on 14/06/21.
//

/*
 To train for an upcoming marathon, Johnny goes on one long-distance run each Saturday. He wants to track how often the number of miles he runs this Saturday exceeds the number of miles run the previous Saturday. This is called a progress day.

 Create a function that takes in an array of miles run every Saturday and returns Johnny's total number of progress days.

 Examples

 progressDays([3, 4, 1, 2]) ➞ 2
 // There are two progress days, (3->4) and (1->2)

 progressDays([10, 11, 12, 9, 10]) ➞ 3

 progressDays([6, 5, 4, 3, 2, 9]) ➞ 1

 progressDays([9, 9])  ➞ 0
 Notes

 Running the same number of miles as last week does not count as a progress day.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.progressDays([3, 4, 1, 2]))
        print(self.progressDays([10, 11, 12, 9, 10]))
        print(self.progressDays([6, 5, 4, 3, 2, 9]))
        print(self.progressDays([9, 9]))
    }

    func progressDays(_ runs: [Int]) -> Int {
        var count: Int = 0
        for n in 0..<runs.count-1{
            if runs[n] < runs[n+1]{
                count = count + 1
            }
            
        }
        
        return count
    }

}


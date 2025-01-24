//
//  QuestionViewController.swift
//  Personality Quiz
//
//  Created by Humera khan on 10/01/24.
//

import UIKit
var Score : Int = 0
class QuestionViewController: UIViewController {
    @IBOutlet var ql: UILabel!
    @IBOutlet var a: UILabel!
    @IBOutlet var b: UILabel!
    @IBOutlet var c: UILabel!
    @IBOutlet var d: UILabel!
    var lighton = true
    
    @IBOutlet var trial: UILabel!
    var index : Int = 0
    @IBOutlet var asw: UISwitch!
    @IBOutlet var bs: UISwitch!
    @IBOutlet var csw: UISwitch!
    @IBOutlet var dsw: UISwitch!
    @IBOutlet var Nextbutton: UIButton!
  
    var qarray = ["What is the next number in the sequence: 2, 4, 8, 16, ___?","If a car travels 40 miles per hour, how far will it travel in 3 hours?","What is the square root of 144?","If 3x - 5 = 10, what is the value of x?","If a book originally costs $20 and is discounted by 25%, what is the final price?","What is the missing number in the sequence: 3, 6, 12, ___, 48?","If 4 pencils cost $2, how many pencils can be bought with $10?","What is 30% of 150?","If a triangle has angles measuring 60°, 60°, and 60°, what type of triangle is it?","What is the result of 5! (5 factorial)?"]
    var option1 = ["a) 24","a) 90 miles"," a) 12","a) 5","a) $15","a) 24","a) 10","a) 40","a) Acute","a) 20"]
        var option2 = ["b) 32","b) 120 miles","b) 14","b) 3","b) $17","b) 36","b) 20","b) 45","b) Obtuse","b) 60"]
        var option3 = ["c) 64","c) 80 miles","c) 10","c) 15","c) $18","c) 18","c) 12","c) 50","c) Right","c) 120"]
        var option4 = ["d) 20","d) 150 miles","d) 16","d) 8","d) $14","d) 30","d) 8","d) 60","d) Equilateral","d) 720"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      Score = 0
    }

    @IBAction func apressed(_ sender: Any)
    {
        lighton.toggle()
        Score += 1
    }
    
    @IBAction func bpressed(_ sender: Any)
    {
        lighton.toggle()
        Score += 2
    }
    
    @IBAction func cpressed(_ sender: Any) {
        lighton.toggle()
        Score += 3
    }
    @IBAction func dpressed(_ sender: Any) {
        lighton.toggle()
        Score += 4
    }
    @IBAction func Next(_ sender: UIButton) {
        index += 1
        
        if (index >= 0 && index <= 9){
            
            ql.text = qarray[index]
            a.text = option1[index]
            b.text = option2[index]
            c.text = option3[index]
            d.text = option4[index]
            
            
         /* if bs.isEnabled
            {
                Score += 2
            }
            else if csw.isEnabled
            {
                Score += 3
            }
            else 
            {
                Score += 4
            }*/
          
        }
        trial.text = "\(Score)"
        if index == 4
        {
            
            performSegue(withIdentifier: "result", sender: nil)
            
        }
        asw.setOn(false, animated: true)
        bs.setOn(false, animated: true)
        csw.setOn(false, animated: true)
        dsw.setOn(false, animated: true)
    }
    
}

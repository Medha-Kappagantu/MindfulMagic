//
//  ViewController.swift
//  MindfulMagic1
//
//  Created by Scholar on 8/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Word1: UITextField!
    
    @IBOutlet weak var Mood1: UITextField!
    
    @IBOutlet weak var Happy1: UITextField!
    
    @IBOutlet weak var Good1: UITextField!
    
    @IBOutlet weak var Improve1: UITextField!
    
    let words = CoreDataFile()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func DoneButton(_ sender: Any) {
        if let Word = Word1.text {
            print(words.Words)
        }
        if let Mood = Mood1.text {
            print(words.Moods)
        }
        if let Happy = Happy1.text {
            print(words.Happies)
        }
        if let Good = Good1.text {
            print(words.Goods)
        }
        if let Improvement = Improve1.text {
            print(words.Improvements)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let addVC = segue.destination as? AnswersViewController {
          if let stuff = sender as? CoreDataFile{
              addVC.thing = stuff
              addVC.previousVC = self
              
          }
        
      }
        

    }
    
}

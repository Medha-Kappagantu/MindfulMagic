//
//  ViewController.swift
//  MindfulMagic1
//
//  Created by Scholar on 8/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doneButton(_ sender: Any) {
 
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

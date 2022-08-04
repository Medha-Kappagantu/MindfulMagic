//
//  AnswersViewController.swift
//  MindfulMagic1
//
//  Created by Scholar on 8/3/22.
//

import UIKit

class AnswersViewController: UIViewController {
    
    @IBOutlet weak var test1: UILabel!
    @IBOutlet weak var test2: UILabel!
    @IBOutlet weak var test3: UILabel!
    @IBOutlet weak var test4: UILabel!
    @IBOutlet weak var test5: UILabel!
    
    var previousVC = ViewController()

    
    var thing = CoreDataFile()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        test1.text = thing.Words

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

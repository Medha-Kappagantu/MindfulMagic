//
//  ViewControllerTwo.swift
//  BreathingControl
//
//  Created by Venkata KAPPAGANTU on 8/3/22.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    var buttonPressed = 1
    var exitQueue = 0
    @IBOutlet weak var actionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionButton(_ sender: Any) {
        
        if buttonPressed%2 == 0{
            
            exitQueue = exitQueue + 1
            
            actionLabel.text = "Breath out..."
            let breathOut: UIImage = UIImage(named: "exhale")!
            imageView.image = breathOut
        
            DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                if self.exitQueue == 4{
                    self.actionLabel.text = "You are done"
                    let imgDone: UIImage = UIImage(named: "done")!
                    self.imageView.image = imgDone
                }
                else{
                    
                    self.buttonPressed = 1
                    self.actionLabel.text = "Tap Button!!"
                    let tap: UIImage = UIImage(named: "tap")!
                    self.imageView.image = tap
                    
                }
                
            }
            
            
            
            
            
        }
        else{
            exitQueue = exitQueue + 1
            print(exitQueue)
            actionLabel.text = "Breath in..."
            let breathIn: UIImage = UIImage(named: "inhale")!
            imageView.image = breathIn
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                self.buttonPressed = 2
                self.actionLabel.text = "Tap Button!!"
                let tap: UIImage = UIImage(named: "tap")!
                self.imageView.image = tap
                print(self.buttonPressed)
            }
            
        }
        
        
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


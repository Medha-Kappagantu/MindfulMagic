//
//  ViewController.swift
//  peaPop
//
//  Created by scholar on 8/3/22.
//

import UIKit
import AVFoundation

class PeaPopViewController: UIViewController {
    
    let popSound = URL(fileURLWithPath: Bundle.main.path(forResource: "pop-39222", ofType: "mp3")!)
    var audioPlayer = AVAudioPlayer()
    
    
    var buttonClickerOne = 1
    var buttonClickedTwo = 1
    var buttonClickedThree = 1
    
    
    @IBOutlet var peaOne: UIImageView!
    
    
    @IBOutlet var peaTwo: UIImageView!
    
    
    @IBOutlet var peaThree: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked3(_ sender: Any) {
        if buttonClickedThree%2 != 0{
            buttonClickedThree = 2
            let imgPeaOne: UIImage = UIImage(named: "pea")!
            peaThree.image = imgPeaOne
            do{
               audioPlayer = try AVAudioPlayer(contentsOf: popSound)
                audioPlayer.play()
            } catch {
                print("catch error")
            }
        }
        else{
            buttonClickedThree = 1
            let imgCloudOne: UIImage = UIImage(named: "cloud")!
            peaThree.image = imgCloudOne
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: popSound)
                audioPlayer.play()
            } catch {
                print("catch error")
            }
    
        }}
        @IBAction func buttonClicked2(_ sender: Any) {
        
            if buttonClickedTwo%2 != 0{
            buttonClickedTwo = 2
            let imgPeaOne: UIImage = UIImage(named: "pea")!
            peaTwo.image = imgPeaOne
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: popSound)
                audioPlayer.play()
            } catch {
                print("catch error")
            }
        }
        else{
            buttonClickedTwo = 1
            let imgCloudOne: UIImage = UIImage(named: "cloud")!
            peaTwo.image = imgCloudOne
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: popSound)
                audioPlayer.play()
            } catch {
                print("catch error")
            }
            
        }

        
    }
    @IBAction func buttonClicked(_ sender: Any) {

        if buttonClickerOne%2 != 0{
            buttonClickerOne = 2
            let imgPeaOne: UIImage = UIImage(named: "pea")!
            peaOne.image = imgPeaOne
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: popSound)
                audioPlayer.play()
            } catch {
                print("catch error")
            }
        }
        else{
            buttonClickerOne = 1
            let imgCloudOne: UIImage = UIImage(named: "cloud")!
            peaOne.image = imgCloudOne
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: popSound)
                audioPlayer.play()
            } catch {
                print("catch error")
            }
        }

        
    }
    
}
    



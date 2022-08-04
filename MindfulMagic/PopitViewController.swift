//
//  ViewController.swift
//  Stressgame2
//
//  Created by Scholar on 8/4/22.
//

import UIKit
import AVFoundation

class PopitViewController: UIViewController {
    let woshSound = URL(fileURLWithPath: Bundle.main.path(forResource: "4ELQW8P-windy-whoosh-09", ofType:"mp3")!)
    let penSound = URL(fileURLWithPath: Bundle.main.path(forResource: "W6P8DTV-pen-click-63140", ofType:"mp3")!)
    let slimeSound = URL(fileURLWithPath: Bundle.main.path(forResource: "N2TFB4W-tentacle-slime-1", ofType:"mp3")!)
    let punchSound = URL(fileURLWithPath: Bundle.main.path(forResource: "WHQS65J-comic-punch", ofType:"mp3")!)
    let typeSound = URL(fileURLWithPath: Bundle.main.path(forResource: "6HPK4GY-short-typing-on-computer-keyboard", ofType:"mp3")!)
    
    var audioPlayer = AVAudioPlayer()

//6HPK4GY-short-typing-on-computer-keyboard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func whooshButton(_ sender: Any) {
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: woshSound)
                audioPlayer.play()
            } catch {
                print("catch error")
            }
    }
    @IBAction func butontwo(_ sender: Any) {
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: penSound)
                audioPlayer.play()
            } catch {
                print("catch error")
            
        }
        
    }
    
    @IBAction func buttonthree(_ sender: Any) {
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: slimeSound)
                audioPlayer.play()
            } catch {
                print("catch error")
            
        }
    }
    
    @IBAction func buttonfour(_ sender: Any) {
        
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: punchSound)
                audioPlayer.play()
            } catch {
                print("catch error")
            
        }
    }
    
    @IBAction func buttonfive(_ sender: Any) {
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: typeSound)
                audioPlayer.play()
            } catch {
                print("catch error")
            
        }
    }
    
    
}



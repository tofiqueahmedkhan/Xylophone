//
//  ViewController.swift
//  Xylophone
//
//  Created by Tofique Ahmed Khan.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,  AVAudioPlayerDelegate{
    
    let noteArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
            playNote(soundFileName: noteArray[sender.tag-1])
        
    }
    
    //Function for play sound note
    
    func playNote(soundFileName : String){
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
        
    }
  

}


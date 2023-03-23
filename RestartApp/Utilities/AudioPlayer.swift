//
//  AudioPlayer.swift
//  RestartApp
//
//  Created by Barış Can Sertkaya on 23.03.2023.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(filePath: path))
            audioPlayer?.play()
        }
        catch {
            print("Could not play the audio.")
        }
    }
}


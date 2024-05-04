//
//  ViewController.swift
//  Sound
//
//  Created by chick on 2024/05/01.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //ドラム、ピアノ、ギターを表示する箱をつくる
    @IBOutlet var drumButton: UIButton!
    @IBOutlet var pianoButton: UIButton!
    @IBOutlet var guitarButton: UIButton!
    
    //楽器のサウンドファイルを読み込んで、プレイヤーをつくる
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    let pianoSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    let guitarSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    //楽器がタップされたときに呼ばれる
    @IBAction func touchDownDrumButton(){
        //ドラムが鳴っている画像に切り替える
        drumButton.setImage(UIImage(named: "playDrum"), for: .normal)
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        //ドラムの音を再生する
        drumSoundPlayer.play()
    }
    
    @IBAction func touchDownPianoButton(){
        pianoButton.setImage(UIImage(named: "playPiano"), for: .normal)
        pianoSoundPlayer.currentTime = 0
        pianoSoundPlayer.play()
    }
    
    @IBAction func touchDownGuitarButton(){
        guitarButton.setImage(UIImage(named: "playGuitar"), for: .normal)
        guitarSoundPlayer.currentTime = 0
        guitarSoundPlayer.play()
    }
    
    
    //楽器ボタンの上でタッチが終わるときに呼ばれる
    @IBAction func touchUpDrumButton() {
        //ドラムが鳴っていない画像に切り替える
        drumButton.setImage(UIImage(named: "drum"), for: .normal)
    }
    @IBAction func touchUpPianoButton() {
        pianoButton.setImage(UIImage(named: "piano"), for: .normal)
    }
    @IBAction func touchUpGuitarButton() {
        guitarButton.setImage(UIImage(named: "guitar"), for: .normal)
    }
}


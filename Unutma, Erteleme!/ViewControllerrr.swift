//
//  ViewControllerrr.swift
//  Unutma, Erteleme!
//
//  Created by Macbook Air on 12.08.2022.
//

import UIKit

class ViewControllerrr: UIViewController {
    var images : Dictionary <Int,String> = [:]
    @IBOutlet weak var img9: UIImageView!
    @IBOutlet weak var img8: UIImageView!
    @IBOutlet weak var img7: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img1: UIImageView!
    var userScore = 0
    var counter = 10
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var vieww: UIView!
    @objc func hideOnOfTheBatman(){
        var randomIndex = Int.random(in: 0...8)
        var isim = images[randomIndex]
        switch isim {
        case "img1":
            img1.isHidden = false
            img2.isHidden = true
            img3.isHidden = true
            img4.isHidden = true
            img5.isHidden = true
            img6.isHidden = true
            img7.isHidden = true
            img8.isHidden = true
            img9.isHidden = true
        case "img2":
            img2.isHidden = false
            img1.isHidden = true
            img3.isHidden = true
            img4.isHidden = true
            img5.isHidden = true
            img6.isHidden = true
            img7.isHidden = true
            img8.isHidden = true
            img9.isHidden = true
        case "img3":
            img3.isHidden = false
            img1.isHidden = true
            img2.isHidden = true
            img4.isHidden = true
            img5.isHidden = true
            img6.isHidden = true
            img7.isHidden = true
            img8.isHidden = true
            img9.isHidden = true
        case "img4":
            img4.isHidden = false
            img1.isHidden = true
            img2.isHidden = true
            img3.isHidden = true
            img5.isHidden = true
            img6.isHidden = true
            img7.isHidden = true
            img8.isHidden = true
            img9.isHidden = true
        case "img5":
            img5.isHidden = false
            img1.isHidden = true
            img2.isHidden = true
            img3.isHidden = true
            img4.isHidden = true
            img6.isHidden = true
            img7.isHidden = true
            img8.isHidden = true
            img9.isHidden = true
        case "img6":
            img6.isHidden = false
            img1.isHidden = true
            img2.isHidden = true
            img3.isHidden = true
            img4.isHidden = true
            img5.isHidden = true
            img7.isHidden = true
            img8.isHidden = true
            img9.isHidden = true
        case "img7":
            img7.isHidden = false
            img1.isHidden = true
            img2.isHidden = true
            img3.isHidden = true
            img4.isHidden = true
            img5.isHidden = true
            img6.isHidden = true
            img8.isHidden = true
            img9.isHidden = true
        case "img8":
            img8.isHidden = false
            img1.isHidden = true
            img2.isHidden = true
            img3.isHidden = true
            img4.isHidden = true
            img5.isHidden = true
            img6.isHidden = true
            img7.isHidden = true
            img9.isHidden = true
        case "img9":
            img9.isHidden = false
            img1.isHidden = true
            img2.isHidden = true
            img3.isHidden = true
            img4.isHidden = true
            img5.isHidden = true
            img6.isHidden = true
            img7.isHidden = true
            img8.isHidden = true
       
        
        default:
            img8.isHidden = false
        
        }
        
        
    }
    @objc func updateScore(){
        self.userScore += 1
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(updateScore))
       
        
        images[0] = "img1"
        images[1] = "img2"
        images[2] = "img3"
        images[3] = "img4"
        images[4] = "img5"
        images[5] = "img6"
        images[6] = "img7"
        images[7] = "img8"
        images[8] = "img9"
        
        
        img1.isHidden = true
        img2.isHidden = true
        img3.isHidden = true
        img4.isHidden = true
        img5.isHidden = true
        img6.isHidden = true
        img7.isHidden = true
        img8.isHidden = true
        img9.isHidden = true
        
       
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideOnOfTheBatman), userInfo: nil, repeats: true)
        
        
        
        
        
        label.text = String(self.counter)
        
        let timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeCounter), userInfo: nil, repeats: true)
        

        
    }
   
    @objc func timeCounter(){
        
        if counter>0 {
            counter -= 1
            label.text = String(self.counter)
        }else {
            self.counter = 0
            label.text = String(self.counter)
            let alert = UIAlertController(title: "GAME OVER", message: "Your score is : \(self.userScore)", preferredStyle: UIAlertController.Style.alert)
            let okBtn = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okBtn)
            
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

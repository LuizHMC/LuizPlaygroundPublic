//: ## Form of entertainment NUMBER 3: DELICIOUS
//: Banquets, yeees, the act of union of people to eat. A banquet can be something small or great like in the other side. Banquets are to impress visitors, especially important ones, to show hospitality, as an occasion to showcase supporting entertainments such as music or dancing, or both.
//:
//:
//: In this page is better to use in landscape mode.
//:
//:
//: On the other side we have background sound from a restaurant.
//:
//:
//: Banquets are fantastic. We are doing everytime even if we dont realize. It is a social act.
//: ## Images descriptions
//: "1: Byzantine banquet showing musicians and various musical instruments (1204–1453)" "2: Jean Fouquet, Banquet for Charles V of France (1455–1460)" "3: Coronation banquet of George IV in Westminster Hall (1821)" "4: Victory banquet by Emperor Qian Long to greet the officers who attended the campaign against Taiwan. (18th century)"
//: ## I hope you enjoyed this humble playground :D
//:
//:[Previous](@previous)

//#-hidden-code
import Foundation
import UIKit
import PlaygroundSupport
import AVFoundation


class Page3: UIViewController{
    
    var buttonRightAct : UIButton!
    
    var buttonMusicAct : UIButton!
    var music : AVAudioPlayer?
    
    
    var imagemfundoView : UIImageView!
    
    
    var textimg : UILabel!
    
    let vetorimagensfundo:[String] = ["byzantine.png","byzantine.png","charlesv.png","george.png","qianlong.png","qianlong.png"]
    
    let vetortextoimg:[String] = ["Jean Fouquet, Banquet for Charles V of France (1455–1460)","Coronation banquet of George IV in Westminster Hall (1821)","Victory banquet by Emperor Qian Long to greet the officers who attended the campaign against Taiwan. (18th century)"]
    
    var contador = 1
    
    
    
    
    public override func loadView() {
        
        let widthtela:Double = 480
        let heighttela:Double = 640
        //Fundo da tela
        let view = UIView(frame: CGRect(x: 0, y: 0, width: widthtela, height: heighttela))
        view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        let imagemfundo = UIImage(named:vetorimagensfundo[contador])
        imagemfundoView = UIImageView(image: imagemfundo)

        
        
        //imagem bob
        let bobFoodimg = UIImage(named: "BobFood.png")
        var bobFoodimgView : UIImageView!
        bobFoodimgView = UIImageView(image: bobFoodimg)

        
    
    
        
        
        
        
        //Buttons images
        let buttonRightimg = UIImage(named:"ButtonRight.png")
        let buttonRightimgView = UIImageView(image:buttonRightimg)
        
        let buttonMusicimg = UIImage(named: "ButtonMusic.png")
        let buttonMusicimgView = UIImageView(image:buttonMusicimg)
     
        
        //Buttons acts
        buttonRightAct = UIButton(type: .system)
        buttonRightAct.addTarget(self, action: #selector(updateButtonRight), for: .touchUpInside)
        buttonRightAct.contentEdgeInsets = UIEdgeInsets(top: 30, left: 40, bottom: 30, right: 40)
        
       
        
        
        buttonMusicAct = UIButton(type: .system)
        buttonMusicAct.addTarget(self, action: #selector(updateButtonMusic), for: .touchUpInside)
        buttonMusicAct.contentEdgeInsets = UIEdgeInsets(top: 30, left: 40, bottom: 30, right: 40)
      
        
        
        view.addSubview(imagemfundoView)
        view.addSubview(bobFoodimgView)
        view.addSubview(buttonMusicimgView)
        view.addSubview(buttonRightimgView)
        
   
        view.addSubview(buttonRightAct)
        
        view.addSubview(buttonMusicAct)
        
        imagemfundoView.translatesAutoresizingMaskIntoConstraints = false
        imagemfundoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imagemfundoView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        bobFoodimgView.translatesAutoresizingMaskIntoConstraints = false
        bobFoodimgView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bobFoodimgView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        
        
        buttonMusicAct.translatesAutoresizingMaskIntoConstraints = false
        
        buttonMusicAct.topAnchor.constraint(equalTo:view.topAnchor)
        
        buttonMusicAct.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        buttonMusicimgView.translatesAutoresizingMaskIntoConstraints = false
        buttonMusicimgView.topAnchor.constraint(equalTo:view.topAnchor)
        buttonMusicimgView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        
        
        buttonRightimgView.translatesAutoresizingMaskIntoConstraints = false
        buttonRightimgView.bottomAnchor.constraint(equalTo:view.bottomAnchor)
        buttonRightimgView.rightAnchor.constraint(equalTo:view.rightAnchor)
        
        buttonRightAct.translatesAutoresizingMaskIntoConstraints = false
        buttonRightAct.bottomAnchor.constraint(equalTo:view.bottomAnchor)
        buttonRightAct.rightAnchor.constraint(equalTo:view.rightAnchor)
        
        
        self.view = view
        
        
        
    }
    
    //Functions buttons
    @objc public func updateButtonRight(){
        
        contador += 1
        
        self.imagemfundoView.image = UIImage(named:vetorimagensfundo[contador])
        //self.textimg.text = vetortextoimg[contador]
        
        if contador == 4 {
            contador -= 4
        }
        
    }
    

    @objc public func updateButtonMusic(){
        let path = Bundle.main.path(forResource: "restaurantefundo.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            music = try AVAudioPlayer(contentsOf: url)
            music?.play()
            
        }catch{
            print("Problem with AVFoundation")
        }
        
    }
    
    
    
}

PlaygroundPage.current.liveView = Page3()
//#-end-hidden-code

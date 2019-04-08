//: ## Form of entertainment NUMBER 2: TUM TUM TUM!
//: The music in this page is from: Chopin Nocturne in C# minor
//: ## Music in our lifes
//: Music is a very good form of entertainment, it is universal, it is popular and we have a lot of music genres
//:
//:
//: In this page is better to use in landscape mode.
//:
//:
//: ## Music genres, careful there are many
//:Alternative,
//:Blues,
//:Classical,
//:Country,
//:Eletronic,
//:Hip Hop/Rap,
//:Indie,
//:Industrial,
//:Instrumental,
//:Jazz,
//:K-Pop,
//:Latin,
//:Opera,
//:Pop,
//:Reggae,
//:Rock
//:and each one of then have incontable variations.
//: ## Images description
//: Images are: "1: A full house at the Metropolitan Opera in New York City, waiting for a musical entertainment to begin (1937)(black and white)" "2: Choir and orchestra in ecclesiastical setting (Italy, 2008)" "3: Children's choir providing musical entertainment (Soviet Union, 1979)" "4: Contemporary audience in ancient outdoor stadium (Greece, 2009)."
//:
//: [Previous page](@previous)  |  [Next page](@next)

//#-hidden-code
import Foundation
import UIKit
import PlaygroundSupport
import AVFoundation


class Page2: UIViewController{
    
    var buttonRightAct : UIButton!
    var buttonMusicAct : UIButton!
    var music : AVAudioPlayer?
    
    var imagemfundoView : UIImageView!
   
    
    
    var textimg : UILabel!
    
    let vetorimagensfundo:[String] = ["opera.png","opera.png","orchestraitaly.png","childrenchoir.png","audiencestadium.png","audiencestadium.png"]
    
    let vetortextoimg:[String] = ["A full house at the Metropolitan Opera in New York City, waiting for a musical entertainment to begin (1937)","A full house at the Metropolitan Opera in New York City, waiting for a musical entertainment to begin (1937)","Choir and orchestra in ecclesiastical setting (Italy, 2008)","Children's choir providing musical entertainment (Soviet Union, 1979)","Contemporary audience in ancient outdoor stadium (Greece, 2009)","Contemporary audience in ancient outdoor stadium (Greece, 2009)"]
    
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
        
        let bobMusicimg = UIImage(named: "BobMusic.png")
        var bobMusicimgView : UIImageView!
        bobMusicimgView = UIImageView(image: bobMusicimg)
       
        let balaotextimg = UIImage(named: "balaotextolong.png")
        var balaotextimgView : UIImageView!
        balaotextimgView = UIImageView(image: balaotextimg)
       
        
        //texto imagem
        
        textimg = UILabel()
        textimg.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)

        textimg.font = UIFont(name: "Arial", size: 15)
        textimg.numberOfLines = 5
        
        textimg.textAlignment = NSTextAlignment.center
        textimg.text = vetortextoimg[contador]
        

        
        
        
        //Imagens botoes
        let buttonRightimg = UIImage(named:"ButtonRight.png")
        let buttonRightimgView = UIImageView(image:buttonRightimg)

        
        let buttonMusicimg = UIImage(named: "ButtonMusic.png")
        let buttonMusicimgView = UIImageView(image:buttonMusicimg)

        
        
        
        //Botoes mecanicas
        buttonRightAct = UIButton(type: .system)
        buttonRightAct.addTarget(self, action: #selector(updateButtonRight), for: .touchUpInside)
        buttonRightAct.contentEdgeInsets = UIEdgeInsets(top: 30, left: 40, bottom: 30, right: 40)
        //buttonRightAct.contentEdgeInsets = UIEdgeInsets(top: <#T##CGFloat#>, left: <#T##CGFloat#>, bottom: <#T##CGFloat#>, right: <#T##CGFloat#>)
      
        
        

        
        

        buttonMusicAct = UIButton(type: .system)
        buttonMusicAct.addTarget(self, action: #selector(updateButtonMusic), for: .touchUpInside)
        buttonMusicAct.contentEdgeInsets = UIEdgeInsets(top: 30, left: 40, bottom: 30, right: 40)


        
        
        
        view.addSubview(imagemfundoView)
        view.addSubview(bobMusicimgView)
        view.addSubview(buttonMusicimgView)
        //view.addSubview(balaotextimgView)
        view.addSubview(buttonRightimgView)
        //view.addSubview(textimg)
        view.addSubview(buttonRightAct)
        view.addSubview(buttonMusicAct)
        
        

        imagemfundoView.translatesAutoresizingMaskIntoConstraints = false
        imagemfundoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imagemfundoView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        bobMusicimgView.translatesAutoresizingMaskIntoConstraints = false
        bobMusicimgView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bobMusicimgView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
        
        
        
        buttonMusicAct.translatesAutoresizingMaskIntoConstraints = false
    
    buttonMusicAct.topAnchor.constraint(equalTo:view.topAnchor)
        
        buttonMusicAct.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
    
        
        
       
       buttonRightAct.translatesAutoresizingMaskIntoConstraints = false
        buttonRightAct.bottomAnchor.constraint(equalTo:view.bottomAnchor)
        buttonRightAct.rightAnchor.constraint(equalTo:view.rightAnchor)
        
        
        balaotextimgView.translatesAutoresizingMaskIntoConstraints = false
        balaotextimgView.bottomAnchor.constraint(equalTo:view.bottomAnchor)
        balaotextimgView.centerYAnchor.constraint(equalTo:view.centerYAnchor)

        buttonMusicimgView.translatesAutoresizingMaskIntoConstraints = false
        buttonMusicimgView.topAnchor.constraint(equalTo:view.topAnchor)
        buttonMusicimgView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        buttonRightimgView.translatesAutoresizingMaskIntoConstraints = false
        buttonRightimgView.bottomAnchor.constraint(equalTo:view.bottomAnchor)
        buttonRightimgView.rightAnchor.constraint(equalTo:view.rightAnchor)
        
        textimg.translatesAutoresizingMaskIntoConstraints = false
        textimg.bottomAnchor.constraint(equalTo:view.bottomAnchor)
        textimg.centerYAnchor.constraint(equalTo:view.centerYAnchor)
        
        
        self.view = view
       
        
        
        
        
        
    }
    
    //Funcoes de botoes
    @objc public func updateButtonRight(){
        
        contador += 1
        
        self.imagemfundoView.image = UIImage(named:vetorimagensfundo[contador])
        self.textimg.text = vetortextoimg[contador]
        
        if contador == 4 {
            contador -= 4
        }
        
    }

    @objc public func updateButtonMusic(){//Function of music
        let path = Bundle.main.path(forResource: "chopin.mp3", ofType: nil)!//Load music
        let url = URL(fileURLWithPath: path)//load variable of music
        
        do {//this do and catch is a test to see if music works
            music = try AVAudioPlayer(contentsOf: url)
            music?.play()
            
        }catch{
            print("Problem with AVFoundation")
        }
        
    }
    
    
    
}

PlaygroundPage.current.liveView = Page2()
//#-end-hidden-code



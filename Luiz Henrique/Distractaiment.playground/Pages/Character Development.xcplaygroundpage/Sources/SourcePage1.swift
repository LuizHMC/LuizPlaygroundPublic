
//#-hidden-code
import Foundation
import UIKit
import PlaygroundSupport

public class Page1: UIViewController{//
    
    //variables out of function for public access
    var buttonEvoAct : UIButton!//button of evolution of character and frases
    var bobEvoimgView : UIImageView!//image of view
    var backgroundView : UIImageView!
    var textinit : UILabel!//text of initial
    //var textinstruction : UILabel!//instructions
    var textbob : UILabel!//lines of Bob
    
    
    let imagens:[String] = ["BobEvo1.png","BobEvo2.png","BobEvo3.png","BobEvo4","BobFinalEvo.png","BobFinalEvo.png","BobFinalEvo.png"]//Array with strings to overlap imagens
    
    let vetortextosinit:[String] = ["This is 'Box': our first object.","Box have a mouth now","Arms and eyes, wow","Box is creating LIFE","BOX IS NOW BOB...HOW BEAUTIFULL","Ok guess he will not evolve more","Yeep, nothing","Well, he is talking more","Let`s see how much he can talk","Let`s see how much he can talk","Let`s see how much he can talk","Let`s see how much he can talk","Let`s see how much he can talk","Let`s see how much he can talk","Let`s see how much he can talk","Let`s see how much he can talk","Let`s see how much he can talk","Let`s see how much he can talk","Let`s see how much he can talk","Let`s see how much he can talk","Let`s see how much he can talk","Let`s see how much he can talk","Let`s see how much he can talk","Let`s see how much he can talk","Let`s see how much he can talk","He like beans"]//Array with strings of the initial text. There are repetions because i have a counter down in the code
    
    let vetortextbob:[String] = ["","Err Hello?","I can see\n NOW","Have to be\n carefull with\n these ones","BEHOLD,\n I AM \nCOMPLETE","Hi :D","Hello there","Oh, you\n are still here","It`s so\n nice to talk", "Yeeeep.\n I like beans\n and you?","...","If i talk\n too much\n my text\n dialogue is\n going to\n explode right?\n So lets talk\n a lot to\n surprass\n the limits.","My previous\n line was out\n of bounds.","The guy who\n programed\n this is so\n not prepared","Sorry boss","...","I like beans,\n already\n said that,\n right?","I am tired\n of talking","...","I am really\n tired of\n talking?","I think\n not","Now i am\n tired haha","...","No more\n talking\n promise","Really,\n nothing more.","I like\n beans"]//Same thing here but with no repetitions
    
    
    
    
    
    
    var contador:Int = 0//counter to change the images
    var contadortexto:Int = 0//counter to change the texts
    
    public override func loadView() {

        
        
        
        let widthtela:Double = 480//x
        let heighttela:Double = 640//y
        
        
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: widthtela, height: heighttela))
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        let background = UIImage(named: "background.png")
        backgroundView = UIImageView (image: background)
        
        //
        let BobEvoimg = UIImage(named: imagens[contador])//CONTAIMAGENS
        //
        bobEvoimgView = UIImageView (image: BobEvoimg)

        
        // Botoes
        buttonEvoAct = UIButton(type: .system)
        buttonEvoAct.addTarget(self, action: #selector(updateButtonEvo), for: .touchUpInside)
        buttonEvoAct.contentEdgeInsets = UIEdgeInsets(top: 30, left: 40, bottom: 30, right: 40)
     
        
        
        
        
        let ButtonEvoimg = UIImage(named: "ButtonEvolucao.png")
        let ButtonEvoimgView = UIImageView(image: ButtonEvoimg)

        
        
        
        
        textinit = UILabel()
        textinit.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)

        
        textinit.font = UIFont(name: "Arial", size: 20)
        textinit.numberOfLines = 2
        textinit.textAlignment = NSTextAlignment.center
        textinit.text = vetortextosinit[contadortexto]//vetortextosinit have contadortexto
        // Text with arrays here
        
        
       
     
        textbob = UILabel()
        textbob.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        textbob.frame = CGRect(x: 270, y: 150, width: 100, height: 100)
        textbob.numberOfLines = 10
        textbob.font = UIFont(name: "Arial", size: 13)
        textbob.textAlignment = NSTextAlignment.center
        textbob.text = vetortextbob[contadortexto]
        
       
        
        let balaotexto = UIImage(named: "balaotextoshort.png")
        let balaotextoView = UIImageView(image: balaotexto)

        
        //--------------------------------------------
        view.addSubview(backgroundView)
        view.addSubview(bobEvoimgView)
        view.addSubview(balaotextoView)
        view.addSubview(ButtonEvoimgView)
        view.addSubview(textinit)
        //view.addSubview(textinstruction)
        view.addSubview(buttonEvoAct)
        view.addSubview(textbob)
        
        
        //CONSTRAINTS
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backgroundView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        bobEvoimgView.translatesAutoresizingMaskIntoConstraints = false
        bobEvoimgView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bobEvoimgView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        balaotextoView.translatesAutoresizingMaskIntoConstraints = false
        balaotextoView.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
        balaotextoView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        ButtonEvoimgView.translatesAutoresizingMaskIntoConstraints = false
        ButtonEvoimgView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        ButtonEvoimgView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        buttonEvoAct.translatesAutoresizingMaskIntoConstraints = false
        buttonEvoAct.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        buttonEvoAct.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        textinit.translatesAutoresizingMaskIntoConstraints = false
        textinit.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        textinit.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        textbob.translatesAutoresizingMaskIntoConstraints = false
        textbob.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
        textbob.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        
        self.view = view
        
        
    }
    
    @objc public func updateButtonEvo(){

        contador += 1
        contadortexto += 1
        
        
        self.bobEvoimgView.image = UIImage(named: imagens[contador])
        //
        self.textinit.text = vetortextosinit[contadortexto]
        

        
        self.textbob.text = vetortextbob[contadortexto]
        
        if contador == 6{
            contador -= 1
        }
        if contadortexto == 25{
            contadortexto -= 1
        }
        
    }
    
    
}
//#-end-hidden-code



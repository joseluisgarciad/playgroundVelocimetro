//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init () {
        velocidad = Velocidades.init(velocidadInicial: Velocidades.Apagado)        
    }
    
    func cambioDeVelocidad() -> (actual: Int, VelocidadEnCadena: String) {
        var actual: Int
        var VelocidadEnCadena:String
        
        actual = velocidad.rawValue
        
        switch velocidad {
        case .Apagado:
            VelocidadEnCadena = "Apagado"
            velocidad = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            VelocidadEnCadena = "Velocidad Baja"
            velocidad = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            VelocidadEnCadena = "Velocidad Media"
            velocidad = Velocidades.VelocidadAlta
        case .VelocidadAlta:
            VelocidadEnCadena = "Velocidad Alta"
            velocidad = Velocidades.VelocidadMedia
        }
        
        return(actual, VelocidadEnCadena)
    }
}

let auto = Auto()
for i in 1...20{
    
    
    let tupla = auto.cambioDeVelocidad()
    
    
    print("\(i) \(tupla.actual), \(tupla.VelocidadEnCadena)")
}





//

//
//  OneGuess.swift
//  GuessingGame
//
//  Created by Tony Vazgar on 8/20/18.
//  Copyright © 2018 Tony Vazgar. All rights reserved.
//

import Foundation

//Hereda de objeto NSObject
class OneGuess: NSObject {
    //variables
    var emojis = String() //Se inicializa vacio
    var answer = String() //Está vacio para que se ponga la respuesta
    
    
    //Esto es un constructor de la clase
    init(emojis: String, answer: String) {
        self.emojis = emojis
        self.answer = answer
    }
    
}

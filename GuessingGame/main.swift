//
//  main.swift
//  GuessingGame
//
//  Created by Tony Vazgar on 8/20/18.
//  Copyright © 2018 Tony Vazgar. All rights reserved.
//

import Foundation

print("Binvenido al juego de los emojis!")

//Crear arreglo de emojis-respuestas

/*
 *Presentar una pregunta
 *Preguntar la respuesta
 *Verificar la respuesta
 *PReuntar si quieres volver a jugar
 */



//Es como crearlo en java---- var questions = NSMutableArray()
var questions = ["🛳❄️", "🐼🥋", "💦🐘", "👶🚕", "🤡🎈🔪"]
var answers   = ["TITANIC", "KUNG-FU PANDA", "AGUA PARA ELEFANTES", "BABY DRIVER", "ESO"]

var guesses = [OneGuess(emojis: "🛳❄️", answer: "TITANIC"), OneGuess(emojis: "🐼🥋", answer: "KUNG-FU PANDA"), OneGuess(emojis: "💦🐘", answer: "AGUA PARA ELEFANTES"), OneGuess(emojis: "👶🚕", answer: "BABY DRIVER"), OneGuess(emojis: "🤡🎈🔪", answer: "ESO")]

var preguntasRandom = [Int]()
var jugar = true
while jugar{
    
    
    
    //presentar una pregunta
    //print("¿Cual es la pelicula?")
    //print(questions[0])
    //print(guesses[0].answer)
    
    
    if !questions.isEmpty {
        print("Quieres seguir jugando??, si es sí pon una si o una no si no")
        let seguir = readLine()
        if seguir?.uppercased() == "no"{
            jugar = false
        }
    }
    
    
    
    //Hacer una pregunta al azar
    print("¿Cual es la pelicula?")
    let preguntaNumero = Int(arc4random_uniform(UInt32(questions.count)))
    /*
    preguntasRandom.append(preguntaNumero)
    preguntasRandom.sort()
    print(preguntasRandom)
     */
    print(questions[preguntaNumero])
    let respuestaRandom  = readLine()
    if respuestaRandom?.uppercased() == answers[preguntaNumero]{
        print("CORRECTO")
    }else{
        print("NEL")
    }
    questions.remove(at: preguntaNumero)
    
    /*
    //Leer la respuesta
    let a  = readLine()
    if a?.uppercased() == answers[0]{
        print("CORRECTO")
    }else{
        print("NEL")
    }
     */
}


//
//  Aluno.swift
//  Aluno
//
//  Created by Vicki Liou on 11/26/18.
//  Copyright © 2018 Vicki Liou. All rights reserved.
//

import Foundation

class Aluno {
    
    var nome: String!
    var idade:Int!
    var curso: String!
    
    init(nome:String, idade:Int, curso:String) {
        self.nome = nome
        self.idade = idade
        self.curso = curso
    }
}

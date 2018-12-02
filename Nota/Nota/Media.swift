//
//  Media.swift
//  Aluno
//
//  Created by Vicki Liou on 11/26/18.
//  Copyright © 2018 Vicki Liou. All rights reserved.
//

import Foundation

class Media {
    
    var ps1: Float!
    var ps2: Float!
    var media: Float!
    
    func calcularMedia() {
        media = (ps1+ps2)/2
    }
    
    init() {
    }
    
    init(ps1: Float, ps2: Float, media: Float) {
        self.ps1 = ps1
        self.ps2 = ps2
        self.media = media
    }
    
}

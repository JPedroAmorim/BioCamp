//
//  LivingBeing.swift
//  CampusSelvagem
//
//  Created by Felipe Semissatto on 20/08/19.
//  Copyright © 2019 Felipe Semissatto. All rights reserved.
//

import Foundation
import UIKit

class LivingBeing {
    
    enum LivingBeingClass {
        case anfibio
        case ave
        case mamifero
        case reptil
        case peixe
        case inseto
        case briofita
        case pteridofitas
        case angiospermas
        case gimnospermas
    }

    var name: String
    var scientificName: String
    var beingClass: LivingBeingClass
    var locationOnCampus: String
    var coordinate: (latitude: Double, longitude: Double)
    var areaRadius: CGFloat
    var habitatOrBiome: String
    var curiosity: String
    var photos: [UIImage?] = [] //trocar por url futuramente e modificar encapsulamento
    
    init(name: String, scientificName: String, beingClass: LivingBeingClass, locationOnCampus: String, coordinate: (latitude: Double, longitude: Double), areaRadius: CGFloat, habitatOrBiome: String, curiosity: String, photos: [UIImage?]) {
        self.name = name
        self.scientificName = scientificName
        self.beingClass = beingClass
        self.locationOnCampus = locationOnCampus
        self.coordinate = coordinate
        self.areaRadius = areaRadius
        self.habitatOrBiome = habitatOrBiome
        self.curiosity = curiosity
        self.photos = photos
    }
}

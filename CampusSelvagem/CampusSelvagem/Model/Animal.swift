//
//  Animal.swift
//  CampusSelvagem
//
//  Created by Felipe Semissatto on 20/08/19.
//  Copyright © 2019 Felipe Semissatto. All rights reserved.
//

import Foundation
import UIKit

class Animal: LivingBeing {
    //MARK: Properties
    var type: AnimalType
    var habitat: String
    
    //MARK: Constructor
    init(_ name: String, _ scientificName: String, _ locationOnCampus: String, _ coordinate: (latitude: Double, longitude: Double), areaRadius: CGFloat, _ curiosity: String, _ photos: [UIImage?], _ type: AnimalType, _ habitat: String) {
        self.type = type
        self.habitat = habitat
        
        let beingClass: LivingBeingClass = {
            switch type {
            case .amphibian:
                return LivingBeingClass.anfibio
            case .bird:
                return LivingBeingClass.ave
            case .mammal:
                return LivingBeingClass.mamifero
            case .reptile:
                return LivingBeingClass.reptil
            case .fish:
                return LivingBeingClass.peixe
            case .insect:
                return LivingBeingClass.inseto
            }
        }()
        super.init(name: name, scientificName: scientificName, beingClass: beingClass, locationOnCampus: locationOnCampus, coordinate: coordinate, areaRadius: areaRadius, habitatOrBiome: habitat, curiosity: curiosity, photos: photos)
    }
    
    //MARK: Types
    struct PropertyKeyAnimal {
        static let name = "name"
        static let scientificName = "scientific name"
        static let locationOnCampus = "location on campus"
        static let curiosity = "curiosity"
        static let photos = "photos"
        static let type = "type"
        static let habitat = "habitat"
    }
    
    //MARK: NSCoding Protocol
    func encode(with aCoder: NSCoder) {
        aCoder.encode(super.name, forKey: PropertyKeyAnimal.name)
        aCoder.encode(super.scientificName, forKey: PropertyKeyAnimal.scientificName)
        aCoder.encode(super.locationOnCampus, forKey: PropertyKeyAnimal.locationOnCampus)
        aCoder.encode(super.curiosity, forKey: PropertyKeyAnimal.curiosity)
        aCoder.encode(super.photos, forKey: PropertyKeyAnimal.photos)
        aCoder.encode(type, forKey: PropertyKeyAnimal.type)
        aCoder.encode(habitat, forKey: PropertyKeyAnimal.habitat)
    }
    
    //MARK: Archiving Paths
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("animal")
}

enum AnimalType: String {
    case amphibian = "Anfíbios"
    case bird = "Aves"
    case mammal = "Mamíferos"
    case reptile = "Répteis"
    case insect = "Insetos"
    case fish = "Peixes"
}

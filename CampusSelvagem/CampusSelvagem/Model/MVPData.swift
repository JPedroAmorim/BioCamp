//
//  MVPData.swift
//  CampusSelvagem
//
//  Created by André Papoti de Oliveira on 28/08/19.
//  Copyright © 2019 Felipe Semissatto. All rights reserved.
//

import UIKit

class MVPData {
    
    static let sharedInstance = MVPData()
    
    var data: [LivingBeing] = []
    private init(){
        var photos: [UIImage?] = []
        
        /// ### AVES
        photos.append(UIImage(named: "corujas1"))
        photos.append(UIImage(named: "corujas2"))
        data.append(LivingBeing(name: NSLocalizedString("Amphibian", comment: ""),
                                scientificName: "Athene cunicularia",
                                beingClass: .ave,
                                locationOnCampus: "Estacionamento da FEAGRI",
                                coordinate: (latitude: -22.817016, longitude: -47.060604),
                                areaRadius: 70,
                                habitatOrBiome: "Restingas e cerrados.",
                                curiosity: "Os machos permanecem fora do ninho com a função de vigiar, descansar e observar. A presença da fêmea é mais oculta, devido a sua permanência no interior da toca. Alimenta-se de pequenos roedores, répteis, anfíbios, pequenos insetos, pequenos pássaros como pardais, escorpiões, etc.",
                                photos: photos))
        photos.removeAll()
        
        photos.append(UIImage(named: "peregrino00"))
        photos.append(UIImage(named: "peregrino01"))
        data.append(LivingBeing(name: "Falcão-Peregrino",
                                scientificName: "Falco peregrinus",
                                beingClass: .ave,
                                locationOnCampus: "Pode ser avistado por todo o campus, sendo a maior parte delas perto do prédio de Artes Cênicas.",
                                coordinate: (latitude: -22.815381, longitude: -47.070758),
                                areaRadius: 90,
                                habitatOrBiome: "Pode ser encontrada em todos os continentes exceto na Antártida.",
                                curiosity: "Atualmente a ave é considerada o animal mais veloz do mundo, podendo atingir cerca de 320 km/h ou mais.",
                                photos: photos))
        photos.removeAll()
        
        photos.append(UIImage(named: "carcara00"))
        photos.append(UIImage(named: "carcara01"))
        data.append(LivingBeing(name: "Carcará",
                                scientificName: "Caracara plancus",
                                beingClass: .ave,
                                locationOnCampus: "Pode ser avistado por todo o campus, porém aparecem frequentemente próximos ao IA e ao IEL",
                                coordinate: (latitude: -22.814893, longitude: -47.069642),
                                areaRadius: 150,
                                habitatOrBiome: "Habita o centro e o sul de toda a América do Sul.",
                                curiosity: "Para avisar os outros carcarás de seu território ou comunicação entre o casal, possui um chamado que origina o seu nome comum, “carcará”.",
                                photos: photos))
        photos.removeAll()
        
        photos.append(UIImage(named: "gralha00"))
        photos.append(UIImage(named: "gralha01"))
        data.append(LivingBeing(name: "Gralha-do-Campo",
                                scientificName: "Cyanocorax cristatellus",
                                beingClass: .ave,
                                locationOnCampus: "Podem ser vistas principalmente próximas a casa do lago",
                                coordinate: (latitude: -22.812800, longitude: -47.069803),
                                areaRadius: 100,
                                habitatOrBiome: "Nativa dos cerrados e da caatinga.",
                                curiosity: "Os bandos costumam ter um território e normalmente percorrem um mesmo trajeto todos os dias, tornando previsíveis seus horários de visita a certos locais em alguns casos.",
                                photos: photos))
        photos.removeAll()
        
        // ### MAMIFEROS
        photos.append(UIImage(named: "cacheiro00"))
        photos.append(UIImage(named: "cacheiro01"))
        data.append(LivingBeing(name: "Ouriço-cacheiro",
                                scientificName: "Coendou prehensilis",
                                beingClass: .mamifero,
                                locationOnCampus: "Pode ser avistado por todo o campus, porém aparecem frequentemente próximos da FCM",
                                coordinate: (latitude: -22.830147, longitude: -47.062524),
                                areaRadius: 210,
                                habitatOrBiome: "Ocorre desde o Rio de Janeiro até o Rio Grande do Sul, incluindo Minas Gerais.",
                                curiosity: "Produzem um unico filhote por ninhada.",
                                photos: photos))
        photos.removeAll()
        
        /// ### REPTEIS
        photos.append(UIImage(named: "teiu00"))
        data.append(LivingBeing(name: "Teiu",
                                scientificName: "Salvator merianae",
                                beingClass: .reptil,
                                locationOnCampus: "Pode ser avistado por todo o campus, porém aparecem frequentemente próximos da FEEC",
                                coordinate: (latitude: -22.821178, longitude: -47.065785),
                                areaRadius: 200,
                                habitatOrBiome: "Habita grande parte do Brasil (com exceção da floresta amazônica) e norte da Argentina e Uruguai",
                                curiosity: "Possui a capacidade de aumentar a sua taxa metabólica durante o período reprodutivo a níveis próximos ao de mamíferos e aves, gerando calor e mantendo sua temperatura mais elevada do que a do ambiente.",
                                photos: photos))
        photos.removeAll()
        
        /// ### INSETOS
        photos.append(UIImage(named: "gafanhoto"))
        data.append(LivingBeing(name: "Mantis Religiosa",
                                scientificName: "Gryllus religiosa",
                                beingClass: .inseto,
                                locationOnCampus: "Pode ser avistado por todo o campus, porém aparecem frequentemente próximos ao DCE",
                                coordinate: (latitude: -22.817901, longitude: -47.071941),
                                areaRadius: 200,
                                habitatOrBiome: "Podem ser encontrados no sul da europa, américa, Asia, Africa e Australia",
                                curiosity: "O cortejo e pareamento são separados em dois passos: cortejo preliminar e copulação. O cortejo preliminar começa com o contato visual dos animais e termina com o primeiro contato físico. Copulação começa com o primeiro contato e termina com o depósito do espermatófago",
                                photos: photos))
        photos.removeAll()
        
        /// ### PLANTAE
        
        photos.append(UIImage(named: "flor1"))
        photos.append(UIImage(named: "flor2"))
        data.append(LivingBeing(name: "Abricó-de-macaco",
                                scientificName: "Couroupita guianensis",
                                beingClass: .angiospermas,
                                locationOnCampus: "Praça da Paz",
                                coordinate: (latitude: -22.821975, longitude: -47.067189),
                                areaRadius: 30,
                                habitatOrBiome: "Mata Atlântica",
                                curiosity: "Podem ter altura média entre 8 e 15 metros",
                                photos: photos))
        photos.removeAll()
        
        photos.append(UIImage(named: "paubrasil"))
        photos.append(UIImage(named: "paubrasil2"))
        data.append(LivingBeing(name: "Pau Brasil",
                                scientificName: "Paubrasilia echinata",
                                beingClass: .angiospermas,
                                locationOnCampus: "Praça da Paz",
                                coordinate: (latitude: -22.823231, longitude: -47.068058),
                                areaRadius: 30,
                                habitatOrBiome: "Mata Atlântica",
                                curiosity: "Árvore considerada símbolo nacional.",
                                photos: photos))
        photos.removeAll()
    }
}

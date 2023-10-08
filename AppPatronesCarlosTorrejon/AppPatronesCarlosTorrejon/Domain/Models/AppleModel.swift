//
//  AppleModel.swift
//  AppPatronesCarlosTorrejon
//
//  Created by Juan Carlos Torrejón Cañedo on 7/10/23.
//

import Foundation

typealias AppleCollection = [AppleModel]


struct AppleModel {
    var name: String
    var image: String
    var description: String
}

var sampleAppleData: AppleCollection = [
    
    AppleModel(name: "Ralls Genet",
               image: "manzana_ralls_genet",
               description: "Una manzana utilizada en la cría de otras más modernas. Su cultivo fue popularizado por Tomas Jefferson, pero fue realmente Edmond-Charles Genet quien la presentó al presidente. Su color varía entre el rojo y el amarillo, es crujiente y apta para comer cruda o cocinada."),
    
    AppleModel(name: "Fuji",
               image: "manzana_fuji",
               description: "Proviene del cruce de Ralls Genet y Red Delicious, originaria de Fujisaki, Japón. De sabor dulce, jugosa y crujiente, es ideal para ensaladas y repostería."),
    
    AppleModel(name: "Golden",
               image: "manzana_golden",
               description: "Originaria de Virginia, es un cruce entre Grimes Golden y Golden Reinette. De sabor ácido que se torna dulce al madurar y es perfecta para postres."),
    
    AppleModel(name: "Granny Smith",
               image: "manzana_granny_smith",
               description: "Popularizada en Australia por Maria Ann Smith Sherwood. Es verde, crujiente y ácida, ideal para ensaladas y pastelería."),
    
    AppleModel(name: "Reineta",
               image: "manzana_reineta",
               description: "La más común es la canadiense, con orígenes en Francia del siglo XVI. Es grande y achatada, con un espectro de colores que varía del amarillo al gris. Es de sabor agridulce y es excelente para repostería."),
    
    AppleModel(name: "Delicia o Red Delicious",
               image: "manzana_red_delicious",
               description: "Apareció en 1880 en Iowa. Tiene subvariedades como la Red King o la Top Red. Su piel es brillante, gruesa y de sabor ligeramente ácido. Es ideal para ensaladas o puré."),
    
    AppleModel(name: "Starking",
               image: "manzana_starking",
               description: "Popularizada por el vivero Stark Brothers en Louisiana, es similar a la Delicia. Su sabor es dulce y es ideal para asar, hacer puré o estofados."),
    
    AppleModel(name: "Gala",
               image: "manzana_gala",
               description: "Creada en Australia, es un cruce entre Golden y Delicia. De color rojo sobre fondo verde, su sabor es ácido y crujiente, perfecta para combinar con pescados o carnes rojas."),
    
    AppleModel(name: "Royal Gala",
               image: "manzana_royal_gala",
               description: "De origen en Nueva Zelanda, es un cruce de Kidd’s Orange Red y Golden Delicious. De textura crujiente y jugosa, es versátil en la cocina."),
    
    AppleModel(name: "Lady William",
               image: "manzana_lady_william",
               description: "Una manzana muy dulce y con historia. Su sabor muy dulce dio origen a variedades como la Pink Lady o la Cripps Pink."),
    
    AppleModel(name: "Cripps Pink",
               image: "manzana_cripps_pink",
               description: "De tamaño grande y forma cónica, es de color rosado intenso en la superficie y verde claro en el fondo, con una textura tierna y fina."),
    
    AppleModel(name: "Pink Lady",
               image: "manzana_pink_lady",
               description: "Originaria de Australia, es un cruce entre Golden Delicious y Lady William’s. De sabor ácido y textura crujiente, es perfecta para combinar con diversos platos."),
    
    AppleModel(name: "McIntosh",
               image: "manzana_mcintosh",
               description: "Debe su nombre al descubridor del manzano que dio este fruto, John McIntosh. Encontrada en 1796 en Ontario, es redondeada y de sabor ácido y jugoso.")
]



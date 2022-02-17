//
//  GlossEntry.swift
//  JsonHomeWork1
//
//  Created by Rashit Osmonov on 17/2/22.
//

import Foundation
struct GlossEntry: Decodable {
    let ID: String
    let SortAs: String
    let GlossTerm: String
    let Acronym: String
    let Abbrev: String
    let GlossDef: GlossDef
    let GlossSee: String
}

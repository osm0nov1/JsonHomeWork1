//
//  ViewController.swift
//  JsonHomeWork1
//
//  Created by Rashit Osmonov on 17/2/22.
//

import UIKit

//struct First: Decodable {
//    let glossary: Glossary
//}
//
//struct Glossary: Decodable {
//    let title: String
//    let GlossDiv: GlossDiv
//}

//struct GlossDiv: Decodable {
//    let title: String
//    let GlossList: GlossList
//}
//
//struct GlossList: Decodable {
//    let GlossEntry: GlossEntry
//}
//
//struct GlossEntry: Decodable {
//    let ID: String
//    let SortAs: String
//    let GlossTerm: String
//    let Acronym: String
//    let Abbrev: String
//    let GlossDef: GlossDef
//    let GlossSee: String
//}
//
//struct GlossDef: Decodable {
//    let para: String
//    let GlossSeeAlso: [String]
//}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        guard let asset = NSDataAsset(name: "firstJson", bundle: Bundle.main) else {return}
        
        let model = try! JSONDecoder().decode(First.self, from: asset.data)
        
        
        dump(model)
        
    }
}




//
//    "glossary": {
//        "title": "example glossary",
//        "GlossDiv": {
//                        "title": "S",
//                        "GlossList": {
//                                    "GlossEntry": {
//                                                        "ID": "SGML",
//                                                    "SortAs": "SGML",
//                                                    "GlossTerm": "Standard Generalized Markup Language",
//                                                    "Acronym": "SGML",
//                                                    "Abbrev": "ISO 8879:1986",
//                                                    "GlossDef": {
//                                                                        "para": "A meta-markup language, used to create markup languages such as DocBook.",
//                                                                        "GlossSeeAlso": ["GML", "XML"]
//                                                                    },
//                          "GlossSee": "markup"
//                }
//            }
//        }
//    }



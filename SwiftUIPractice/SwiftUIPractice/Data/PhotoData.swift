//
//  PhotoData.swift
//  SwiftUIPractice
//
//  Created by shine on 2019/9/22.
//  Copyright © 2019 Shine. All rights reserved.
//

import Foundation

struct PhotoInfo : Identifiable{
    var id = UUID()
    
    var year : Int
    
    var name : String
}

let PhotList  = [
    PhotoInfo(year: 2017, name: "snow1") ,
    PhotoInfo(year: 2018, name: "snow2"),
    PhotoInfo(year: 2019, name: "snow3")
    
]

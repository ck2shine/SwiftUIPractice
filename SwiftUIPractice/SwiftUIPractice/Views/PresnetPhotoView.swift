//
//  PresnetPhotoView.swift
//  SwiftUIPractice
//
//  Created by shine on 2019/9/22.
//  Copyright © 2019 Shine. All rights reserved.
//

import SwiftUI

struct PresnetPhotoView: View {
    @State private var brightnessAmount : Double = 0
  
    @State var selectedDate = Date()
    
    let today = Date()
    let startDate = Calendar.current.date(byAdding: .year, value: -2, to: Date())
    
    var year : Int{
        return Calendar.current.component(.year, from: selectedDate)
    }
    
    var body: some View {
        VStack{
            
            GeometryReader { geometry in
                Image("snow\(self.year)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.width / 4 * 3)
                    .clipped()
                    .brightness(self.brightnessAmount)
            }
            Form{
                HStack
                    {
                        Text("亮度:")
                        Slider(value : $brightnessAmount ,  in : 0...1)
                }
                DatePicker("時間", selection: self.$selectedDate, in: self.startDate!...self.today,displayedComponents: .date)
                
            }
            
            
        }
        
        
    }
}

struct PresnetPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PresnetPhotoView()
    }
}

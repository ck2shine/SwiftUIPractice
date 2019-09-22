//
//  PhotoRowCellView.swift
//  SwiftUIPractice
//
//  Created by shine on 2019/9/22.
//  Copyright © 2019 Shine. All rights reserved.
//

import SwiftUI

struct PhotoRowCellView: View {
    
    var photoInfo : PhotoInfo
    
    var body: some View {
        HStack
            {
                Spacer()
                Image("snow2019")
                    .frame(width: 100, height: 100)
                    .cornerRadius(50)
                    .clipShape(Circle())
                    .overlay(Circle()
                    .stroke(Color.white,lineWidth: 3))
        }
        .padding(20)
    }
}

struct PhotoRowCellView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoRowCellView(photoInfo: PhotList[0])
    }
}

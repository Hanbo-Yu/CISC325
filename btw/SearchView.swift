//
//  SearchView.swift
//  btw
//
//  Created by Hanbo Yu on 2020-02-26.
//  Copyright © 2020 Group25. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    var body: some View{
        VStack{
            Text("Jumped")
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity) .background(LinearGradient(gradient: Gradient(colors:[Color.red,Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .edgesIgnoringSafeArea(.all)
    }
}
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}


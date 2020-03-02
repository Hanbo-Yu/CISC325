//
//  SearchView.swift
//  btw
//
//  Created by Hanbo Yu on 2020-02-26.
//  Copyright © 2020 Group25. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    
    @State private var names = ["Apple","Medicine","Veggies"]
    @State private var search = ""
    
    var body: some View{
        VStack{
            SearchsBar(text:$search)

        List{
            ForEach(names.filter {self.search.isEmpty ? true: $0.localizedCaseInsensitiveContains(self.search)}, id: \.self){name in Text(name).bold().padding(8).foregroundColor(.white).background(Color.blue)
                .cornerRadius(8)
            }
        }
        }
//        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity) .background(LinearGradient(gradient: Gradient(colors:[Color.red,Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
//        .edgesIgnoringSafeArea(.all)
    }
}
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}


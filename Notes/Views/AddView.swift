//
//  AddView.swift
//  Notes
//
//  Created by Arthur Lee on 22.03.2022.
//

import SwiftUI

struct AddView: View {
    
    @State var textForTextField: String = ""
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type here", text: $textForTextField)
                    .padding(.horizontal)
                    .frame(height: 50)
                    .cornerRadius(10)
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 65)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }

            }
            .padding(15)
        }
        .navigationTitle("Add an item🖊")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}

//
//  AddView.swift
//  Notes
//
//  Created by Arthur Lee on 22.03.2022.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textForTextField: String = ""
    @State var alertTittle: String = ""
    @State var showAlert: Bool = false
    
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type here", text: $textForTextField)
                    .padding(.horizontal)
                    .frame(height: 50)
                    .cornerRadius(10)
                Button {
                    saveButtonPressed()
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
        .navigationTitle("Add a notice🖊")
        .alert(isPresented: $showAlert) {
            recieveAlert()
        }
    }
    
    func saveButtonPressed() {
        if textIsRelevant() {
            listViewModel.addItem(title: textForTextField)
            presentationMode.wrappedValue.dismiss()
        }
    }
    func textIsRelevant() -> Bool {
        if textForTextField.count < 3 {
            alertTittle = "Your note must contain not less than 3 characters⚠️"
            showAlert.toggle()
            return false
        }
        
        return true
    }
    func recieveAlert() -> Alert {
        return Alert(title: Text(alertTittle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}

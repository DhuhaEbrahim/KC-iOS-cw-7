//
//  ContentView.swift
//  studentsInfo
//
//  Created by dhuha kaweyani on 17/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        Image("id").resizable().frame(width: 200.0, height: 200.0)
            Text("سجل الطلبة").font(.system(size: 50, weight: .heavy, design: .serif)).foregroundColor(Color(red: 0.224, green: 0.592, blue: 0.824))
            ScrollView{
                ForEach(students){
                    student in
                    Text(String(format: " Name: \(student.fullName)\n Age: \(student.age)\n Year:  \(student.year)"))
                        .frame(width: 300, height: 200).font(.system(size: 25, weight: .medium, design: .serif))
                    
                }
                Text("❗️ عدد الطلبة المسجلين : \(students.count)").font(.system(size: 20,weight: .medium, design: .serif)).padding().background(.yellow).cornerRadius(15)
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}

//
//  StudentsDetailsModel.swift
//  studentsInfo
//
//  Created by dhuha kaweyani on 17/08/2022.
//

import Foundation
struct StudentsDetailsModel: Identifiable{
   let  id = UUID()
    var fullName: String
    var year: Int
    var age: Int
}
var ahmad = StudentsDetailsModel(fullName: "ahmad", year: 2006, age: 16)
var batool = StudentsDetailsModel(fullName: "batool", year: 2003, age: 19)
var fatema = StudentsDetailsModel(fullName: "fatema", year: 2004, age: 18)
var students = [ahmad, batool, fatema]

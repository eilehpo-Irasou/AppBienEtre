//
//  DataStore.swift
//  AppBienEtre
//
//  Created by Jesus Bizarro on 04/02/2021.
//
import Foundation
import SwiftUI
import Combine

struct Task : Identifiable {
    var id = String()
    var toDoItem = String()
}

class TaskStore: ObservableObject {
    @Published var tasks = [Task]()
    @Published var happy: Int = 0
    @Published var moyen: Int = 0
    @Published var nohappy: Int = 0
}


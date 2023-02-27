import UIKit

struct Workout {
    var name: String
    var weight: Double
    var weightHistory: [Date : Double]
    var dateCreated: Date
    let id: String
    
    init(name: String, weight: Double) {
        self.name = name
        self.weight = weight
        self.weightHistory = [Date : Double]()
        self.dateCreated = Date()
        id = UUID().uuidString
    }
}

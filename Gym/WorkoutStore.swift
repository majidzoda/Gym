import UIKit

class WorkoutStore {
    var allWorkouts = [Workout]()
    
    init (){
        for i in 1...5{
            let workout = Workout(name: "\(i)", weight: Double(i))
            allWorkouts.append(workout)
        }
    }
}

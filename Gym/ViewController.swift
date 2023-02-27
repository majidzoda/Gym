import UIKit

class ViewController: UIViewController {
    var workoutStore: WorkoutStore!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "showWorkouts":
            let workoutList = segue.destination as! WorkoutList
            workoutList.workoutStore = workoutStore
        default:
            fatalError("Unexpected error identifying segue: \(#file), \(#function), \(#line)")
        }
    }
}

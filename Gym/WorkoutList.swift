import UIKit

class WorkoutList: UITableViewController {
    var workoutStore: WorkoutStore!
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workoutStore.allWorkouts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        let workout = workoutStore.allWorkouts[indexPath.row]
        cell.textLabel?.text = workout.name
        cell.detailTextLabel?.text = "\(workout.weight)"
        return cell
    }
}

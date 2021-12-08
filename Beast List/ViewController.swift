
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tfTask: UITextField!
    var tasks = ["clean room","read book","eat healthy food"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    @IBAction func addButtonPressed(_ sender: Any) {
        if let task = tfTask.text {
            tasks.append(task)
            tableView.reloadData()
            tfTask.text = ""
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row] 
        return cell
    }
}

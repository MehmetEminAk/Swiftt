
import Foundation
import UIKit

class ViewController : UIViewController,UITableViewDelegate,UITableViewDataSource{
    var namee : String = ""
    let persons  = ["Mehmet","Ahmet","Zeynep","Şeyma","Elif"]
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text =  persons[indexPath.row]
        let gesture = UITapGestureRecognizer(target: self, action: #selector(goPersonVC))
        cell.addGestureRecognizer(gesture)
        self.namee = persons[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.persons.count
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "personListtoPerson" {
            let destinationVC = segue.destination as! mesagingVC
            destinationVC.name = self.namee
        }
    }
    @objc func goPersonVC(){
        performSegue(withIdentifier: "personListtoPerson", sender: nil)
    }
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        
    }
}


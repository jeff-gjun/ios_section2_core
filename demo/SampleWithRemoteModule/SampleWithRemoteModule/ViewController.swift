import UIKit
import iOS_Section2_Core

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var cities = [[String: String]]() {
        didSet {
            self.tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do {
//            try self.showStates()
//            try self.showNames()
//            try self.showPresidents()
            try self.showCities( )
        } catch {
            print("error:", error)
        }
    }
    
    func testExtension() {
        self.performSegue(segueId: .pickFavoriteFood)
        UserDefaults.standard.favorite_food = "123"
    }

    func showStates() throws {
        guard let states = try StateDataSource().data else { return }
        for state in states {
            print("👻", state.key)
            print(state.value)
        }
    }

    func showNames() throws {
        guard let names = try SortedNameDataSource().data else { return }
        for name in names {
            print("👻", name.key)
            print(name.value)
        }
    }
    
    func showPresidents() throws {
        guard let presidents = try PresidentDataSource().data else { return }
        for president in presidents {
            print("👻", president)
        }
    }
    
    func showCities() throws {
        guard let cities = try CityDataSource().data else { return }
        for city in cities {
            print("👻", city)
        }
        self.cities = cities
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let name = self.cities[indexPath.row]["Image"]!
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_id", for: indexPath)
        cell.imageView?.image = ModuleBundle.getImage(name: name)
        return cell
    }
}

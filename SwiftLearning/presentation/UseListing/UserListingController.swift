import UIKit

class UserCell : UITableViewCell{
    
    @IBOutlet weak var userName: UILabel!
}

class UserListingController : UITableViewController{
    
    struct Country {
        var isoCode: String
        var name: String
    }
    
    let activityIndicatorView = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.medium)
        
    var userData : [Datum] = []
    
    override func viewDidLoad() {
        intiateView()
        loadUsers()
    }
    
    func loadUsers(){
        self.activityIndicatorView.startAnimating()
        fetchFilmData(){
            response in
            print(response)
            self.userData = response.data
            self.activityIndicatorView.stopAnimating()
            self.tableView.reloadData()
        }
    }
    
    func intiateView(){
        tableView.backgroundView = activityIndicatorView
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return userData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AuteurTableViewCell", for: indexPath) as! AuteurTableViewCell

        let user = userData[indexPath.row]
        print("\(indexPath.row) + \(indexPath.row % 2 == 0)")
        let extraTextToAdd = indexPath.row % 2 == 0 ? "hello world how are you i am king john , you should live in this world peacefully hello world how are you i am king john ," : ""
        cell.bioLabel?.text = user.firstName + user.lastName  + extraTextToAdd

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("row: \(userData[indexPath.row])")
    }
}

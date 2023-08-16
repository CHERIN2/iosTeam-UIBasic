
import UIKit

class MainView: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MainView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.rowHeight = 50
        return UITableView.automaticDimension
      
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        UserList.dummyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainCell
        let list = UserList.dummyList[indexPath.row]
        cell.userNickname?.text = list.userNickname
        cell.profile?.image = list.userProfileImg
        cell.content?.text = list.content
        cell.contentImg?.image = list.contentImg
        return cell
    }
    
    
    
}

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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        mainTableView.deselectRow(at: indexPath, animated: true)
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
        cell.contentImg?.image = resizeImage(image: list.contentImg, width: 280)
        return cell
    }
}

extension MainView {
    func resizeImage(image: UIImage?, width: CGFloat) -> UIImage? {
        guard let image = image else {
            return nil
        }
    let scale = width / image.size.width
    let height = image.size.height * scale
    UIGraphicsBeginImageContext(CGSize(width: width, height: height))
    image.draw(in: CGRect(x: 0, y: 0, width: width, height: height))
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return newImage!
    }
}

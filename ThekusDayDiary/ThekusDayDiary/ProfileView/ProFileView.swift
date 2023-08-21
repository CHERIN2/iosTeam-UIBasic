import UIKit

class ProFileView: UIViewController {
    
    @IBOutlet weak var profileId: UILabel!
    @IBOutlet weak var profileActionGroupName: UILabel!
    @IBOutlet weak var profileTag: UILabel!
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var profileEditButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let profileId = profileId
        profileId?.text = "cherin"
        profileId?.textColor = .black
        profileId?.sizeToFit()
        profileId?.textAlignment = .center
        
        let profileActionGroupName = profileActionGroupName
        profileActionGroupName?.text = "이쿠조"
        profileActionGroupName?.textColor = .black
        profileActionGroupName?.sizeToFit()
        
        let profileTag = profileTag
        profileTag?.text = "로맨스 / 학원물"
        profileTag?.textColor = .black
        profileTag?.sizeToFit()
        
        let profileImg = profileImg
        profileImg?.image = UIImage(named: "profile1")
        profileImg?.layer.cornerRadius = 20
        profileImg?.layer.borderWidth = 0.5
        profileImg?.layer.borderColor = UIColor.gray.cgColor
        
        let profileEditButton = profileEditButton
        profileEditButton?.layer.cornerRadius = 15
        profileEditButton?.tintColor = .black
        profileEditButton?.backgroundColor = .white
        profileEditButton?.layer.borderWidth = 0.5
        profileEditButton?.layer.borderColor = UIColor.lightGray.cgColor
        profileEditButton?.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
    }
}

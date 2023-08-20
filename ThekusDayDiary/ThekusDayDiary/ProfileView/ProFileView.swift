import UIKit

class ProFileView: UIViewController {
    
    @IBOutlet weak var profileId: UILabel!
    @IBOutlet weak var profileActionGroupName: UILabel!
    @IBOutlet weak var profileTag: UILabel!
    @IBOutlet weak var profileImg: UIImageView!
    
}

extension ProFileView {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let profileId = profileId
        profileId?.text = "cheriiin____"
        profileId?.textColor = .systemGray2
        
        let profileActionGroupName = profileActionGroupName
        profileActionGroupName?.text = "이쿠조"
        profileActionGroupName?.textColor = .black
        
        let profileTag = profileTag
        profileTag?.text = "로맨스 / 학원물"
        profileTag?.textColor = .systemGray3
        
        let profileImg = profileImg
        profileImg?.image = UIImage(named: "profile1")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

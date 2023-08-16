
import UIKit

class MainCell: UITableViewCell {
    
    static let identifier = "MainCell"
    
    @IBOutlet weak var profile: UIImageView!
    @IBOutlet weak var userNickname: UILabel!
    @IBOutlet weak var content: UILabel!
    @IBOutlet weak var contentImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profile.layer.cornerRadius = 30
        profile.layer.borderColor = UIColor.purple.cgColor
        profile.layer.borderWidth = 3
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

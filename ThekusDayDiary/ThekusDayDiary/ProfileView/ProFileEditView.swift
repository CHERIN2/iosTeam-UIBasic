import UIKit

class ProFileEditView: UIViewController {
    
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var profileEditImg: UIImageView!
    @IBOutlet weak var idEdit: UILabel!
    @IBOutlet weak var idfield: UITextField!
    @IBOutlet weak var actionNameEdit: UILabel!
    @IBOutlet weak var actionNameField: UITextField!
    @IBOutlet weak var tagEdit: UILabel!
    @IBOutlet weak var tagField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let profileView = profileView
        profileView?.backgroundColor = .white
        profileView?.layer.borderWidth = 0.5
        profileView?.layer.borderColor = UIColor.gray.cgColor
        profileView?.layer.cornerRadius = 10
        
        let profileEditImg = profileEditImg
        profileEditImg?.image = UIImage(named: "profile1")
        
        let idEdit = idEdit
        idEdit?.text = "아이디"
        idEdit?.textColor = .black
        idEdit?.sizeToFit()
        
        let idfield = idfield
        idfield?.placeholder = "아이디를 입력해주세요."
        idfield?.layer.backgroundColor = UIColor.clear.cgColor
        
        let actionNameEdit = actionNameEdit
        actionNameEdit?.text = "활동명"
        actionNameEdit?.textColor = .black
        actionNameEdit?.sizeToFit()
        
        let actionNamefield = actionNameField
        actionNamefield?.placeholder = "활동명을 입력해주세요"
        actionNamefield?.layer.backgroundColor = UIColor.clear.cgColor
        
        let tagEdit = tagEdit
        tagEdit?.text = "태그"
        tagEdit?.textColor = .black
        tagEdit?.sizeToFit()
        
        let tagfield = tagField
        tagfield?.placeholder = "태그를 입력해주세요"
        tagfield?.layer.backgroundColor = UIColor.clear.cgColor
        
    }
}

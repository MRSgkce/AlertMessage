import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sifre2: UITextField!
    @IBOutlet weak var sifre: UITextField!
    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpTiklandi(_ sender: Any) {
        let uyariMesaji = UIAlertController(title: "Hata Mesajı", message: "Email yanlış verildi", preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default) { action in
            // OK butonuna tıklanınca olacaklar
            print("OK butonuna tıklandı")
        }
        
        uyariMesaji.addAction(okButton)
        self.present(uyariMesaji, animated: true, completion: nil)
    }
}

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
        
        // Email kontrolü
        if email.text == "" {
            mesaj(title: "Hata", mesaj: "Email boş olamaz")
            return
        }
        
        // Şifre kontrolü
       else if sifre.text == "" {
            mesaj(title: "Hata", mesaj: "Şifre boş olamaz")
            return
        }
        
        // Şifre tekrar kontrolü
        else if  sifre2.text == "" {
            mesaj(title: "Hata", mesaj: "Şifre tekrar boş olamaz")
            return
        }
        
        // Şifrelerin eşitliği kontrolü
        else if sifre.text != sifre2.text {
            mesaj(title: "Hata", mesaj: "Şifreler uyuşmuyor")
        } else {
            // Kayıt başarılı
            mesaj(title: "Tebrikler", mesaj: "Kayıt başarılı")
        }
    }

    func mesaj(title: String, mesaj: String) {
        let uyariMesaji = UIAlertController(title: title, message: mesaj, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default) { action in
            // OK butonuna tıklanınca olacaklar
            print("OK butonuna tıklandı")
        }
        
        uyariMesaji.addAction(okButton)
        self.present(uyariMesaji, animated: true, completion: nil)
    }
}


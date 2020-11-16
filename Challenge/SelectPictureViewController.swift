//
//  SelectPictureViewController.swift
//  Challenge
//
//  Created by Abdallah Gueye on 16/11/2020.
//

import UIKit

class SelectPictureViewController: UIViewController {

    @IBOutlet weak var SelectedImage: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func selectButtonPressed(_ sender: UIButton) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
    }
}
    
    extension SelectPictureViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if  let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage{
                SelectedImage.image = image
            }
            
            picker.dismiss(animated: true, completion: nil)

        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true, completion: nil)
        }
        
    }
    

   



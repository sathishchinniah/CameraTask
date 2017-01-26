//
//  ViewController.swift
//  CameraTask
//
//  Created by Sathish Chinniah on 26/01/17.
//  Copyright © 2017 Sathish chinniah. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate  {
    
     var imagePicker: UIImagePickerController!

    @IBOutlet weak var imagevView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func ChooseImage(_ sender: AnyObject) {
    
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
       imagePicker.allowsEditing = true
       imagevView.contentMode = .scaleAspectFill

        
        present(imagePicker, animated: true, completion: nil)
    
    }
  
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        imagevView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        imagevView.image = info[UIImagePickerControllerEditedImage] as! UIImage?
        
      
    }
    
    

}


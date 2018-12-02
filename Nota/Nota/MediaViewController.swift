//
//  MediaViewController.swift
//  Aluno
//
//  Created by Vicki Liou on 11/26/18.
//  Copyright © 2018 Vicki Liou. All rights reserved.
//

import UIKit

class MediaViewController: UIViewController {

    @IBOutlet weak var txtAluno: UITextField!
    var textoAluno: String = ""
    
    @IBOutlet weak var txtPs1: UITextField!
    @IBOutlet weak var txtPs2: UITextField!
    @IBOutlet weak var txtMedia: UITextField!
    @IBOutlet weak var lblNota: UILabel!
    
    @IBAction func slider1ValueChanged(_ sender: UISlider) {
        txtPs1.text = String(format: "%.1f", sender.value)
    }
    
    @IBAction func slider2ValueChanged(_ sender: UISlider) {
        txtPs2.text = String(format: "%.1f", sender.value)
    }
    
    @IBAction func calcular(_ sender: Any) {
        let m:Media = Media()
        m.ps1 = Float(txtPs1.text!)
        m.ps2 = Float(txtPs2.text!)
        m.calcularMedia()
        txtMedia.text = String(format: "%.1f", m.media)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtAluno.text = textoAluno
        lblNota.text = ""

    }
    
    
    @IBAction func escolherNota(_ sender: Any) {
        let alerta = UIAlertController(
            title: "Forma para receber a nota",
            message: "Faça sua escolha",
            preferredStyle: UIAlertController.Style.actionSheet)
        
        alerta.addAction(UIAlertAction(
            title: "SMS",
            style: UIAlertAction.Style.default,
            handler: {action in
                self.lblNota.text = action.title}))
        
        alerta.addAction(UIAlertAction(
            title: "E-mail",
            style: UIAlertAction.Style.default,
            handler: {action in
                self.lblNota.text = action.title}))
        
        alerta.addAction(UIAlertAction(
            title: "Cancelar",
            style: UIAlertAction.Style.cancel,
            handler: nil))
        
        present(alerta, animated: true, completion: nil)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
    }
    */
    

}

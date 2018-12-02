//
//  AlunoViewController.swift
//  Aluno
//
//  Created by Vicki Liou on 11/26/18.
//  Copyright © 2018 Vicki Liou. All rights reserved.
//

import UIKit

class AlunoViewController: UIViewController {

    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var lblIdade: UILabel!
    @IBOutlet weak var meuStepper: UIStepper!
    @IBOutlet weak var txtCurso: UITextField!
    @IBOutlet weak var meuSegmento: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblIdade.text = ""
        txtCurso.text = "Desenvolvimento de Sistemas"
    }
    
    @IBAction func indexChanged(_ sender: Any) {
        switch (meuSegmento.selectedSegmentIndex) {
        case 0:
            print("Você escolheu o \(meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!)")
            break
        case 1:
            print("Você escolheu o \(meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!)")
            break
        default:
            break
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: Any) {
        lblIdade.text = "\(Int(meuStepper.value))"
    }
    
    @IBAction func telaMedia(_ sender: Any) {
        performSegue(withIdentifier: "alunoParaMedia", sender: nil)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "alunoParaMedia" {
            let t = segue.destination as! MediaViewController
            t.textoAluno = txtNome.text!
            
        }
    }
    
    @IBAction func resetarNavegacao(segue:UIStoryboardSegue) {
        
    }
    

}

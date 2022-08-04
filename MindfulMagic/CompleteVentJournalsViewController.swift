
//
//  CompleteVentJournalViewController.swift
//  VentingJournal
//
//  Created by scholar on 8/2/22.
//

import UIKit

class CompleteVentJournalsViewController: UIViewController {
    var previousVC = VentingJournalTableViewController()
    var selectedVent : VentingJournalCD?

    @IBOutlet weak var journalBody: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedVent?.ventName
        journalBody.text = selectedVent?.ventText
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func completeTapped(_ sender: Any) {
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let theVentingJournal = selectedVent {
              context.delete(theVentingJournal)
            try? context.save()
              navigationController?.popViewController(animated: true)
            }
          }
        
        
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

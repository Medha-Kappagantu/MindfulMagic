
//
//  AddVentJournalViewController)ViewController.swift
//  VentingJournal
//
//  Created by scholar on 8/2/22.
//

import UIKit

class AddVentJournalViewController_ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    var previousVC = VentingJournalTableViewController()



    override func viewDidLoad() {

    super.viewDidLoad()

    // Uncomment the following line to preserve selection between presentations

    // self.clearsSelectionOnViewWillAppear = false

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.

    // self.navigationItem.rightBarButtonItem = self.editButtonItem

    }

    

    let vent = VentingJournal()

  
    @IBAction func addVent(_ sender: Any) {

        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

            // we are creating a new ToDoCD object here, naming it toDo
            let vent = VentingJournalCD(entity: VentingJournalCD.entity(), insertInto: context)
            if let titleText = textField.text , let titleView = textView.text{

                vent.ventName = titleText

                vent.ventText = titleView
        

            }
        
        try? context.save()
        
        navigationController?.popViewController(animated: true)
        }
    }
    

    

    

}


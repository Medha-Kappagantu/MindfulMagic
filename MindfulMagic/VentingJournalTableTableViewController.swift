
//
//  VentingJournalTableViewController.swift
//  VentingJournal
//
//  Created by scholar on 8/1/22.
//

import UIKit

class VentingJournalTableViewController: UITableViewController {
    var ventingJournals : [VentingJournalCD] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func getVentingJournals() {
      if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

        if let coreDataVentingJournals = try? context.fetch(VentingJournalCD.fetchRequest()) as? [VentingJournalCD] {
                ventingJournals = coreDataVentingJournals
                tableView.reloadData()
        }
      }
    }
    
    override func viewWillAppear(_ animated: Bool) {
      getVentingJournals()
    }
    
    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ventingJournals.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let ventJournal = ventingJournals[indexPath.row]
        
        cell.textLabel?.text = ventJournal.ventName

        // Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

      // this gives us a single ToDo
      let vent = ventingJournals[indexPath.row]

      performSegue(withIdentifier: "moveToComplete", sender: vent)
    }
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddVentJournalViewController_ViewController {
            addVC.previousVC = self
          }
        if let completeVC = segue.destination as? CompleteVentJournalsViewController {
            if let vent = sender as? VentingJournalCD {
              completeVC.selectedVent = vent
              completeVC.previousVC = self
            }
    }
    

}
}

//
//  tableone.swift
//  SingnUPapp
//
//  Created by SeongWookLim on 2022/05/12.
//

import UIKit

class tableoneController:UIViewController
{
    
    @IBOutlet var tableones: UITableView!
    var titleone=["apple","banana","carrot"]
    
    override func viewDidLoad() {
        
    }
    @IBAction func btnadd(_ sender: Any) {
        
        let alert = UIAlertController(title: "할일목록을 설정해주세요", message: "추가", preferredStyle: .alert)
        alert.addTextField{textField in
            textField.placeholder = "목록을 적어주세요"
        }
        alert.addAction(UIAlertAction(title: "확인", style: .default, handler: { _ in
                   guard let text = alert.textFields?[0].text else { return }
                   if text != "" {
                       self.titleone.append(text)
                       self.tableones.reloadData()
                      
                   }
               }))
        alert.addAction(UIAlertAction(title: "취소", style: .cancel,handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
extension tableoneController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleone.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! customcell
        cell.title1.text = titleone[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

            if editingStyle == .delete {

                // remove the item from the data model
                titleone.remove(at: indexPath.row)

                // delete the table view row
                tableView.deleteRows(at: [indexPath], with: .fade)

            }
        
    }
  }

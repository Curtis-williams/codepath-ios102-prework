import UIKit

class ViewController: UIViewController {

// 1. Text Fields
@IBOutlet weak var firstNameTextField: UITextField!
@IBOutlet weak var lastNameTextField: UITextField!
@IBOutlet weak var schoolNameTextField: UITextField!

// 2. Year Segmented Control
@IBOutlet weak var yearSegmentedControl: UISegmentedControl!

// 3. Pet Interface Outlets
@IBOutlet weak var numberOfPetsLabel: UILabel!
@IBOutlet weak var morePetsStepper: UIStepper!
@IBOutlet weak var morePetsSwitch: UISwitch!

override func viewDidLoad() {
super.viewDidLoad()
}

// 4. Action: Updates label when stepper changes (Matches screenshot name)
@IBAction func stepperDidChange(_ sender: UIStepper) {
numberOfPetsLabel.text = "\(Int(sender.value))"
}

// 5. Action: Fired when "Introduce Self" is tapped (Matches screenshot name)
@IBAction func introduceSelfDidTapped(_ sender: UIButton) {

let firstName = firstNameTextField.text ?? ""
let lastName = lastNameTextField.text ?? ""
let schoolName = schoolNameTextField.text ?? ""

let selectedIndex = yearSegmentedControl.selectedSegmentIndex
let schoolYear = yearSegmentedControl.titleForSegment(at: selectedIndex) ?? "First"

let wantsMorePets = morePetsSwitch.isOn
let petSummary = "I have \(numberOfPetsLabel.text ?? "0") pets and it is \(wantsMorePets) that I want more pets."

let introduction = "Hello! My name is \(firstName) \(lastName) and I attend \(schoolName). I am currently in my \(schoolYear) year and \(petSummary)"

// Creates the popup box
let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
let dismissAction = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
alertController.addAction(dismissAction)

present(alertController, animated: true, completion: nil)
}
}

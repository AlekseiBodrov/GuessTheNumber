import UIKit

final class StartViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var startGameButton: UIButton!
    @IBOutlet weak var nameOfGameLabel: UILabel!

    //MARK: - life cycle funcs
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        Manager.setDefaultProperties()
    }

    //MARK: - IBAction
    @IBAction func startButtonPressed(_ sender: UIButton) {
        presentViewController()
    }

    //MARK: - flow funcs
    private func configure() {
        nameOfGameLabel.textAlignment = .center
    }

    private func presentViewController() {
        guard let controller = self.storyboard?.instantiateViewController(withIdentifier: "PickANumberViewController") as? PickANumberViewController else { return }
        self.navigationController?.pushViewController(controller, animated: false)
    }
}

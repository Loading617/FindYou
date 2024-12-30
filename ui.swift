import UIKit

class HomeViewController: UIViewController {
    let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        // Add Card View
        cardView.frame = CGRect(x: 50, y: 100, width: 300, height: 400)
        view.addSubview(cardView)

        // Add Swipe Gestures
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture(_:)))
        cardView.addGestureRecognizer(panGesture)
    }

    @objc func handlePanGesture(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: view)
        cardView.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)

        if gesture.state == .ended {
            if translation.x > 100 {
                print("Liked")
            } else if translation.x < -100 {
                print("Disliked")
            }
            // Reset position
            UIView.animate(withDuration: 0.3) {
                self.cardView.center = self.view.center
            }
        }
    }
}

import Foundation

class FPNCountryView: NibLoadingView {
	@IBOutlet weak var flagImageView: UIImageView!
	@IBOutlet weak var countryNameLabel: UILabel!
	@IBOutlet weak var countryCodeLabel: UILabel!

  init() {
		super.init(frame: .zero)
	}

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

	func setup(_ country: FPNCountry) {
		flagImageView.image = country.flag
		countryCodeLabel.text = country.phoneCode
		countryNameLabel.text = country.name
	}
}

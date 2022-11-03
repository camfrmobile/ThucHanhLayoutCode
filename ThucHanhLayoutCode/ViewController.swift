//
//  ViewController.swift
//  ThucHanhLayoutCode
//
//  Created by Trần Văn Cam on 01/11/2022.
//

import UIKit

class ViewController: UIViewController {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    } ()
    
    let topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.8877872825, green: 0.9226996899, blue: 0.8789377809, alpha: 1)
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    } ()
    
    let middleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    } ()
    
    let bottomView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    } ()
    
    let cricleViewLeft: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.clipsToBounds = true
        return view
    } ()
    
    let cricleViewRight: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.clipsToBounds = true
        return view
    } ()
    
    let chevronImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "chevron.left")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.tintColor = .black
        return image
    } ()
    
    let amongImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "platter.filled.top.iphone")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.tintColor = .black
        return image
    } ()
    
    let centerImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "dam_sen")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 20
        return image
    } ()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Little Fires Everywhere"
        label.font = .systemFont(ofSize: 24, weight: .bold)
        return label
    } ()
    
    let authorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "By John J.Gobbell"
        label.font = .systemFont(ofSize: 16)
        label.textColor = .gray
        return label
    } ()
    
    let starStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 5
        return stack
    } ()
    let starImageView1: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "star.fill")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.tintColor = #colorLiteral(red: 0.9835800529, green: 0.7309045196, blue: 0.01017739158, alpha: 1)
        return image
    } ()
    let starImageView2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "star.fill")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.tintColor = #colorLiteral(red: 0.9835800529, green: 0.7309045196, blue: 0.01017739158, alpha: 1)
        return image
    } ()
    let starImageView3: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "star.fill")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.tintColor = #colorLiteral(red: 0.9835800529, green: 0.7309045196, blue: 0.01017739158, alpha: 1)
        return image
    } ()
    let starImageView4: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "star.fill")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.tintColor = #colorLiteral(red: 0.9835800529, green: 0.7309045196, blue: 0.01017739158, alpha: 1)
        return image
    } ()
    let starImageView5: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "star.fill")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.tintColor = #colorLiteral(red: 0.8788430691, green: 0.8540632129, blue: 0.8329311013, alpha: 1)
        return image
    } ()
    
    let titleDescLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Description"
        label.font = .systemFont(ofSize: 18, weight: .bold)
        return label
    } ()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "$25.00"
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = #colorLiteral(red: 0.0633898899, green: 0.3862949014, blue: 0.3315677941, alpha: 1);
        return label
    } ()
    
    let inforLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Little Fires Everywhere explores the weight of secrets, the nature of art and identity, and the ferocious pull of motherhood - and the danger of believing that following the nature of art and identity, and the ferocious pull of motherhood"
        label.font = .systemFont(ofSize: 15)
        label.textColor = .gray
        label.numberOfLines = 4
        label.alpha = 0.9
        return label
    } ()
    
    let qtyView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.9032074809, green: 0.9181378484, blue: 0.9135693908, alpha: 1)
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    } ()
    let qtyLeftView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    } ()
    
    let qtyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "QTY"
        label.font = .systemFont(ofSize: 16)
        label.textColor = .black;
        return label
    } ()
    
    let buyView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.0633898899, green: 0.3862949014, blue: 0.3315677941, alpha: 1);
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    } ()
    
    let buyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Buy Now"
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .white;
        return label
    } ()
    
    let qtyStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 10
        return stack
    } ()
    
    let minusView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    } ()
    let plusView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    } ()
    
    let minusImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "minus")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.tintColor = .gray
        return image
    } ()
    
    let numberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1"
        label.textColor = #colorLiteral(red: 0.0633898899, green: 0.3862949014, blue: 0.3315677941, alpha: 1);
        label.textAlignment = .center
        return label
    } ()
    
    let plusImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "plus")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.tintColor = .gray
        return image
    } ()
    
    let qtyRightView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray;
        view.alpha = 0.2
        return view
    } ()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
        setupLayout()
        setupGesture()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        cricleViewLeft.layer.cornerRadius = cricleViewLeft.bounds.width / 2
        cricleViewRight.layer.cornerRadius = cricleViewRight.bounds.width / 2
    }

    func setupUI() {
        view.addSubview(containerView)
        
        containerView.addSubview(topView)
        containerView.addSubview(middleView)
        containerView.addSubview(bottomView)
        
        topView.addSubview(cricleViewLeft)
        topView.addSubview(cricleViewRight)
        topView.addSubview(centerImageView)
        topView.addSubview(titleLabel)
        topView.addSubview(authorLabel)
        topView.addSubview(starStackView)
        
        cricleViewLeft.addSubview(chevronImageView)
        cricleViewRight.addSubview(amongImageView)
        
        starStackView.addArrangedSubview(starImageView1)
        starStackView.addArrangedSubview(starImageView2)
        starStackView.addArrangedSubview(starImageView3)
        starStackView.addArrangedSubview(starImageView4)
        starStackView.addArrangedSubview(starImageView5)
        
        middleView.addSubview(titleDescLabel)
        middleView.addSubview(priceLabel)
        middleView.addSubview(inforLabel)
        
        bottomView.addSubview(qtyView)
        bottomView.addSubview(buyView)
        
        buyView.addSubview(buyLabel)
        qtyView.addSubview(qtyLeftView)
        qtyView.addSubview(qtyStackView)
        
        qtyLeftView.addSubview(qtyLabel)
        qtyLeftView.addSubview(qtyRightView)
        
        qtyStackView.addArrangedSubview(minusView)
        qtyStackView.addArrangedSubview(numberLabel)
        qtyStackView.addArrangedSubview(plusView)
        
        minusView.addSubview(minusImageView)
        plusView.addSubview(plusImageView)
        
    }
    
    func setupLayout() {
        containerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        topView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
        topView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        topView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        topView.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 6/10).isActive = true
        
        middleView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 20).isActive = true
        middleView.leadingAnchor.constraint(equalTo: topView.leadingAnchor).isActive = true
        middleView.trailingAnchor.constraint(equalTo: topView.trailingAnchor).isActive = true
        
        bottomView.topAnchor.constraint(equalTo: middleView.bottomAnchor, constant: 20).isActive = true
        bottomView.leadingAnchor.constraint(equalTo: middleView.leadingAnchor).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: middleView.trailingAnchor).isActive = true
        bottomView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -5).isActive = true
        bottomView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        cricleViewLeft.topAnchor.constraint(equalTo: topView.topAnchor, constant: 20).isActive = true
        cricleViewLeft.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20).isActive = true
        cricleViewLeft.widthAnchor.constraint(equalToConstant: 40).isActive = true
        cricleViewLeft.heightAnchor.constraint(equalTo: cricleViewLeft.widthAnchor, multiplier: 1).isActive = true
        
        cricleViewRight.topAnchor.constraint(equalTo: topView.topAnchor, constant: 20).isActive = true
        cricleViewRight.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -20).isActive = true
        cricleViewRight.widthAnchor.constraint(equalToConstant: 40).isActive = true
        cricleViewRight.heightAnchor.constraint(equalTo: cricleViewRight.widthAnchor, multiplier: 1).isActive = true
        
        chevronImageView.centerXAnchor.constraint(equalTo: cricleViewLeft.centerXAnchor).isActive = true
        chevronImageView.centerYAnchor.constraint(equalTo: cricleViewLeft.centerYAnchor).isActive = true
        chevronImageView.widthAnchor.constraint(equalTo: cricleViewLeft.widthAnchor, multiplier: 0.5).isActive = true
        chevronImageView.heightAnchor.constraint(equalTo: cricleViewLeft.heightAnchor, multiplier: 0.5).isActive = true
        
        amongImageView.centerXAnchor.constraint(equalTo: cricleViewRight.centerXAnchor).isActive = true
        amongImageView.centerYAnchor.constraint(equalTo: cricleViewRight.centerYAnchor).isActive = true
        amongImageView.widthAnchor.constraint(equalTo: cricleViewRight.widthAnchor, multiplier: 0.5).isActive = true
        amongImageView.heightAnchor.constraint(equalTo: cricleViewRight.heightAnchor, multiplier: 0.5).isActive = true
        
        centerImageView.centerXAnchor.constraint(equalTo: topView.centerXAnchor).isActive = true
        centerImageView.widthAnchor.constraint(equalTo: topView.widthAnchor, multiplier: 0.6).isActive = true
        centerImageView.heightAnchor.constraint(equalTo: topView.heightAnchor, multiplier: 0.6).isActive = true
        centerImageView.topAnchor.constraint(equalTo: cricleViewLeft.bottomAnchor, constant: 10).isActive = true
        
        titleLabel.topAnchor.constraint(equalTo: centerImageView.bottomAnchor, constant: 20).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor).isActive = true
        
        authorLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        authorLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor).isActive = true
        
        starStackView.topAnchor.constraint(equalTo: authorLabel.bottomAnchor, constant: 10).isActive = true
        starStackView.centerXAnchor.constraint(equalTo: topView.centerXAnchor).isActive = true
        
        starImageView1.widthAnchor.constraint(equalToConstant: 16).isActive = true
        
        // middle view
        titleDescLabel.topAnchor.constraint(equalTo: middleView.topAnchor, constant: 0).isActive = true
        titleDescLabel.leadingAnchor.constraint(equalTo: middleView.leadingAnchor, constant: 0).isActive = true
        
        priceLabel.topAnchor.constraint(equalTo: middleView.topAnchor, constant: 0).isActive = true
        priceLabel.trailingAnchor.constraint(equalTo: middleView.trailingAnchor, constant: 0).isActive = true
        
        inforLabel.topAnchor.constraint(equalTo: titleDescLabel.topAnchor, constant: 40).isActive = true
        inforLabel.leadingAnchor.constraint(equalTo: middleView.leadingAnchor, constant: 0).isActive = true
        inforLabel.trailingAnchor.constraint(equalTo: middleView.trailingAnchor, constant: 0).isActive = true
        
        // bottom view
        qtyView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 0).isActive = true
        qtyView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 0).isActive = true
        qtyView.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: 0).isActive = true
        qtyView.widthAnchor.constraint(equalTo: bottomView.widthAnchor, multiplier: 0.6).isActive = true
        
        buyView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 0).isActive = true
        buyView.leadingAnchor.constraint(equalTo: qtyView.trailingAnchor, constant: 10).isActive = true
        buyView.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: 0).isActive = true
        buyView.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: 0).isActive = true
        
        buyLabel.centerXAnchor.constraint(equalTo: buyView.centerXAnchor, constant: 0).isActive = true
        buyLabel.centerYAnchor.constraint(equalTo: buyView.centerYAnchor, constant: 0).isActive = true
        
        qtyLeftView.topAnchor.constraint(equalTo: qtyView.topAnchor, constant: 0).isActive = true
        qtyLeftView.leadingAnchor.constraint(equalTo: qtyView.leadingAnchor, constant: 0).isActive = true
        qtyLeftView.bottomAnchor.constraint(equalTo: qtyView.bottomAnchor, constant: 0).isActive = true
        qtyLeftView.widthAnchor.constraint(equalTo: qtyView.widthAnchor, multiplier: 1/3).isActive = true
        
        qtyStackView.topAnchor.constraint(equalTo: qtyView.topAnchor, constant: 0).isActive = true
        qtyStackView.leadingAnchor.constraint(equalTo: qtyLeftView.trailingAnchor, constant: 0).isActive = true
        qtyStackView.trailingAnchor.constraint(equalTo: qtyView.trailingAnchor, constant: 0).isActive = true
        qtyStackView.bottomAnchor.constraint(equalTo: qtyView.bottomAnchor, constant: 0).isActive = true
        
        qtyLabel.centerYAnchor.constraint(equalTo: qtyLeftView.centerYAnchor, constant: 0).isActive = true
        qtyLabel.centerXAnchor.constraint(equalTo: qtyLeftView.centerXAnchor, constant: 0).isActive = true
        
        qtyRightView.topAnchor.constraint(equalTo: qtyLeftView.topAnchor, constant: 20).isActive = true
        qtyRightView.trailingAnchor.constraint(equalTo: qtyLeftView.trailingAnchor, constant: 0).isActive = true
        qtyRightView.bottomAnchor.constraint(equalTo: qtyLeftView.bottomAnchor, constant: -20).isActive = true
        qtyRightView.widthAnchor.constraint(equalToConstant: 1).isActive = true
        
        minusImageView.trailingAnchor.constraint(equalTo: minusView.trailingAnchor, constant: 0).isActive = true
        minusImageView.centerYAnchor.constraint(equalTo: minusView.centerYAnchor, constant: 0).isActive = true
        
        plusImageView.centerYAnchor.constraint(equalTo: plusView.centerYAnchor, constant: 0).isActive = true
        plusImageView.leadingAnchor.constraint(equalTo: plusView.leadingAnchor, constant: 0).isActive = true
    }

    func setupGesture() {
        minusView.isUserInteractionEnabled = true
        let tapGestureMinus = UITapGestureRecognizer(target: self, action: #selector(actionTapMinusImage))
        minusView.addGestureRecognizer(tapGestureMinus)
        
        plusView.isUserInteractionEnabled = true
        let tapGesturePlus = UITapGestureRecognizer(target: self, action: #selector(actionTapPlusImage))
        plusView.addGestureRecognizer(tapGesturePlus)
    }
    
    @objc func actionTapMinusImage() {
        var qty = Int(numberLabel.text ?? "") ?? 1
        if qty >= 1 {
            minusView.alpha = 1
            plusView.alpha = 1
        }
        if qty <= 1 {
            minusView.alpha = 0.3
            return
        }
        qty -= 1
        numberLabel.text = "\(qty)"
    }
    @objc func actionTapPlusImage() {
        var qty = Int(numberLabel.text ?? "") ?? 1
        if qty >= 1 {
            minusView.alpha = 1
            plusView.alpha = 1
        }
        if qty >= 10 {
            plusView.alpha = 0.3
            return
        }
        qty += 1
        numberLabel.text = "\(qty)"
    }
}


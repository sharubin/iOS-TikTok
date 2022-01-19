//
//  ViewController.swift
//  TikTok
//
//  Created by Artsem Sharubin on 19.01.2022.
//
import SnapKit
import UIKit

class ViewController: UIViewController {
    
    let btnLike: UIButton = {
        let btnLike = UIButton(type: .system)
        btnLike.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        btnLike.setImage(UIImage(systemName: "heart.fill"), for: .selected)
        return btnLike
    }()
    
    let labelCounter: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .white
       return label
    }()
    
    @objc func buttonLikeTapped() {
        counter += 1
        labelCounter.text = String(counter)
    }
    
    private var counter = 0
    private var tableView = UITableView()
    
    private var videoLinks: [String] = [
        
        "https://dl112.y2mate.com/?file=M3R4SUNiN3JsOHJ6WWQ2a3NQS1Y5ZGlxVlZIOCtyZ3duY1l1K0VSN1Vic0NxNTE3a2VLcEw4eHdQcVlieGRmblEvaE4raXZNWk5LT2RWMnZ1NGh5QnlHbjlKTnZueGlZbzRrUGF0dEhVRERWcExMN3hpRTRoQmVoT04vSUd1VjBWREYrdTFCcXdTT0h4ZnpSNUVTdTV5Lzc5Um5TUDNOTW9USVJPS2lCb2NZY2dEdWFLZVR5anBRSCt3PT0%3D",
        
        "https://rr2---sn-3c27sn7k.googlevideo.com/videoplayback?expire=1642645005&ei=rXHoYd73BpTs7gTlgrLoDQ&ip=156.146.50.142&id=o-AAfyzWPfB0DpG10Wiv0VsGUnG20hvlZ2H_If7agyvoXj&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=-wvZFTdSdsyLS22mG6hrfnEG&cnr=14&ratebypass=yes&dur=71.169&lmt=1634613220817950&fexp=24001373,24007246&c=WEB&txp=2210224&n=UZKgXznAM7azkA&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgLWbAeJljuf6QnpmcGP3xOdV7LuaIINIK6-nOniRNGo0CIEkRJuM-BIz244L8CK74hYXdc0sEmbSH-FkIFeWY7ped&redirect_counter=1&rm=sn-quxapm-3c2l7l&req_id=fb91358fcfeda3ee&cms_redirect=yes&ipbypass=yes&mh=if&mm=29&mn=sn-3c27sn7k&ms=rdu&mt=1642623185&mv=m&mvi=2&pl=24&lsparams=ipbypass,mh,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgNl135DTMkBqiXBABox59lC5V_7w8RsotBZqzAcJbkwoCIFEM6z4-pc6h4ciO-Ie8DM6kDVvkfvqgyxZ49h7Sik2z",
        
                                        
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        configureTableView()
        configureBottomStackView()
        configureButtonLike()
        btnLike.addTarget(self, action: #selector(buttonLikeTapped), for: .touchUpInside)
    }
    
}

 
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        videoLinks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        VideoTableViewCell(link: videoLinks[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            UIScreen.main.bounds.height
    }
}

extension ViewController {
    
    
    
    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isPagingEnabled = true
        tableView.showsVerticalScrollIndicator = false
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
    }
    
    private func configureButtonLike() {
        let stackView = UIStackView()
        stackView.axis = .vertical
        view.addSubview(stackView)

        stackView.addArrangedSubview(btnLike)
        stackView.addArrangedSubview(labelCounter)
        
        stackView.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(200)
            maker.right.equalToSuperview().inset(15)
            maker.height.equalTo(60)
        }
        
    }
    
    
    
    private func configureBottomStackView() {
        
        let blackView = UIView()
        blackView.backgroundColor = .black
        view.addSubview(blackView)
        blackView.snp.makeConstraints { maker in
            maker.bottom.left.right.equalToSuperview()
            maker.height.equalTo(80)
        
        
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        
        let btn1 = UIButton()
        btn1.setImage(UIImage(named: "Home"), for: .normal)
        let btn2 = UIButton()
        btn2.setImage(UIImage(named: "Discover"), for: .normal)
        let btn3 = UIButton()
        btn3.setImage(UIImage(named: "Button Shape"), for: .normal)
        let btn4 = UIButton()
        btn4.setImage(UIImage(named: "Inbox"), for: .normal)
        let btn5 = UIButton()
        btn5.setImage(UIImage(named: "Me"), for: .normal)
        
        stackView.addArrangedSubview(btn1)
        stackView.addArrangedSubview(btn2)
        stackView.addArrangedSubview(btn3)
        stackView.addArrangedSubview(btn4)
        stackView.addArrangedSubview(btn5)
        
        view.addSubview(stackView)
        stackView.snp.makeConstraints { maker in
            maker.left.right.bottom.equalToSuperview().inset(15)
            maker.height.equalTo(60)
        }
    }
}
}

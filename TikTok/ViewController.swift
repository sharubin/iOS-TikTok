//
//  ViewController.swift
//  TikTok
//
//  Created by Artsem Sharubin on 19.01.2022.
//
import SnapKit
import UIKit

class ViewController: UIViewController {

    private var tableView = UITableView()
    
    private var videoLinks: [String] = ["https://rr3---sn-4g5edn6r.googlevideo.com/videoplayback?expire=1642618141&ei=vQjoYdzOKqCK6dsPk66k-AI&ip=42.2.83.143&id=o-AED202eItRhlyUN4wkkMy_-TcpaajR08rAqtydNYMV3V&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=zPXazfYAelMRAQMNqe2qhsUG&gir=yes&clen=2278435&ratebypass=yes&dur=54.334&lmt=1631620307821542&fexp=24001373,24007246&c=WEB&txp=5310224&n=_6FXlQLIcihtiw&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAMrfm9Co47-C_oAoXf_4n1B95xMvAcQrtxFjyycOOvcNAiBlpMTdCHa7Nj9yaPxul5G3UmXQ45Uiar6-u69dEEtOBA%3D%3D&redirect_counter=1&cm2rm=sn-i3bdd7s&req_id=638942000cf1a3ee&cms_redirect=yes&mh=_4&mip=37.214.17.215&mm=34&mn=sn-4g5edn6r&ms=ltu&mt=1642596287&mv=m&mvi=3&pl=23&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRgIhAL2DbolAf3ad1O042ZXu2a839Zop2aFF-4HQQYc_evIVAiEAjIEamGbt-Lw2uW5llAN4u2vgveBYtKD1H3WJa1xhNho%3D",
                                        
        "https://rr2---sn-cxauxaxjvh-hn9l.googlevideo.com/videoplayback?expire=1642607966&ei=_uDnYeuEB8CEvdIPnbmVgA4&ip=216.131.111.34&id=o-AAYs-UVbpHJRQbGtD6ahndqAeVlE2dy2hinyWvFxzJZ7&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=q4UihTvz_Wu0vBUTGI3porcG&cnr=14&ratebypass=yes&dur=81.664&lmt=1635764535157660&fexp=24001373,24007246&c=WEB&txp=1210224&n=6C1g-fwiqWRcLg&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgcN9QEkn9jz-4Co1l1rh6MiTeQLpN6fHp84K9rUil348CIQCAmuwPfTaFDoRM8EgHR_BZ6KUsBMG6lmF1fyif8ez0lg%3D%3D&redirect_counter=1&rm=sn-2gbek7l&req_id=82d8f834b65ba3ee&cms_redirect=yes&ipbypass=yes&mh=dP&mip=37.214.17.215&mm=31&mn=sn-cxauxaxjvh-hn9l&ms=au&mt=1642596301&mv=m&mvi=2&pcm2cms=yes&pl=23&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pcm2cms,pl&lsig=AG3C_xAwRQIgKWmgVDX4ZABrmvc9bAWM66i3aVMl3Muk2pQjmn-OTjgCIQCGsOxGHvJfpa55vjXADambTnRaXi6aPNJdR-PjUwxAXQ%3D%3D",
                
            "https://rr2---sn-4g5ednds.googlevideo.com/videoplayback?expire=1642618427&ei=2wnoYa-8EoKmmLAPqqa0wAU&ip=216.131.111.131&id=o-ALB1MA6lwzqsfypGDelOeyakKxsB25_VcLu801Rn8mEK&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=vCuDFLs-vHmpcr32ahlQaG8G&gir=yes&clen=1360654&ratebypass=yes&dur=30.836&lmt=1577237608768388&fexp=24001373,24007246&c=WEB&txp=1311222&n=-kpyHCxDojWISw&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgQZxv3cieJyzGKrfYeMfnivaCD-YDBxsVAyQxiBmhzZ8CIGxMsjxXph6IkpAH0xVl2yr-VP32VvYMs6PbHmdhHue_&rm=sn-2gber7l&req_id=c82d98a42e39a3ee&ipbypass=yes&cm2rm=sn-cxauxaxjvh-hn9e77l,sn-f5fel7l&redirect_counter=3&cms_redirect=yes&mh=Gg&mip=37.214.17.215&mm=34&mn=sn-4g5ednds&ms=ltu&mt=1642596770&mv=m&mvi=2&pl=23&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRQIgDk1d6w-NBVki8T9JQA65W5CDLM1GoMLdpVDaU04f6v0CIQCxB_C-3Nk9gGSF2zl6maMXzbCw9ezC-bggdFq8iARC6Q%3D%3D"
                                        
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        configureBottomStackView()
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
    
    private func configureBottomStackView() {
        
        let blackView = UIView()
        blackView.backgroundColor = .black
        view.addSubview(blackView)
        blackView.snp.makeConstraints { maker in
            maker.bottom.left.right.equalToSuperview()
            maker.height.equalTo(80)
        }
        
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

  

//
//  NewsViewController.swift
//  Lab5
//
//  Created by Ануар Беисов on 29.03.2021.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var isNews: Bool?
    let news = [News(title: "ПОДГОТОВИТЕЛЬНЫЙ КУРС ACADEMIC SKILLS", desc: "Целью курса является более раннее погружение выпускников средних школ, будущих бакалавров в академическую среду.", image: UIImage.init(named: "news_image")!, url: "https://kbtu.edu.kz/ru/latest-news/1602-podgotovitelnyj-kurs-academic-skills"),
                News(title: "КУРСЫ ПРОГРАММИРОВАНИЯ", desc: "Дорогие друзья! Мы рады сообщить Вам о запуске подготовительного курса по программированию!", image: UIImage.init(named: "kurs_prog")!, url: "https://kbtu.edu.kz/ru/latest-news/1599-kursy-programmirovaniya"),
                News(title: "КУРСЫ ПО ПОДГОТОВКЕ К ЕНТ", desc: "КБТУ ведет набор на подготовительные курсы к ЕНТ по профильным и обязательным образовательным дисциплинам", image: UIImage.init(named: "kurs_ent")!, url: "https://kbtu.edu.kz/ru/latest-news/1597-kursy-po-podgotovke-k-ent"),
                News(title: "КУРСЫ АНГЛИЙСКОГО ЯЗЫКА", desc: "STEP - интенсивные курсы английского языка, который состоит из языковой практики для следующих уровней:", image: UIImage.init(named: "kurs_eng")!, url:"https://kbtu.edu.kz/ru/latest-news/1596-zapuskaem-chetvertyj-potok-onlai-n-kursov-anglii-skogo-yazyka-step"),
                News(title: "РЕСПУБЛИКАНСКАЯ ПРЕДМЕТНАЯ ОЛИМПИАДА КБТУ!", desc: "Уважаемые школьники и выпускники колледжа! Мы рады объявить Вам о проведении Республиканской предметной олимпиады КБТУ", image: UIImage.init(named: "olimp")!, url: "https://kbtu.edu.kz/ru/latest-news/1590-respublikanskaya-predmetnaya-olimpiada-kbtu"),
                News(title: "СНОВА «ДОМА»", desc: "6 февраля 2021 года состоялась первая очная встреча Ректора КБТУ с Советом Ассоциации выпускников университета KBTU ALUMNI.", image: UIImage.init(named: "doma")!, url: "https://kbtu.edu.kz/ru/latest-news/1578-snova-doma"),
                News(title: "СТИПЕНДИЯ ИМ. АКАДЕМИКА Ш. ЕСЕНОВА 2021", desc: "Научно-образовательный фонд им. академика Шахмардана Есенова объявляет конкурс", image: UIImage.init(named: "stip")!, url:"https://kbtu.edu.kz/ru/latest-news/1568-stipendiya-im-akademika-sh-esenova-2022"),
                News(title: "ЛУЧШИЙ ПРЕПОДАВАТЕЛЬ ВУЗа 2020", desc: "Преподаватели КБТУ Исахов Асылбек Абдиашимович и Кулпешов Бейбут Шайыкович стали обладателями звания Лучший преподаватель ВУЗа 2020", image: UIImage.init(named: "best")!, url: "https://kbtu.edu.kz/ru/latest-news/1565-luchshij-prepodavatel-vuza-2022")]
    let events = [News(title: "Вебинар Расследование компьютерных инцидентов",
                       desc: "Вебинар Расследование компьютерных инцидентов", image: UIImage.init(named: "vebinar")!, url: "https://kbtu.edu.kz/ru/activity/1474-vebinar-rassledovanie-kompyuternykh-intsidentov"),
News(title: "ВСТРЕЧА РУКОВОДСТВА КБТУ СО ВТОРЫМ КУРСОМ",
     desc: "Встреча руководства КБТУ со вторым курсом", image: UIImage.init(named: "meeting")!,
     url: "https://kbtu.edu.kz/ru/activity/1372-vstrecha-rukovodstva-kbtu-so-vtorym-kursom"),
News(title: "КУРСЫ ПО ПОДГОТОВКЕ К ЕНТ", desc: "КБТУ ведет набор на подготовительные курсы к ЕНТ по профильным и обязательным образовательным дисциплинам", image: UIImage.init(named: "kurs_ent")!, url: "https://kbtu.edu.kz/ru/latest-news/1597-kursy-po-podgotovke-k-ent"),
                 News(title: "КБТУ проводит серию семинаров", desc: "В рамках подготовки к новому учебному году и онлайн образованию КБТУ проводит серию семинаров для всех преподавателей и сотрудников по", image: UIImage.init(named: "seminars")!, url:"https://kbtu.edu.kz/ru/activity/1333-kbtu-provodit-seriyu-seminarov"),
                 News(title: "РЕСПУБЛИКАНСКАЯ ПРЕДМЕТНАЯ ОЛИМПИАДА КБТУ!", desc: "Уважаемые школьники и выпускники колледжа! Мы рады объявить Вам о проведении Республиканской предметной олимпиады КБТУ", image: UIImage.init(named: "olimp")!, url: "https://kbtu.edu.kz/ru/latest-news/1590-respublikanskaya-predmetnaya-olimpiada-kbtu"),
                 News(title: "СНОВА «ДОМА»", desc: "6 февраля 2021 года состоялась первая очная встреча Ректора КБТУ с Советом Ассоциации выпускников университета KBTU ALUMNI.", image: UIImage.init(named: "doma")!, url: "https://kbtu.edu.kz/ru/latest-news/1578-snova-doma"),
                 News(title: "СТИПЕНДИЯ ИМ. АКАДЕМИКА Ш. ЕСЕНОВА 2021", desc: "Научно-образовательный фонд им. академика Шахмардана Есенова объявляет конкурс", image: UIImage.init(named: "stip")!, url:"https://kbtu.edu.kz/ru/latest-news/1568-stipendiya-im-akademika-sh-esenova-2022"),
                 News(title: "ЛУЧШИЙ ПРЕПОДАВАТЕЛЬ ВУЗа 2020", desc: "Преподаватели КБТУ Исахов Асылбек Абдиашимович и Кулпешов Бейбут Шайыкович стали обладателями звания Лучший преподаватель ВУЗа 2020", image: UIImage.init(named: "best")!, url: "https://kbtu.edu.kz/ru/latest-news/1565-luchshij-prepodavatel-vuza-2022")]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isNews == true {
            return news.count
        }else{
            return events.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as? NewsTableViewCell
        if isNews == true {
            cell?.titleLabel?.text = news[indexPath.row].title
            cell?.newsImage?.image = news[indexPath.row].image
            cell?.descLabel?.text = news[indexPath.row].description
        }else{
            cell?.titleLabel?.text = events[indexPath.row].title
            cell?.newsImage?.image = events[indexPath.row].image
            cell?.descLabel?.text = events[indexPath.row].description
        }
        
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("hi")
    }
    

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let index = myTableView.indexPathForSelectedRow!.row
        let destination = segue.destination as! NewsDetailViewController
        if isNews == true {
            destination.myUrl = news[index].url
        }else{
            destination.myUrl = events[index].url
        }
        
    }
    
}

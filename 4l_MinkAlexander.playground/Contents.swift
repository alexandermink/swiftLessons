

enum Engine: String{
    case on = "запущен"
    case off = "заглушен"
}

enum actionEngine{
    case start
    case stop
}

enum Windows: String{
    case opened = "открыты"
    case closed = "закрыты"
}

enum actionWindows{
    case open
    case close
}

class Boot{
    var emptyBoot: Int = 0
    var maxSizeBoot: Int
    var sizeBoot: Int
    
    init(maxSizeBoot: Int = 0, sizeBoot: Int = 0) {
        self.maxSizeBoot = maxSizeBoot
        self.sizeBoot = sizeBoot
    }
}

enum actionBoot{
    case download
    case upload
}

class Car{
    var brand: String
    var year: Int
    var boot: Boot
    var engine: Engine
    var windows: Windows
    
    init(tBrand: String, tYear: Int, tBoot: Boot, tEngine: Engine, tWindows: Windows) {
        self.brand = tBrand
        self.year = tYear
        self.boot = tBoot
        self.engine = tEngine
        self.windows = tWindows
    }
    
    func description() {
        print("Автомобиль марки \(brand) \(year) года выпуска с объемом багажника \(boot.maxSizeBoot). Багажник заполнен на \(boot.sizeBoot), окна \(windows.rawValue), двигатель \(engine.rawValue).")
    }
    
    func engineStartStop(action: actionEngine){
        switch action {
        case .start:
            self.engine = .on
        case .stop:
            self.engine = .off
        }
    }
    
    func windowsOpenClose(action: actionWindows){
        switch action {
        case .open:
            self.windows = .opened
        case .close:
            self.windows = .closed
        }
    }
    
    func bootDownloadUpload(action: actionBoot ,size: Int){
        switch action {
        case .download:
            if(boot.sizeBoot + size > boot.maxSizeBoot){
                print("Багажник заполнен! Предмет не влезает!")
            } else {
                self.boot.sizeBoot += size
                print("Вы положили предмет! В багажнике осталось \(boot.maxSizeBoot-boot.sizeBoot) места!")
            }
        case .upload:
            if(boot.sizeBoot <= 0){
                print("Багажник пустой!")
            } else if(boot.sizeBoot - size < 0){
                print("Вы выгружаете слишком много!")
            } else if(boot.sizeBoot - size >= 0){
                self.boot.sizeBoot -= size
                print("Вы разгрузили багажник!")
            }
        }
    }
}

class TruckCar: Car{
    var trailer: Boot = .init(maxSizeBoot: 1000, sizeBoot: 0)
    
    override func description(){
        super.description()
        print("Имеется прицеп")
    }
    
}
    
class SportСar: Car {
    var spoiler: Bool = true
    
    override func description(){
        super.description()
        print("Имеется спойлер")
    }
}


var car1 = Car(tBrand: "Toyota", tYear: 1999, tBoot: .init(maxSizeBoot: 300, sizeBoot: 100), tEngine: .on, tWindows: .opened)

car1.description()
car1.bootDownloadUpload(action: .download, size: 200)
car1.bootDownloadUpload(action: .upload, size: 400)
car1.engineStartStop(action: .start)
car1.engineStartStop(action: .stop)
car1.description()

var car2 = TruckCar(tBrand: "Man", tYear: 1980, tBoot: .init(maxSizeBoot: 1500, sizeBoot: 100), tEngine: .on, tWindows: .closed)

car2.description()
car2.bootDownloadUpload(action: .download, size: 1200)
car2.bootDownloadUpload(action: .upload, size: 1000)
car2.windowsOpenClose(action: .open)
car2.windowsOpenClose(action: .close)
car2.description()

var car3 = SportСar(tBrand: "Lamborghini", tYear: 2017, tBoot: .init(maxSizeBoot: 50, sizeBoot: 20), tEngine: .on, tWindows: .opened)

car3.description()
car3.bootDownloadUpload(action: .download, size: 100)
car3.bootDownloadUpload(action: .upload, size: 100)
car3.windowsOpenClose(action: .close)
car3.description()

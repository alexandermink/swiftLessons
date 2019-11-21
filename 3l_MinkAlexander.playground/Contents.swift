

//Легковой автомобиль
struct car {
    
    var brand: String
    var year: Int
    var bootMaxSize: Int
    var engine: Bool
    var windows: Bool
    var bootSize: Int
    
    enum actions{
        case engine(start: Bool)
    }
    
    func description() {
        print("Легковой автомобиль марки \(brand) \(year) года выпуска с объемом багажника \(bootMaxSize). Багажник заполнен на \(bootSize), окна \(windows ? "открыты" : "закрыты"), двигатель \(engine ? "работает" : "выключен").")
    }
    
    mutating func engineStartStop(){
        self.engine = !engine
    }
    mutating func windowsOpenClose(){
        self.windows = !windows
    }
    //Загружаем в багажник
    mutating func bootDownload(size: Int){
        if(bootSize + size > bootMaxSize){
            print("Багажник заполнен! Предмет не влезает!")
        } else {
            self.bootMaxSize += size
            print("Вы положили предмет! В багажнике осталось \(bootMaxSize-bootSize) места!")
        }
    }
    //Выгружаем из багажника
    mutating func bootUnload(size: Int){
        if(bootSize <= 0){
            print("Багажник пустой!")
        } else if(bootSize - size < 0){
            print("Вы выгружаете слишком много!")
        } else if(bootSize - size >= 0){
            self.bootSize -= size
            print("Вы разгрузили багажник!")
        }
    }
}

//Грузовик
struct truck {
    var brand: String
    var year: Int
    var bootMaxSize: Int
    var engine: Bool
    var windows: Bool
    var bootSize: Int
    
    enum actions {
        enum engine{
            case start
            case stop
        }
        enum windows{
            case open
            case close
        }
        enum boot{
            case download
            case unload
        }
    }
    
    func description() {
        print("Грузовик марки \(brand) \(year) года выпуска с объемом багажника \(bootMaxSize). Багажник заполнен на \(bootSize), окна \(windows ? "открыты" : "закрыты"), двигатель \(engine ? "работает" : "выключен").")
    }
    
    mutating func engineStartStop(){
        self.engine = !engine
    }
    mutating func windowsOpenClose(){
        self.windows = !windows
    }
    //Загружаем в багажник
    mutating func bootDownload(size: Int){
        if(bootSize + size > bootMaxSize){
            print("Багажник заполнен! Предмет не влезает!")
        } else {
            self.bootMaxSize += size
            print("Вы положили предмет! В багажнике осталось \(bootMaxSize-bootSize) места!")
        }
    }
    //Выгружаем из багажника
    mutating func bootUnload(size: Int){
        if(bootSize <= 0){
            print("Багажник пустой!")
        } else if(bootSize - size < 0){
            print("Вы выгружаете слишком много!")
        } else if(bootSize - size >= 0){
            self.bootSize -= size
            print("Вы разгрузили багажник!")
        }
    }
}



var auto1 = car(brand: "nissan", year: 2015, bootMaxSize: 100, engine: true, windows: false, bootSize: 50)
var auto2 = truck(brand: "toyota", year: 2000, bootMaxSize: 500, engine: false, windows: false, bootSize: 175)


auto1.description()
auto1.bootDownload(size: 100)
auto1.engineStartStop()
auto1.windowsOpenClose()
auto1.bootUnload(size: 150)
auto1.bootUnload(size: 49)
auto1.description()


auto2.description()
auto2.bootUnload(size: 400)
auto2.bootDownload(size: 600)
auto2.engineStartStop()
auto2.windowsOpenClose()
auto2.bootDownload(size: 300)
auto2.description()

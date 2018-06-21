
// Structs and classes

// structs
struct Point {
    let x: Int
    let y: Int
    
    // explicit constructor over "memberwise initializer"
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    // naming convention note- don't include information conveyed by arg and param names
    
    /// Returns the surrounding points in range of
    /// point instance
    func surroundingPoints(inRange range: Int = 1) -> [Point] {
        var results: [Point] = []
        
        let lowerBoundOfX = x - range
        let upperBoundOfX = x + range
        
        let lowerBoundOfY = y - range
        let upperBoundOfY = y + range
        
        for xCoordinate in lowerBoundOfX...upperBoundOfX {
            for yCoordinate in lowerBoundOfY...upperBoundOfY {
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
        }
        
        return results
    }
    
    static func getLabel() -> String {
        return "Point"
    }
}

// Classes

// enemies
class Enemy {
    var life: Int = 2 // default values go here
    let position: Point
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func decreaseLife(by factor: Int) -> Int {
        life -= factor
        return life
    }
}

class SuperEnemy: Enemy {
    let isSuper: Bool = true
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.life = 50
    }
}


// towers
class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func fire(at enemy: Enemy) -> Bool {
        if isInRange(of: enemy) {
            enemy.decreaseLife(by: strength)
            return true
        }
        
        return false
    }
    
    func isInRange(of enemy: Enemy) -> Bool {
        let availablePositions = position.surroundingPoints(inRange: range)
        
        for point in availablePositions {
            if point.x == enemy.position.x && point.y == enemy.position.y {
                return true
            }
        }
        
        return false
    }
}

class LaserTower: Tower {
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.range = 100
        self.strength = 100
    }
    
    override func fire(at enemy: Enemy) -> Bool {
        while enemy.life > 0 {
            enemy.decreaseLife(by: strength)
        }
        
        return true
    }
}

let tower: Tower = Tower(x: 0, y: 1)
let bigAlly: LaserTower = LaserTower(x: 10, y: 15)
let enemy: Enemy = Enemy(x: 0, y: 0)
let bigBoss: Enemy = SuperEnemy(x: 15, y: 14)

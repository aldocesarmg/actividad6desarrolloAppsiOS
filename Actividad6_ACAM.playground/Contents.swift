import UIKit

infix operator <|>

func <|>(left:Int, right:Int) -> Int {
    var aux = 1
    var result = left
    while aux < right {
        result = result * left
        aux = aux + 1
    }
    return result
}

let result = 3 <|> 5
print(result)

prefix operator |>

prefix func |>(num:[Int]) -> [Int] {
    var ordered: [Int]
    ordered = num
    ordered.sort()
    return ordered
}

var numeros = [2,5,3,4]
print(|>numeros)

class arreglo {
    var values: [Int]

    init(vals:[Int]){
        self.values = vals
    }

    subscript(indice:Int) -> Int {
        get{
            return values[indice]
        }
        set(newval){
            values[indice] = newval * 2
        }
    }
}

var cantidades = [2,3,4,5]
var nms = arreglo(vals: cantidades)

print(nms[1])
nms[2] = 3
print(nms[2])

struct enemigo {
    var pos:[CGPoint]

    init(enemies_positions:[CGPoint]) {
        self.pos = enemies_positions
    }

    subscript(index: Int) -> CGPoint{
        get {
            return pos[index]
        }
        set(newval) {
            pos[index] = newval
        }
    }
}

var positions = [CGPoint(x: 0, y: 0), CGPoint(x: 0, y: 0), CGPoint(x: 0, y: 0), CGPoint(x: 0, y: 0)]
var enemies = enemigo(enemies_positions:positions)

print(enemies[2])
enemies[1] = CGPoint(x: 5, y: 10)
print(enemies[1])

let vals = ["A":1, "B":2,"C":3]

func ExisteValor(valorBusqueda:String) {
    guard let existe = vals[valorBusqueda] else {
        print("No existe")
        return
    }
    print ("Si existe, el valor es: \(existe)")
}

ExisteValor(valorBusqueda: "A")

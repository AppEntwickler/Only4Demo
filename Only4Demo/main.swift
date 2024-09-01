//
//  main.swift
//  Only4Demo
//
//  Created by 🅰️ppEntwickler on 17.08.24.
//

import Foundation

print("Only4Demo auf MacOS erstellt")

print("Only4Demo auf MacOS mit Xcode Push auf GitHub")

print("Only4Demo auf Windows mit VisualStudio Clone von GitHub")

print("Only4Demo auf Windows mit VisualStudio modifiziert und mit Push auf GitHub")




let url = URL( fileURLWithPath: "/Users/appentwickler/Developer/Only4Demo/Only4Demo/myFile.swift" )

print(url)

// Es soll ein Tupel sein ‼️
let g0000 = (fullname: " ", age: 0, maristat: "Unknown", maindrink: "Schluerf")
let g4711 = (fullname: "AndriOS NIKOLAOS", age: 25, maristat: "Single", maindrink: "CoCa Cola")
let g4712 = (fullname: "Max Mustermann", age: 40, maristat: "Verheiratet", maindrink: "Milch")
let g4713 = (fullname: "Gisela Schnabel", age: 33, maristat: "Unbekannt", maindrink: "Kaffee schwarz")

// var myInputG : String = "0000"
print("+ Geben Sie eine der 4stelligen Nummern ein:\n| (4711, 4712, 4713)\n|\nV")
var myInputG : String = readLine()!

let myFileOutput : String = """
//
//  myFile.swift
//  Only4Demo
//
//  Created by 🅰️ppEntwickler on 19.08.24.
//

import Foundation

let myTupleStringIs = g\(myInputG)

"""

/* Was kommt denn da ???
 Habe mit der myFileOutPut String Variable den Inhalt einer myFile.swift Datei nachgebildet.
 Den Inhalt schreibe ich in die Datei und lege diese i gleichen Ordner wie die main.swift ab.
 Bedeutet ich kann den Code in der abgelegten myFile.swift von der main.swift aus nutzen.
*/

// write:
do {
  try myFileOutput.write(to: url, atomically: true, encoding: .utf8)
}
catch {
  print("Error writing: \(error.localizedDescription)")
}

// read:
do {
  let s = try String( contentsOf: url )
  print(s)
}
catch {
  print("Error thrown while reading file. \(error.localizedDescription)")
}


print(myFileOutput)
print(myTupleStringIs)
print("")


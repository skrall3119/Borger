//
//  main.swift
//  Borger
//
//  Created by Alex Janci on 4/13/20.
//  Copyright © 2020 Alex Janci. All rights reserved.
//

import Foundation

print("Welcome to Bill's Burgers! What can we get started for you?")

func showCombos(){
    print("----------------------------------------------")
    print("Combo Menu: (Comes with fries and a soda)")
    print("#1: Works Cheeseburger: $6.83")
    print("#2: Double Works Cheeseburger: $7.97")
    print("#3: Double Bacon Cheeseburger: $8.99")
    print("#4: Bacon Cheeseburger Toaster: $7.97")
    print("----------------------------------------------")
    print("Type the corresponding number to select option")
    print("Type '+' to show sides")
    print("Type 0 when finished")
}
func showSides(){
    print("----------------------------------------------")
    print("Sides & Extras: ")
    print("#1: French Fries: $2.49")
    print("#2: Tator Tots: $2.49")
    print("#3: Onion Rings: $2.99")
    print("----------------------------------------------")
    print("Type the corresponding number to select option")
    print("Type '+' to show drinks or '-' to show combos")
    print("Type 0 when finished")
}
func showDrinks(){
    print("----------------------------------------------")
    print("Drinks:")
    print("#1: Coke: $2.39")
    print("#2: Diet Coke: $2.39")
    print("#3: Sprite $2.39")
    print("#4: Root Beer $2.39")
    print("----------------------------------------------")
    print("Type the corresponding number to select option")
    print("Type '-' to show sides")
    print("Type 0 when finished")
}

func handleInput(){
    var input = readLine()
    var page = 0
    var total = 0.00
    while input != "0" {
           switch page{
           case 0:
               if input == "+"{
                   page = 1
                   showSides()
                   input = readLine()
                   break
               } else if input == "1"{
                total += 6.83
                print(total)
                input = readLine()
                break
               } else if input == "2"{
                total += 7.97
                print(total)
                input = readLine()
                break
               } else if input == "3"{
                total += 8.99
                print(total)
                input = readLine()
                break
               } else if input == "4"{
                total += 7.97
                print(total)
                input = readLine()
                break
               } else {
                   print("invalid key, try again")
                   input = readLine()
               }
           case 1:
               if input == "+"{
                   page = 2
                   showDrinks()
                   input = readLine()
                   break
               } else if input == "-" {
                   page = 0
                   showCombos()
                   input = readLine()
                   break
               } else if input == "1"{
                total += 2.49
                print(total)
                input = readLine()
                break
               } else if input == "2"{
                total += 2.49
                print(total)
                input = readLine()
                break
               } else if input == "3"{
                total += 2.99
                print(total)
                input = readLine()
                break
               } else {
               print("invalid key, try again")
               input = readLine()
               }
           case 2:
               if input == "-" {
                   page = 1
                   showSides()
                   input = readLine()
                   break
               } else if input == "1" || input == "2" || input == "3" || input == "4"{
                total += 2.35
                print(total)
                input = readLine()
                break
               } else {
               print("invalid key, try again")
               input = readLine()
               }
           default:
               print("something went awry guy")
           }
        print("total is: \(total)")
       }
}

func start(){
    showCombos()
    handleInput()
}
start()


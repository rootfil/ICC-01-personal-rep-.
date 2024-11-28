#
#
# Your first Python script
#
#
option = 0
name = ""


def menu():
    print ("1- Read and display names")
    print ("2- Add a new name")
    print ("3- Exit")


with open("names.txt",'a+') as file:
    
    while int(option) != 3:
        menu()
        option = input("\n> ")
        print()
        
        if int(option) == 1:
            file.seek(0)
            for line in file:
                content = line.strip()
                print(content) 
            print()
                
        elif int(option) == 2:
            name = input ("New name: ")
            file.write('\n' + name)
            print()
            
        elif int(option) == 3:
            print("Goodbye!!!")
            
        else:
            print("Wrong option!!!")

        print()
        
    
            
       

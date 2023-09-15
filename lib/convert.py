import csv
with open('asset/emblems.csv', newline='') as csvfile:
    reader = csv.DictReader(csvfile)
    print(reader)
    for row in reader:
        print("asset/emblems/",end="")
        emblem = row['ffff'].lower()
        for char in emblem:
            if char == " ":
                print("-",end="")
            else:
                print(char, end="")
        
        print("-emblem-mlbb.png")
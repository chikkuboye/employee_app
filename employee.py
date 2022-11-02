import mysql.connector

mydb = mysql.connector.connect(host = 'localhost' , user = 'root' , password = '' , database = 'employee_db')

mycursor = mydb.cursor()
while True:
    print("select an option from the menu")
    print('1 add employee')
    print('2 view all employee')
    print('3 search a employee')
    print('4 update a employee')
    print('5 delete a employee')
    print('6 exit')

    choice = int(input('Enter an option: '))
    if(choice==1):
        print('employee enter selected')
        ecode = input('enter the code: ')
        name = input('enter the name: ')
        desination = input('enter the designation: ')
        salary = input('enter the salary: ')
        company = input('enter the company name: ')
        phone = input('enter the phone number: ')
        mail = input('enter the email id: ')
        password = input('enter the password: ')
        sql = 'INSERT INTO `emplyees`(`empcode`, `empName`, `Designation`, `Salary`, `companyName`, `phoneNumber`, `EmailId`, `Password`) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)'
        data = (ecode , name, desination,salary,company,phone,mail,password)
        mycursor.execute(sql , data)
        mydb.commit()
    elif(choice==2):
        print('view student')
        sql = 'SELECT * FROM `emplyees`'
        mycursor.execute(sql)
        result = mycursor.fetchall()
        for i in result:
            print(i)
    elif(choice==3):
        print('search a student')
    elif(choice==4):
        print('update the student')
    elif(choice==5):
        print('delete the student')
    elif(choice==6):
        break

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
        empcode = input('enter the empcode of the employee to be searched : ')
        sql = 'SELECT `id`, `empcode`, `empName`, `Designation`, `Salary`, `companyName`, `phoneNumber`, `EmailId`, `Password` FROM `emplyees` WHERE `empcode`='+empcode
        mycursor.execute(sql)
        result = mycursor.fetchall()
        print(result)
    elif(choice==4):
        print('update the student')
        ecode = input('enter the employee code for the update : ')
        name = input('enter the name: ')
        designation = input('enter the designation: ')
        salary = input('enter the salary: ')
        company = input('enter the company name: ')
        phone = input('enter the phone number: ')
        mail = input('enter the email id: ')
        password = input('enter the password: ')
        sql = "UPDATE `emplyees` SET `empcode`='"+ecode+"',`empName`='"+name+"',`Designation`='"+designation+"',`Salary`='"+salary+"',`companyName`='"+company+"',`phoneNumber`='"+phone+"',`EmailId`='"+mail+"',`Password`='"+password+"' WHERE `empcode`="+ecode
        mycursor.execute(sql)
        mydb.commit()
        print('sucessfully updates !!! ')
    elif(choice==5):
        print('delete the student')
        emcode = input('enter the employees empcode to be deleting : ')
        sql = 'DELETE FROM `emplyees` WHERE `empcode`='+emcode
        mycursor.execute(sql)
        mydb.commit()
        print('Deleted successfully !!!')
    elif(choice==6):
        break

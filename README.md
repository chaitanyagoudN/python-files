Central Michigan University
Information Systems Project

  

Inventory Management System
BIS 698 Information Systems Project 22458798 (Hybrid)
 (Spring 2024)
Dr.. Javad Norourzi Nia
Chaitanya Goud Nayanoola



Contents


•	Introduction
•	System Overview
•	System Architecture
•	Features and Functionalities
•	User Interface
•	Database Design
•	System Process
•	Code Snippets


 
1.	Introduction

The IMS will feature a user-friendly interface accessible to the stationary store owner, employees, and floor manager. Key functionalities include Different user roles (e.g., Floor Managers, employee) may have different levels of access to system functionalities. Changes made to system data are logged and tracked for auditing purposes. Employees can customize settings and preferences according to their requirements. The system provides reports, and these reports can be exported to excel for monitoring business performance and making informed decisions. The system will help the store with the managing their processes, ensuring accuracy and operational efficiency.


2.	System Overview: 

Utilizing Python for the backend, the project ensures efficient development and seamless integration. The frontend will be crafted with tkinter , providing a user-friendly interface. MySQL, a flexible NoSQL database, will manage data, ensuring a powerful and scalable solution for the Inventory Management System.

3.	System Architecture:

 





4.	Features and Functionalities:

Authentication Process - Features:

1. Secure Access: Employees are required to provide their registered email address and password to access the system.
2. Verification: The system verifies the provided credentials against the stored user database to ensure authenticity.
3. Error Handling: Failed authentication attempts trigger appropriate error messages, maintaining system security and preventing unauthorized access.

Main Menu Navigation - Features:

1. Centralized Hub: The Main Menu page serves as the central hub for accessing various system functionalities.
2. Intuitive Navigation: Employees can easily navigate between different modules, such as Inventory Management, Vendor Management, Customer Sales, and Password Update.
3. Structured Interface: Each menu option corresponds to specific functionalities within the system, providing a structured and user-friendly interface for efficient operation.

 Inventory Management Process-Features:

1. Product Management: Employees can save, add, update, delete, select, find, clear for products within the inventory.
2. Stock Level Monitoring: Employees can make use of Export to excel feature to check the stock report more thoroughly 
3. Data Integrity: Changes made to inventory records are logged and tracked to ensure data integrity and accountability.

Vendor Management Process- Features:
       
1. Vendor Information: Employees can access detailed information about vendors, including contact details and order history.
2. Order Placement: Employees can place orders for inventory items, look up products by their names and specify quantities and assigning vendors for procurement

Customer Sales Process - Features:

1. Product Selection: Employees can search for products, select items for purchase, and specify quantities.
2. Shopping Cart: Selected items are added to the shopping cart, where Employees can review and modify their order before checkout.
3. Order Processing: The system calculates total prices, applies discounts or promotions, and generates invoices for customers.

Overall System Features:

1. Role-Based Access Control: Different user roles (e.g., Floor Managers, employee) may have different levels of access to system functionalities.
2. Data Logging and Tracking: Changes made to system data are logged and tracked for auditing purposes.
3. Customizable Settings: Employees can customize settings and preferences according to their requirements.
4. Reporting: The system provides reports and these reports can be exported to excel for monitoring business performance and making informed decisions.


5.	USER INTERFACE: 

Employee Login Page:

The Employee Login page serves as the entry point for authorized personnel to access the inventory management system. It features fields for entering the registered email address and password associated with each employee's account.


 



After the employee enters the right details, the prompt appears to make sure the database connection is established.


                                                                                        







Main Menu Page:

Upon successful authentication, Employees are directed to the Main Menu page. This centralized hub provides navigation options to key functionalities of the system, including Inventory Management, Vendor Management, Customer Sales, and Password Update.


 



Vendor Page:

The Vendor Page offers essential functionalities related to vendor management. Employees can access detailed vendor information and place orders for inventory replenishment.
  

 






Vendor Details: Displays comprehensive information about registered vendors, including unique Vendor ID, Vendor Name, and the contact person associated with each vendor. A "Back to Main Menu" button facilitates easy navigation.

 



Place Order: Facilitates seamless order placement with a user-friendly interface. Employees can select the desired product from a dropdown menu, specify the quantity required, choose the relevant vendor from another dropdown, and initiate the ordering process with a single click.



     			         



Inventory Page:

The Inventory Page serves as a central hub for managing product information and stock levels efficiently.

Product Management Form: Features fields for entering and updating essential product details, including Product ID, Name, Price, Quantity, Category, and Description. Employees can perform actions such as adding new products, updating existing information, deleting products, and conducting product searches.


 









Product List View: Displays a comprehensive list of all available products along with their corresponding details, facilitating quick reference and overview of inventory items.

 



Update Password Page:

The Update Password Page enables Employees to securely update their login credentials.

 Password Update Form: Provides fields for entering the existing password and specifying a new password. The system accommodates password changes without any restrictive requirements, ensuring user convenience and security.


                     

Customer Sales Page:

The Customer Sales Page offers a streamlined interface for processing customer orders and managing sales transactions.

Product Details Window:

Features fields for searching and selecting products based on Product ID, Name, or Description. Additionally, Employees can specify the desired quantity from a dropdown menu, with the Total Price dynamically adjusting based on the selected quantity. An "Add to Cart" button facilitates the inclusion of selected items in the customer's order. 

 
          



A place order button facilitates the customer sales page. After the place order button is clicked it automatically updates the quantity in the inventory.







Design Elements:

User Interface Design:

The user interface design follows principles of simplicity, consistency, and intuitiveness to enhance user experience and usability.

Clean layout, intuitive navigation menus, and visually appealing elements contribute to a user-friendly interface.
Use of minimalistic colors, icons, and typography is consistent across different modules and pages, ensuring coherence and ease of navigation.

Interactive elements such as dropdown menus, buttons, and input fields are designed to be responsive and intuitive, facilitating seamless interaction with the system.

Scalability and Performance:

The system architecture is designed to be scalable and adaptable to accommodate future growth and expansion.


6.	Database Design:

ENTITY RELATIONSHIP DIAGRAM: 

 



7.	System Process:

Authentication Process:

•	Upon accessing the system, Employees are prompted to authenticate themselves by providing their registered email address and password.
•	The system verifies the credentials against the stored user database to grant access to authorized personnel.
•	Failed authentication attempts trigger appropriate error messages, ensuring secure access to the system.

 Main Menu Navigation:

•	After successful authentication, Employees are directed to the Main Menu page, which serves as the central hub for accessing various system functionalities.
•	Navigation between different modules, such as Inventory Management, Vendor Management, Customer Sales, and Password Update, is facilitated through intuitive menu options.
•	Each menu option corresponds to specific functionalities and processes within the system, providing a structured and user-friendly interface for efficient operation.


Inventory Management Process:

•	The Inventory Management process encompasses activities related to managing product information, stock levels, and inventory transactions.
•	Employees can perform actions such as adding new products, updating existing product details, deleting obsolete items, and conducting product searches.
•	Changes made to inventory records are logged and tracked to ensure data integrity and accountability.
•	Automated alerts and notifications notify Employees of low stock levels, enabling timely replenishment and inventory optimization.

Vendor Management Process:

•	The Vendor Management process involves managing relationships with external suppliers and facilitating the procurement of inventory items.
•	Employees can access detailed vendor information, including contact details and order history, to streamline communication and collaboration.
•	The process of placing orders involves selecting the desired products, specifying quantities, and assigning vendors for procurement.
•	Order status tracking and communication with vendors are facilitated to ensure timely delivery and inventory replenishment.

Customer Sales Process:

•	The Customer Sales process encompasses activities related to processing customer orders, managing sales transactions, and providing a seamless shopping experience.
•	Employees can search for products, select items for purchase, specify quantities, and add selected items to the shopping cart.
•	Order processing involves calculating total prices, applying discounts or promotions, and generating invoices for customers.
•	Payment processing and order fulfillment are integrated into the system to streamline the entire sales process and enhance customer satisfaction.


8.	Code:
Main Python Code:
from tkinter import *
from tkinter import messagebox, font
import pymysql
import subprocess  # Import subprocess module for opening a new Python script

# Create the main window
window = Tk()
window.title("Login")
window.geometry("400x250")
window.configure(bg="#F0F0F0")

# Set custom font
custom_font = font.Font(family="Helvetica", size=12)

# Database connection
def connection():
    conn = pymysql.connect(
        host="141.209.241.91",
        user='sp2024bis698g3',
        password='warm',
        db='sp2024bis698g3s'
    )
    return conn

# Function to check login credentials
def login():
    email = email_entry.get()
    password = password_entry.get()

    # Check if email and password are provided
    if email.strip() == "" or password.strip() == "":
        messagebox.showwarning("Warning", "Please enter both email and password")
        return

    # Check if employee exists and password is correct
    conn = connection()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM Employee WHERE Email = %s AND PasswordHash = %s", (email, password))
    result = cursor.fetchone()
    conn.close()

    if result:
        messagebox.showinfo("Success", "Login successful!")
        window.destroy()  # Close login window
        open_main_menu()  # Open the main menu window
    else:
        messagebox.showerror("Error", "Invalid email or password")

# Function to open the main menu window
def open_main_menu():
    main_menu_window = Tk()
    main_menu_window.title("Main Menu")
    main_menu_window.geometry("400x300")
    main_menu_window.configure(bg="#F0F0F0")

    # Add inventory button
    inventory_button = Button(main_menu_window, text="Inventory", command=open_inventory, bg="#007bff", fg="white")
    inventory_button['font'] = custom_font
    inventory_button.pack(pady=10)

    # Add three more buttons
    customer_order_button = Button(main_menu_window, text="Customer Order", command=customer_order_clicked, bg="#007bff", fg="white")
    customer_order_button['font'] = custom_font
    customer_order_button.pack(pady=5)

    vendor_button = Button(main_menu_window, text="Vendor", command=vendor_clicked, bg="#007bff", fg="white")
    vendor_button['font'] = custom_font
    vendor_button.pack(pady=5)

    update_password_button = Button(main_menu_window, text="Update Password", command=update_password_clicked, bg="#007bff", fg="white")
    update_password_button['font'] = custom_font
    update_password_button.pack(pady=5)

    main_menu_window.mainloop()

# Function to open the inventory window
def open_inventory():
    subprocess.Popen(["python", "InventoryPage.py"])  # Open InventoryPage.py using subprocess

# Placeholder functions for additional buttons
def customer_order_clicked():
    subprocess.Popen(["python", "customer.py"])  # Open InventoryPage.py using subprocess

def vendor_clicked():
    subprocess.Popen(["python", "vendor.py"])  # Open InventoryPage.py using subprocess

def update_password_clicked():
    subprocess.Popen(["python", "update_password.py"])  # Open InventoryPage.py using subprocess

# Entry fields for email and password
email_label = Label(window, text="Email:", bg="#F0F0F0")
email_label['font'] = custom_font
email_label.grid(row=0, column=0, padx=10, pady=10)
email_entry = Entry(window, bg="white")
email_entry['font'] = custom_font
email_entry.grid(row=0, column=1, padx=10, pady=10)

password_label = Label(window, text="Password:", bg="#F0F0F0")
password_label['font'] = custom_font
password_label.grid(row=1, column=0, padx=10, pady=10)
password_entry = Entry(window, show="*", bg="white")
password_entry['font'] = custom_font
password_entry.grid(row=1, column=1, padx=10, pady=10)

# Button to login
login_button = Button(window, text="Login", command=login, bg="#007bff", fg="white")
login_button['font'] = custom_font
login_button.grid(row=2, columnspan=2, padx=10, pady=10)

window.mainloop()



Login Page Code: 

from tkinter import *
from tkinter import messagebox, font
import pymysql

# Create the main window
window = Tk()
window.title("Login")
window.geometry("400x200")
window.configure(bg="#F0F0F0")

# Set custom font
custom_font = font.Font(family="Helvetica", size=12)

# Database connection
def connection():
    conn = pymysql.connect(
        host='141.209.241.91',
        user='sp2024bis698g3',
        password='warm',
        db='sp2024bis698g3s'
    )
    return conn

# Function to check login credentials
def login():
    email = email_entry.get()
    password = password_entry.get()

    # Check if email and password are provided
    if email.strip() == "" or password.strip() == "":
        messagebox.showwarning("Warning", "Please enter both email and password")
        return

    # Check if employee exists and password is correct
    conn = connection()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM Employee WHERE Email = %s AND PasswordHash = %s", (email, password))
    result = cursor.fetchone()
    conn.close()

    if result:
        messagebox.showinfo("Success", "Login successful!")
        window.destroy()  # Close login window
        # Add your code here to open the main menu window or another window
    else:
        messagebox.showerror("Error", "Invalid email or password")

# Entry fields for email and password
email_label = Label(window, text="Email:", bg="#F0F0F0")
email_label['font'] = custom_font
email_label.grid(row=0, column=0, padx=10, pady=10)
email_entry = Entry(window, bg="white")
email_entry['font'] = custom_font
email_entry.grid(row=0, column=1, padx=10, pady=10)

password_label = Label(window, text="Password:", bg="#F0F0F0")
password_label['font'] = custom_font
password_label.grid(row=1, column=0, padx=10, pady=10)
password_entry = Entry(window, show="*", bg="white")
password_entry['font'] = custom_font
password_entry.grid(row=1, column=1, padx=10, pady=10)

# Button to login
login_button = Button(window, text="Login", command=login, bg="#007bff", fg="white")
login_button['font'] = custom_font
login_button.grid(row=2, columnspan=2, padx=10, pady=10)

window.mainloop()


Update Password Python Code:

from tkinter import *
from tkinter import messagebox, font
import pymysql

# Create the main window
window = Tk()
window.title("Update Password")
window.geometry("400x250")
window.configure(bg="#F0F0F0")

# Set custom font
custom_font = font.Font(family="Helvetica", size=12)

# Function to update password
def update_password():
    email = email_entry.get()
    old_password = old_password_entry.get()
    new_password = new_password_entry.get()

    # Check if all fields are filled
    if email.strip() == "" or old_password.strip() == "" or new_password.strip() == "":
        messagebox.showwarning("Warning", "Please fill in all the fields")
        return

    # Database connection
    conn = pymysql.connect(
        host='141.209.241.91',
        user='sp2024bis698g3',
        password='warm',
        db='sp2024bis698g3s'
    )

    cursor = conn.cursor()

    # Check if old password is correct
    cursor.execute("SELECT * FROM Employee WHERE Email = %s AND PasswordHash = %s", (email, old_password))
    result = cursor.fetchone()

    if result:
        # Update password
        cursor.execute("UPDATE Employee SET PasswordHash = %s WHERE Email = %s", (new_password, email))
        conn.commit()
        conn.close()
        messagebox.showinfo("Success", "Password updated successfully!")
        window.destroy()
    else:
        messagebox.showerror("Error", "Invalid email or old password")

# Labels and entry fields for email, old password, and new password
email_label = Label(window, text="Email:", bg="#F0F0F0")
email_label['font'] = custom_font
email_label.grid(row=0, column=0, padx=10, pady=10)
email_entry = Entry(window, bg="white")
email_entry['font'] = custom_font
email_entry.grid(row=0, column=1, padx=10, pady=10)

old_password_label = Label(window, text="Old Password:", bg="#F0F0F0")
old_password_label['font'] = custom_font
old_password_label.grid(row=1, column=0, padx=10, pady=10)
old_password_entry = Entry(window, show="*", bg="white")
old_password_entry['font'] = custom_font
old_password_entry.grid(row=1, column=1, padx=10, pady=10)

new_password_label = Label(window, text="New Password:", bg="#F0F0F0")
new_password_label['font'] = custom_font
new_password_label.grid(row=2, column=0, padx=10, pady=10)
new_password_entry = Entry(window, show="*", bg="white")
new_password_entry['font'] = custom_font
new_password_entry.grid(row=2, column=1, padx=10, pady=10)

# Button to update password
update_button = Button(window, text="Update Password", command=update_password, bg="#007bff", fg="white")
update_button['font'] = custom_font
update_button.grid(row=3, columnspan=2, padx=10, pady=10)

window.mainloop()



Inventory Page Python Code:

from tkinter import *
from tkinter import ttk
from tkinter import messagebox
import tkinter
import random
import pymysql
import csv
from datetime import datetime

window = tkinter.Tk()
window.title("Inventory Management System")
window.geometry("720x640")
my_tree = ttk.Treeview(window, show='headings', height=20)
style = ttk.Style()

placeholderArray = ['', '', '', '', '']
numeric = '1234567890'
alpha = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

def connection():
    conn = pymysql.connect(
        host='141.209.241.91',
        user='sp2024bis698g3',
        password='warm',
        db='sp2024bis698g3s'
    )
    return conn

conn = connection()
cursor = conn.cursor()

for i in range(0, 5):
    placeholderArray[i] = tkinter.StringVar()

def read():
    cursor.connection.ping()
    sql = f"SELECT `ProductID`, `Name`, `Price`, `Quantity`, `Category`, `Description` FROM Product ORDER BY `ProductID` DESC"
    cursor.execute(sql)
    results = cursor.fetchall()
    conn.commit()
    conn.close()
    return results

def refreshTable():
    for data in my_tree.get_children():
        my_tree.delete(data)
    for array in read():
        my_tree.insert(parent='', index='end', iid=array, text="", values=(array), tag="orow")
    my_tree.tag_configure('orow', background="#EEEEEE")
    my_tree.pack()

def setph(word, num):
    for ph in range(0, 5):
        if ph == num:
            placeholderArray[ph].set(word)

def save():
    ProductID = str(ProductIDEntry.get())
    Name = str(NameEntry.get())
    Price = str(PriceEntry.get())
    Quantity = str(QuantityEntry.get())
    Category = str(CategoryCombo.get())
    Description = str(DescriptionEntry.get("1.0", END))
    if not ProductID.isdigit() or len(ProductID) != 2:
        messagebox.showwarning("", "Invalid Product ID. Please enter a 5-digit numeric ID.")
        return
    if not (ProductID and ProductID.strip()) or not (Name and Name.strip()) or not (Price and Price.strip()) or not (
            Quantity and Quantity.strip()) or not (Category and Category.strip()) or not (
            Description and Description.strip()):
        messagebox.showwarning("", "Please fill up all entries")
        return
    try:
        cursor.connection.ping()
        sql = f"SELECT * FROM Product WHERE `ProductID` = '{ProductID}' "
        cursor.execute(sql)
        checkProductNo = cursor.fetchall()
        if len(checkProductNo) > 0:
            messagebox.showwarning("", "Product ID already used")
            return
        else:
            cursor.connection.ping()
            sql = f"INSERT INTO Product (`ProductID`, `Name`, `Price`, `Quantity`, `Category`, `Description`) VALUES ('{ProductID}','{Name}','{Price}','{Quantity}','{Category}','{Description}')"
            cursor.execute(sql)
        conn.commit()
        conn.close()
        for num in range(0, 5):
            setph('', (num))
    except Exception as e:
        print(e)
        messagebox.showwarning("", "Error while saving ref: " + str(e))
        return
    refreshTable()

def update():
    selectedProductID = ''
    try:
        selectedItem = my_tree.selection()[0]
        selectedProductID = str(my_tree.item(selectedItem)['values'][0])
    except:
        messagebox.showwarning("", "Please select a data row")
    print(selectedProductID)
    ProductID = str(ProductIDEntry.get())
    Name = str(NameEntry.get())
    Price = str(PriceEntry.get())
    Quantity = str(QuantityEntry.get())
    Category = str(CategoryCombo.get())
    Description = str(DescriptionEntry.get("1.0", END))
    if not (ProductID and ProductID.strip()) or not (Name and Name.strip()) or not (Price and Price.strip()) or not (
            Quantity and Quantity.strip()) or not (Category and Category.strip()) or not (
            Description and Description.strip()):
        messagebox.showwarning("", "Please fill up all entries")
        return
    if selectedProductID != ProductID:
        messagebox.showwarning("", "You can't change Product ID")
        return
    try:
        cursor.connection.ping()
        sql = f"UPDATE Product SET `Name` = '{Name}', `Price` = '{Price}', `Quantity` = '{Quantity}', `Category` = '{Category}', `Description` = '{Description}' WHERE `ProductID` = '{ProductID}' "
        cursor.execute(sql)
        conn.commit()
        conn.close()
        for num in range(0, 5):
            setph('', (num))
    except Exception as err:
        messagebox.showwarning("", "Error occured ref: " + str(err))
        return
    refreshTable()

def delete():
    try:
        if (my_tree.selection()[0]):
            decision = messagebox.askquestion("", "Delete the selected data?")
            if (decision != 'yes'):
                return
            else:
                selectedItem = my_tree.selection()[0]
                ProductID = str(my_tree.item(selectedItem)['values'][0])
                try:
                    cursor.connection.ping()
                    sql = f"DELETE FROM Product WHERE `ProductID` = '{ProductID}' "
                    cursor.execute(sql)
                    conn.commit()
                    conn.close()
                    messagebox.showinfo("", "Data has been successfully deleted")
                except:
                    messagebox.showinfo("", "Sorry, an error occured")
                refreshTable()
    except:
        messagebox.showwarning("", "Please select a data row")

def select():
    try:
        selectedItem = my_tree.selection()[0]
        ProductID = str(my_tree.item(selectedItem)['values'][0])
        Name = str(my_tree.item(selectedItem)['values'][1])
        Price = str(my_tree.item(selectedItem)['values'][2])
        Quantity = str(my_tree.item(selectedItem)['values'][3])
        Category = str(my_tree.item(selectedItem)['values'][4])
        Description = str(my_tree.item(selectedItem)['values'][5])
        setph(ProductID, 0)
        setph(Name, 1)
        setph(Price, 2)
        setph(Quantity, 3)
        setph(Category, 4)
        DescriptionEntry.delete("1.0", END)
        DescriptionEntry.insert("1.0", Description)
    except:
        messagebox.showwarning("", "Please select a data row")

def find():
    ProductID = str(ProductIDEntry.get())
    Name = str(NameEntry.get())
    Price = str(PriceEntry.get())
    Quantity = str(QuantityEntry.get())
    Category = str(CategoryCombo.get())
    cursor.connection.ping()
    if (ProductID and ProductID.strip()):
        sql = f"SELECT `ProductID`, `Name`, `Price`, `Quantity`, `Category`, `Description` FROM Product WHERE `ProductID` LIKE '%{ProductID}%' "
    elif (Name and Name.strip()):
        sql = f"SELECT `ProductID`, `Name`, `Price`, `Quantity`, `Category`, `Description` FROM Product WHERE `Name` LIKE '%{Name}%' "
    elif (Price and Price.strip()):
        sql = f"SELECT `ProductID`, `Name`, `Price`, `Quantity`, `Category`, `Description` FROM Product WHERE `Price` LIKE '%{Price}%' "
    elif (Quantity and Quantity.strip()):
        sql = f"SELECT `ProductID`, `Name`, `Price`, `Quantity`, `Category`, `Description` FROM Product WHERE `Quantity` LIKE '%{Quantity}%' "
    elif (Category and Category.strip()):
        sql = f"SELECT `ProductID`, `Name`, `Price`, `Quantity`, `Category`, `Description` FROM Product WHERE `Category` LIKE '%{Category}%' "
    else:
        messagebox.showwarning("", "Please fill up one of the entries")
        return
    cursor.execute(sql)
    try:
        result = cursor.fetchall();
        for num in range(0, 5):
            setph(result[0][num], (num))
        DescriptionEntry.delete("1.0", END)
        DescriptionEntry.insert("1.0", result[0][5])
        conn.commit()
        conn.close()
    except:
        messagebox.showwarning("", "No data found")

def clear():
    for num in range(0, 5):
        setph('', (num))
    DescriptionEntry.delete("1.0", END)

def exportExcel():
    cursor.connection.ping()
    sql = f"SELECT `ProductID`, `Name`, `Price`, `Quantity`, `Category`, `Description` FROM Product ORDER BY `ProductID` DESC"
    cursor.execute(sql)
    dataraw = cursor.fetchall()
    date = str(datetime.now())
    date = date.replace(' ', '_')
    date = date.replace(':', '-')
    dateFinal = date[0:16]
    with open("products_" + dateFinal + ".csv", 'a', newline='') as f:
        w = csv.writer(f, dialect='excel')
        for record in dataraw:
            w.writerow(record)
    print("saved: products_" + dateFinal + ".csv")
    conn.commit()
    conn.close()
    messagebox.showinfo("", "Excel file downloaded")

frame = tkinter.Frame(window, bg="#02577A")
frame.pack()

btnColor = "#196E78"

manageFrame = tkinter.LabelFrame(frame, text="Manage", borderwidth=5)
manageFrame.grid(row=0, column=0, sticky="w", padx=[10, 200], pady=20, ipadx=[6])

saveBtn = Button(manageFrame, text="SAVE", width=10, borderwidth=3, bg=btnColor, fg='white', command=save)
updateBtn = Button(manageFrame, text="UPDATE", width=10, borderwidth=3, bg=btnColor, fg='white', command=update)
deleteBtn = Button(manageFrame, text="DELETE", width=10, borderwidth=3, bg=btnColor, fg='white', command=delete)
selectBtn = Button(manageFrame, text="SELECT", width=10, borderwidth=3, bg=btnColor, fg='white', command=select)
findBtn = Button(manageFrame, text="FIND", width=10, borderwidth=3, bg=btnColor, fg='white', command=find)
clearBtn = Button(manageFrame, text="CLEAR", width=10, borderwidth=3, bg=btnColor, fg='white', command=clear)
exportBtn = Button(manageFrame, text="EXPORT EXCEL", width=15, borderwidth=3, bg=btnColor, fg='white',
                   command=exportExcel)

saveBtn.grid(row=0, column=0, padx=5, pady=5)
updateBtn.grid(row=0, column=1, padx=5, pady=5)
deleteBtn.grid(row=0, column=2, padx=5, pady=5)
selectBtn.grid(row=0, column=3, padx=5, pady=5)
findBtn.grid(row=0, column=4, padx=5, pady=5)
clearBtn.grid(row=0, column=5, padx=5, pady=5)
exportBtn.grid(row=0, column=6, padx=5, pady=5)

entriesFrame = tkinter.LabelFrame(frame, text="Form", borderwidth=5)
entriesFrame.grid(row=1, column=0, sticky="w", padx=[10, 200], pady=[0, 20], ipadx=[6])

ProductIDLabel = Label(entriesFrame, text="PRODUCT ID", anchor="e", width=10)
NameLabel = Label(entriesFrame, text="NAME", anchor="e", width=10)
PriceLabel = Label(entriesFrame, text="PRICE", anchor="e", width=10)
QuantityLabel = Label(entriesFrame, text="QUANTITY", anchor="e", width=10)
CategoryLabel = Label(entriesFrame, text="CATEGORY", anchor="e", width=10)
DescriptionLabel = Label(entriesFrame, text="DESCRIPTION", anchor="e", width=10)

ProductIDLabel.grid(row=0, column=0, padx=10)
NameLabel.grid(row=1, column=0, padx=10)
PriceLabel.grid(row=2, column=0, padx=10)
QuantityLabel.grid(row=3, column=0, padx=10)
CategoryLabel.grid(row=4, column=0, padx=10)
DescriptionLabel.grid(row=5, column=0, padx=10)

categoryArray = ['Networking Tools', 'Computer Parts', 'Repair Tools', 'Gadgets']

ProductIDEntry = Entry(entriesFrame, width=50, textvariable=placeholderArray[0])
NameEntry = Entry(entriesFrame, width=50, textvariable=placeholderArray[1])
PriceEntry = Entry(entriesFrame, width=50, textvariable=placeholderArray[2])
QuantityEntry = Entry(entriesFrame, width=50, textvariable=placeholderArray[3])
CategoryCombo = ttk.Combobox(entriesFrame, width=47, textvariable=placeholderArray[4], values=categoryArray)
DescriptionEntry = Text(entriesFrame, width=47, height=5)

ProductIDEntry.grid(row=0, column=1, padx=5, pady=5)
NameEntry.grid(row=1, column=1, padx=5, pady=5)
PriceEntry.grid(row=2, column=1, padx=5, pady=5)
QuantityEntry.grid(row=3, column=1, padx=5, pady=5)
CategoryCombo.grid(row=4, column=1, padx=5, pady=5)
DescriptionEntry.grid(row=5, column=1, padx=5, pady=5)


style.configure(window)
my_tree['columns'] = ("ProductID", "Name", "Price", "Quantity", "Category", "Description")
my_tree.column("#0", width=0, stretch=NO)
my_tree.column("ProductID", anchor=W, width=70)
my_tree.column("Name", anchor=W, width=125)
my_tree.column("Price", anchor=W, width=125)
my_tree.column("Quantity", anchor=W, width=100)
my_tree.column("Category", anchor=W, width=150)
my_tree.column("Description", anchor=W, width=150)
my_tree.heading("ProductID", text="ProductID", anchor=W)
my_tree.heading("Name", text="Name", anchor=W)
my_tree.heading("Price", text="Price", anchor=W)
my_tree.heading("Quantity", text="Quantity", anchor=W)
my_tree.heading("Category", text="Category", anchor=W)
my_tree.heading("Description", text="Description", anchor=W)
my_tree.tag_configure('orow', background="#EEEEEE")
my_tree.pack()

refreshTable()

window.resizable(False, False)
window.mainloop()









Customer Page Python Code: 

import tkinter as tk
from tkinter import ttk, messagebox
import pymysql

class CustomerOrderPage(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("Customer Order Page")
        self.geometry("800x600")

        self.customerID = tk.StringVar()
        self.customerName = tk.StringVar()
        self.productID = tk.StringVar()
        self.productName = tk.StringVar()
        self.description = tk.StringVar()
        self.price = tk.StringVar()
        self.quantity = tk.IntVar(value=1)
        self.totalPrice = tk.StringVar()

        self.order_list = []

        self.create_widgets()

    def create_widgets(self):
        customer_frame = ttk.LabelFrame(self, text="Customer Details")
        customer_frame.pack(padx=10, pady=10, fill="both", expand=True)

        tk.Label(customer_frame, text="Customer ID:").grid(row=0, column=0, padx=5, pady=5, sticky="e")
        tk.Entry(customer_frame, textvariable=self.customerID).grid(row=0, column=1, padx=5, pady=5)

        tk.Label(customer_frame, text="Customer Name:").grid(row=1, column=0, padx=5, pady=5, sticky="e")
        tk.Entry(customer_frame, textvariable=self.customerName).grid(row=1, column=1, padx=5, pady=5)

        product_frame = ttk.LabelFrame(self, text="Product Details")
        product_frame.pack(padx=10, pady=10, fill="both", expand=True)

        tk.Label(product_frame, text="Product ID:").grid(row=0, column=0, padx=5, pady=5, sticky="e")
        tk.Entry(product_frame, textvariable=self.productID).grid(row=0, column=1, padx=5, pady=5)
        tk.Button(product_frame, text="Search", command=self.search_product).grid(row=0, column=2, padx=5, pady=5)

        tk.Label(product_frame, text="Product Name:").grid(row=1, column=0, padx=5, pady=5, sticky="e")
        tk.Entry(product_frame, textvariable=self.productName, state="readonly").grid(row=1, column=1, padx=5, pady=5)

        tk.Label(product_frame, text="Description:").grid(row=2, column=0, padx=5, pady=5, sticky="e")
        tk.Entry(product_frame, textvariable=self.description, state="readonly").grid(row=2, column=1, padx=5, pady=5)

        tk.Label(product_frame, text="Price:").grid(row=3, column=0, padx=5, pady=5, sticky="e")
        tk.Entry(product_frame, textvariable=self.price, state="readonly").grid(row=3, column=1, padx=5, pady=5)

        tk.Label(product_frame, text="Quantity:").grid(row=4, column=0, padx=5, pady=5, sticky="e")
        tk.Spinbox(product_frame, from_=1, to=100, textvariable=self.quantity).grid(row=4, column=1, padx=5, pady=5)

        tk.Label(product_frame, text="Total Price:").grid(row=5, column=0, padx=5, pady=5, sticky="e")
        tk.Entry(product_frame, textvariable=self.totalPrice, state="readonly").grid(row=5, column=1, padx=5, pady=5)

        tk.Button(product_frame, text="Add to Cart", command=self.add_to_cart).grid(row=6, column=1, padx=5, pady=5)

        order_frame = ttk.LabelFrame(self, text="Order Details")
        order_frame.pack(padx=10, pady=10, fill="both", expand=True)

        self.order_table = ttk.Treeview(order_frame, columns=("Product ID", "Product Name", "Description", "Price", "Quantity", "Total Price"), show="headings")
        self.order_table.heading("Product ID", text="Product ID")
        self.order_table.heading("Product Name", text="Product Name")
        self.order_table.heading("Description", text="Description")
        self.order_table.heading("Price", text="Price")
        self.order_table.heading("Quantity", text="Quantity")
        self.order_table.heading("Total Price", text="Total Price")

        self.order_table.column("Product ID", width=100)
        self.order_table.column("Product Name", width=150)
        self.order_table.column("Description", width=200)
        self.order_table.column("Price", width=100)
        self.order_table.column("Quantity", width=100)
        self.order_table.column("Total Price", width=100)

        self.order_table.pack(padx=10, pady=10, fill="both", expand=True)

        place_order_button = tk.Button(self, text="Place Order", command=self.place_order)
        place_order_button.pack(padx=10, pady=10, anchor="ne")

    def search_product(self):
        product_id = self.productID.get()
        if not product_id:
            messagebox.showerror("Error", "Please enter a product ID!")
            return

        conn = self.connect_to_database()
        if conn:
            cursor = conn.cursor()
            cursor.execute(f"SELECT Name, Description, Price FROM Product WHERE ProductID = '{product_id}'")
            result = cursor.fetchone()
            conn.close()

            if result:
                self.productName.set(result[0])
                self.description.set(result[1])
                self.price.set(result[2])
                self.calculate_total_price()
            else:
                messagebox.showerror("Error", "Product not found!")

    def calculate_total_price(self):
        try:
            price = float(self.price.get())
            quantity = int(self.quantity.get())
            total_price = price * quantity
            self.totalPrice.set(total_price)
        except ValueError:
            messagebox.showerror("Error", "Invalid price or quantity!")

    def add_to_cart(self):
        product_id = self.productID.get()
        product_name = self.productName.get()
        description = self.description.get()
        price_str = self.price.get()
        quantity = int(self.quantity.get())

        if not product_id:
            messagebox.showerror("Error", "Please enter a product ID!")
            return

        if not product_name:
            messagebox.showerror("Error", "Product name is empty!")
            return

        if not description:
            messagebox.showerror("Error", "Product description is empty!")
            return

        if not price_str:
            messagebox.showerror("Error", "Product price is empty!")
            return

        try:
            price = float(price_str)
        except ValueError:
            messagebox.showerror("Error", "Invalid product price!")
            return

        total_price = price * quantity

        self.order_table.insert("", "end", values=(product_id, product_name, description, price, quantity, total_price))
        self.order_list.append((product_id, quantity))

        self.productID.set("")
        self.productName.set("")
        self.description.set("")
        self.price.set("")
        self.quantity.set(1)
        self.totalPrice.set("")

    def place_order(self):
        if not self.order_list:
            messagebox.showerror("Error", "No items in the order!")
            return

        if not self.customerID.get() or not self.customerName.get():
            messagebox.showerror("Error", "Please enter customer ID and name!")
            return

        conn = self.connect_to_database()
        if conn:
            cursor = conn.cursor()

            # Retrieve customer ID based on entered customer ID or name
            cursor.execute(f"SELECT CustomerID FROM Customer WHERE CustomerID = '{self.customerID.get()}' OR FullName = '{self.customerName.get()}'")
            customer = cursor.fetchone()

            if not customer:
                messagebox.showerror("Error", "Customer not found!")
                conn.close()
                return

            customer_id = customer[0]

            # Calculate total amount
            total_amount = sum(item[1] for item in self.order_list)

            # Insert order into Order table using parameterized query
            cursor.execute("INSERT INTO `Order` (CustomerID, TotalAmount) VALUES (%s, %s)", (customer_id, total_amount))
            order_id = cursor.lastrowid

            # Insert order items into Order_Product table
            for item in self.order_list:
                product_id, quantity = item
                cursor.execute(f"INSERT INTO Order_Product (OrderID, ProductID, Quantity) VALUES ('{order_id}', '{product_id}', '{quantity}')")

            conn.commit()

            # Fetch total order value from Order_Product table and update Order table
            cursor.execute(f"SELECT SUM(p.Price * op.Quantity) AS TotalOrderValue FROM Product p JOIN Order_Product op ON p.ProductID = op.ProductID WHERE op.OrderID = {order_id}")
            total_order_value = cursor.fetchone()[0]

            cursor.execute("UPDATE `Order` SET TotalAmount = %s WHERE OrderID = %s", (total_order_value, order_id))

            conn.commit()
            conn.close()

            messagebox.showinfo("Success", "Order placed successfully!")
            self.order_list.clear()

    def connect_to_database(self):
        try:
            conn = pymysql.connect(
                host='141.209.241.91',
                user='sp2024bis698g3',
                password='warm',
                db='sp2024bis698g3s'
            )
            return conn
        except pymysql.Error as e:
            messagebox.showerror("Database Error", f"Error: {e}")
            return None

if __name__ == "__main__":
    app = CustomerOrderPage()
    app.mainloop()

 

Vendor Page Python Code:

import tkinter as tk
from tkinter import ttk, messagebox
import pymysql
import random

class MainPage:
    def __init__(self, root):
        self.root = root
        self.root.title("Vendor")

        # Main Frame
        self.main_frame = tk.Frame(self.root)
        self.main_frame.pack(padx=20, pady=20)

        # Place Order Button
        self.place_order_button = ttk.Button(self.main_frame, text="Place Order", command=self.place_order)
        self.place_order_button.grid(row=0, column=0, padx=10, pady=10)

        # Vendor Details Button
        self.vendor_details_button = ttk.Button(self.main_frame, text="Vendor Details", command=self.redirect_to_vendor_details)
        self.vendor_details_button.grid(row=0, column=1, padx=10, pady=10)

    def place_order(self):
        # Instantiate PlaceOrderPage and open it
        place_order_window = tk.Toplevel(self.root)
        place_order_page = PlaceOrderPage(place_order_window)

    def redirect_to_vendor_details(self):
        # Instantiate VendorDetailsPage and open it
        vendor_details_window = tk.Toplevel(self.root)
        vendor_details_page = VendorDetailsPage(vendor_details_window)

class VendorDetailsPage:
    def __init__(self, root):
        self.root = root
        self.root.title("Vendor Details")

        # Main Frame
        self.main_frame = tk.Frame(self.root)
        self.main_frame.pack(padx=20, pady=20)

        # Fetch vendors from database and display details in a grid view
        self.display_vendor_details()

        # Back Button
        self.back_button = ttk.Button(self.root, text="Back", command=self.go_back)
        self.back_button.pack(side=tk.BOTTOM, pady=10)

    def display_vendor_details(self):
        # Connect to MySQL database
        connection = self.connect_to_database()
        if connection:
            try:
                with connection.cursor() as cursor:
                    # Fetch vendor details
                    cursor.execute("SELECT VendorID, VendorName, ContactPerson FROM Vendor")
                    vendors = cursor.fetchall()

                    if vendors:
                        # Display vendor details in a grid view
                        tk.Label(self.main_frame, text="Vendor ID").grid(row=0, column=0, padx=5, pady=5)
                        tk.Label(self.main_frame, text="Vendor Name").grid(row=0, column=1, padx=5, pady=5)
                        tk.Label(self.main_frame, text="Contact Person").grid(row=0, column=2, padx=5, pady=5)
                        
                        for i, vendor in enumerate(vendors, start=1):
                            tk.Label(self.main_frame, text=vendor[0]).grid(row=i, column=0, padx=5, pady=5)
                            tk.Label(self.main_frame, text=vendor[1]).grid(row=i, column=1, padx=5, pady=5)
                            tk.Label(self.main_frame, text=vendor[2]).grid(row=i, column=2, padx=5, pady=5)
                    else:
                        messagebox.showerror("Error", "No vendors found in the database.")
            except pymysql.Error as e:
                messagebox.showerror("Database Error", f"Error executing SQL query: {e}")
            finally:
                connection.close()
        else:
            messagebox.showerror("Database Error", "Failed to connect to the database.")

    def connect_to_database(self):
        try:
            connection = pymysql.connect(
                host="141.209.241.91",
                user="sp2024bis698g3",
                password="warm",
                database="sp2024bis698g3s",
            )
            return connection
        except pymysql.Error as e:
            messagebox.showerror("Database Error", f"Error connecting to MySQL database: {e}")
            return None

    def go_back(self):
        self.root.destroy()

class PlaceOrderPage(tk.Frame):
    def __init__(self, master):
        super().__init__(master)
        self.master = master
        self.master.title("Place Order")

        # Main Frame
        self.main_frame = tk.Frame(self.master)
        self.main_frame.pack(padx=20, pady=20)

        # Product Name Label and Entry
        tk.Label(self.main_frame, text="Product Name:").grid(row=0, column=0, padx=5, pady=5)
        self.product_name_entry = ttk.Combobox(self.main_frame, state="readonly")
        self.product_name_entry.grid(row=0, column=1, padx=5, pady=5)

        # Quantity Label and Entry
        tk.Label(self.main_frame, text="Quantity:").grid(row=1, column=0, padx=5, pady=5)
        self.quantity_entry = ttk.Entry(self.main_frame)
        self.quantity_entry.grid(row=1, column=1, padx=5, pady=5)

        # Vendor Label and Dropdown
        tk.Label(self.main_frame, text="Vendor:").grid(row=2, column=0, padx=5, pady=5)
        self.vendor_dropdown = ttk.Combobox(self.main_frame, state="readonly")
        self.vendor_dropdown.grid(row=2, column=1, padx=5, pady=5)

        # Place Order Button
        self.place_order_button = ttk.Button(self.main_frame, text="Place Order", command=self.place_order)
        self.place_order_button.grid(row=3, columnspan=2, padx=5, pady=10)

        # Populate product and vendor dropdowns
        self.populate_product_dropdown()
        self.populate_vendor_dropdown()

    def place_order(self):
        product_name = self.product_name_entry.get()
        quantity = self.quantity_entry.get()
        vendor_name = self.vendor_dropdown.get()
        if not product_name or not quantity or not vendor_name:
            messagebox.showwarning("Incomplete Information", "Please select a product, enter a quantity, and select a vendor.")
            return

        # Connect to the database
        conn = self.connect_to_database()

        # Get the product ID
        product_id = self.get_product_id(conn, product_name)

        if product_id is None:
            messagebox.showerror("Error", "Selected product not found in the database")
            conn.close()
            return

        # Generate a random order ID
        order_id = self.generate_order_id()

        # Insert the order into the Order_Product table
        cursor = conn.cursor()
        cursor.execute("INSERT INTO Order_Product (OrderID, ProductID, Quantity) VALUES (%s, %s, %s)", (order_id, product_id, quantity))
        conn.commit()

        # Close the database connection
        conn.close()

        # Display success message
        messagebox.showinfo("Success", "Order placed successfully!")

    def populate_product_dropdown(self):
        # Connect to MySQL database
        connection = self.connect_to_database()
        if connection:
            try:
                with connection.cursor() as cursor:
                    # Fetch product names
                    cursor.execute("SELECT Name FROM Product")
                    products = cursor.fetchall()
                    product_names = [product[0] for product in products]
                    self.product_name_entry["values"] = product_names
            except pymysql.Error as e:
                messagebox.showerror("Database Error", f"Error executing SQL query: {e}")
            finally:
                connection.close()
        else:
            messagebox.showerror("Database Error", "Failed to connect to the database.")

    def populate_vendor_dropdown(self):
        # Connect to MySQL database
        connection = self.connect_to_database()
        if connection:
            try:
                with connection.cursor() as cursor:
                    # Fetch vendor names
                    cursor.execute("SELECT VendorName FROM Vendor")
                    vendors = cursor.fetchall()
                    vendor_names = [vendor[0] for vendor in vendors]
                    self.vendor_dropdown["values"] = vendor_names
            except pymysql.Error as e:
                messagebox.showerror("Database Error", f"Error executing SQL query: {e}")
            finally:
                connection.close()
        else:
            messagebox.showerror("Database Error", "Failed to connect to the database.")

    def connect_to_database(self):
        try:
            connection = pymysql.connect(
                host="141.209.241.91",
                user="sp2024bis698g3",
                password="warm",
                database="sp2024bis698g3s",
            )
            return connection
        except pymysql.Error as e:
            messagebox.showerror("Database Error", f"Error connecting to MySQL database: {e}")
            return None

    def get_product_id(self, conn, product_name):
        try:
            with conn.cursor() as cursor:
                cursor.execute("SELECT ProductID FROM Product WHERE Name = %s", (product_name,))
                result = cursor.fetchone()
                if result:
                    return result[0]  # Fetch the first column (ProductID)
                else:
                    return None
        except pymysql.Error as e:
            messagebox.showerror("Database Error", f"Error executing SQL query: {e}")
            return None

    def generate_order_id(self):
        # Generate a random order ID
        return random.randint(1000, 9999)

if __name__ == "__main__":
    root = tk.Tk()
    main_page = MainPage(root)
    root.mainloop()



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

# 🚗 AutoCare - Fullstack Web Application for Automobile Services

**AutoCare** is a fullstack web application designed to simplify automobile service bookings. It allows users to browse service options, view pricing, register or log in, and schedule appointments online. The system also manages user profiles, service records, and booking confirmations, providing a seamless digital experience for vehicle maintenance.

---

## 📌 Features

- 🧰 **User Registration & Login**
- 🗓️ **Online Booking System**
- 🏷️ **View and Compare Service Prices**
- 🛠️ **Multiple Service Categories**:
  - Routine Maintenance
  - Body Work
  - Diagnostics
  - Repairs
  - Towing Services
- 📋 **Booking Confirmation and Order History**
- 🚧 **404 Page Handling**
- 🎨 Fully responsive UI with EJS, CSS, and images

---

## 🛠️ Tech Stack

### Frontend:
- HTML5, CSS3
- EJS Templates
- JavaScript

### Backend:
- Node.js
- Express.js

### Database:
- MySQL
- `Auto Care Database.sql` used to create and populate tables

---

## 📁 Project Structure

AutoCare-Project/
├── Auto Care Database.sql
├── package.json
├── autocare/
│   ├── app.js
│   ├── public/
│   │   ├── styles.css
│   │   └── imgs/
│   │       ├── mid.jpg
│   │       ├── services.jpeg
│   │       └── top.jpg
│   └── views/
│       └── user/
│           ├── 404.ejs
│           ├── ...
├── temp/
│   ├── booking.ejs
│   ├── package.json
│   └── repairs.ejs


---

## ⚙️ How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/ChanagoudaSP/Autocare-Project.git
   cd Autocare-Project/autocare
   
Install Dependancies
npm install

Import the database:

Open MySQL Workbench

Run Auto Care Database.sql to set up the database

Configure DB credentials inside app.js (if needed)

Start the server:
node app.js

Visit:
http://localhost:3000/

📸 Screenshots
![Screenshot 2025-04-13 222101](https://github.com/user-attachments/assets/2b79bff4-6db6-4dc1-99a7-ff1f3419b15d)
![Screenshot 2025-04-13 222124](https://github.com/user-attachments/assets/dea6591d-e615-440e-9b7f-e35f57bf694a)
![Screenshot 2025-04-13 222145](https://github.com/user-attachments/assets/d6af1268-bd42-4aae-8e07-73deac8e9ee8)
![Screenshot 2025-04-13 222211](https://github.com/user-attachments/assets/9f91668f-13b7-4030-9435-614b9b7fa6a2)
![Screenshot 2025-04-13 222244](https://github.com/user-attachments/assets/0a5c341b-fa43-4a8b-83f6-10d9e8603345)
![Screenshot 2025-04-13 222301](https://github.com/user-attachments/assets/5c1dc88e-8864-4c99-9365-30db1c845001)

📬 Contact
Made with ❤️ by Chanagouda S Patil

For feedback or questions, reach out via GitHub or email.

Let me know if you'd like this exported as a real `README.md` file or want to personalize any section further!

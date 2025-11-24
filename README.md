# MealDiary

MealDiary is a full-stack meal tracking application built using **FlutterFlow** and **Firebase** (Authentication, Storage, and Firestore Database).  
The purpose of this project is to demonstrate a complete CRUD-enabled mobile application with clean UI and practical everyday functionality.

## 📌 Overview

MealDiary allows users to log their meals on a selected date, upload meal details, and manage personal recipes.  
All data is synced through Firebase, allowing smooth creation, reading, updating, and deletion of records.

## 🚀 Features

### 🗓️ Calendar-Based Meal Logging
- Users can select a date using a calendar widget.
- Each selected date shows three meal categories:
  - **Breakfast**
  - **Lunch**
  - **Dinner**
- Each category has a **“+” button** to add a new meal.

### 🍽️ Meal Entry (CRUD)
For every meal entry, the user may provide:
- Meal **image** (stored in Firebase Storage)
- Meal **name**
- Meal **calories**
- Meal **ingredients**
<img src ="https://github.com/user-attachments/assets/533ca7c4-d7de-481c-8673-7ab145e96f23" width ="300">

All entered meals appear below the calendar for the chosen date.

<img src="https://github.com/user-attachments/assets/c251f523-092f-4a74-8c0f-23d287663f3a" width="300">

## 📖 Recipes Section

### **My Recipes**
Users can create their own recipes with:
- Recipe image  
- Recipe name  
- Ingredients list  
- Step-by-step instructions  

### **Our Recipes**
A curated collection of built-in recipes provided by the app.

<img src="https://github.com/user-attachments/assets/45db09e5-097c-4a5c-a24e-944e036f020f" width="300">

## 🛠️ Tech Stack

**Frontend:**
- Flutter  
- FlutterFlow (UI builder)  
- Dart  

**Backend:**
- Firebase Authentication  
- Cloud Firestore  
- Firebase Storage

## Screenshots of the UI
<img width="1920" height="1080" alt="Screenshots" src="https://github.com/user-attachments/assets/b7a41a24-a280-4606-aa09-59df2dac13ea" />

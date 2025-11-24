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

All entered meals appear below the calendar for the chosen date.
![Image](https://github.com/user-attachments/assets/ff22eb71-a050-438f-8289-c344f00b8fa2)

## 📖 Recipes Section

### **My Recipes**
Users can create their own recipes with:
- Recipe image  
- Recipe name  
- Ingredients list  
- Step-by-step instructions  

### **Our Recipes**
A curated collection of built-in recipes provided by the app.

## 🛠️ Tech Stack

**Frontend:**
- Flutter  
- FlutterFlow (UI builder)  
- Dart  

**Backend:**
- Firebase Authentication  
- Cloud Firestore  
- Firebase Storage  

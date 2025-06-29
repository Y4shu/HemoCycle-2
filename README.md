# 🩸 HemoCycle - Anemia Monitoring During Menstruation

**Hackathon**: Hacksagon 2025 (National-Level Hackathon) 
**Track**: Mobile App Development   
**Team Name**: Pandamonium  

HemoCycle is a mobile application designed to **monitor anemia during menstruation** by analyzing images of the user's lower eyelid. It empowers menstruating individuals—especially those reluctant to seek medical advice—with a **low-cost, easy-to-use, and non-invasive health monitoring solution**.

---

## 💡 Problem Statement

> Anemia is a widespread yet underdiagnosed health issue among menstruating women, especially in India. Excessive menstrual flow is a key cause of iron deficiency anemia, but stigma and lack of awareness prevent timely diagnosis.

- Over **50% of women globally** and up to **90% in parts of India** suffer from anemia.
- Most remain undiagnosed due to a lack of awareness, medical access, or hesitation in discussing menstrual health.

---

## ✅ Solution Overview

HemoCycle uses image processing to analyze the inner eyelid and detect signs of anemia. It promotes **accessible self-monitoring**, especially for women in rural or underserved areas.

### 🔬 Core Features:
- Image-based monitoring of the lower eyelid for anemia indicators
- Personalized tracking across menstrual cycles
- Health education through curated articles
- Offline functionality for rural accessibility
- Privacy-focused design with minimal data requirements

---

## 📱 App Features

- **Clean UI**: Designed for simplicity and ease of use  
- **Home Tab**: Upload images for monitoring  
- **Discover Tab**: Articles on menstrual and anemia-related health  
- **Profile Tab**: Personalized data and prediction history  
- **Low-bandwidth Optimized**: Works with minimal or no internet connectivity  

---

## 🧠 Tech Stack

### Frontend
- Flutter

### Model (ML)
- TensorFlow *(CNN-based model for eyelid image classification)*

---

## 🔍 Flow & Architecture

1. User uploads an image of their **lower eyelid**  
2. Image is preprocessed and analyzed by a **CNN model**  
3. Prediction is generated (anemic/non-anemic)  
4. Feedback and health tips are displayed to the user  
5. Historical data is stored locally for tracking trends  

---

## 🌟 Novelty & Impact

- Encourages health ownership among users who might avoid clinical visits  
- Aims to **reduce stigma** and improve early detection of anemia  
- Focused on **rural inclusion**, **low cost**, and **offline usability**  

---

## 👥 Team Pandamonium

- [Samiksha Agarwal](https://github.com/Technomad04) - Team Leader 
- [Gargi Kalia](https://github.com/Kaliagargi)  
- [Yashasvi Jain](https://github.com/Y4shu)  

---

## 🛠️ Local Setup Guide

HemoCycle is a standalone Flutter application built entirely on the frontend, with no backend dependencies.

### ✅ Requirements

To run the app locally, you'll need:

- [Flutter SDK 3.8.1+](https://docs.flutter.dev/get-started/install)
- A code editor like **Android Studio** or **VS Code**
- A connected Android/iOS **device or emulator**

---

### 📦 Flutter Dependencies

Your app uses the following packages:

| Package         | Purpose                                |
|-----------------|----------------------------------------|
| `flutter`       | Base SDK                               |
| `cupertino_icons` | iOS-style icons                     |
| `shimmer`       | Loading animations / placeholders      |
| `lottie`        | For JSON-based animations              |
| `flutter_lints` | Static analysis & code linting         |

The app also includes:
- **Custom font**: `DancingScript`
- **Assets**: Lottie animation files and an avatar image

---

### ▶️ How to Run the App

```bash
# 1. Clone the repository
git clone https://github.com/Y4shu/HemoCycle-2.git
cd HemoCycle-2

# 2. Get Flutter dependencies
flutter pub get

# 3. Run the app on an emulator or physical device
flutter run
```
Make sure a device is connected and recognized by flutter devices.


---

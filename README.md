# HW-5

## Description:
Your task is to create an app consisting of 3 screens.

---

## HomeScreen

![HomeScreen](https://github.com/Saadxf/HW-5/assets/123157306/f248f6ad-c3f7-4bf9-830d-2f554da2919e)

- **Input Field**: Users can enter their names using a TextField.
- **Button Action**: An ElevatedButton triggers an action to save the name and navigate.
- **Dependency Injection**: GetIt provides access to a global instance of UserModel.
- **Data Storage**: SharedPreferences saves the user's name persistently.
- **Navigation**: The Navigator class moves to the next screen after saving the name.

---

## NamesScreen

![NamesScreen](https://github.com/Saadxf/HW-5/assets/123157306/b0eca3cb-8db2-4d86-a4dd-f7d6363f10e6)

- **AppBar**: Displays a red-colored app bar with a centered title.
- **Body Content**: Centered column layout with user's name and a "Next" button.
- **Text Display**: Shows the user's name retrieved from SharedPreferences.
- **Next Button**: Navigates to the FeedbackScreen when pressed.

---

## FeedbackScreen

![FeedbackScreen](https://github.com/Saadxf/HW-5/assets/123157306/d61c2518-bfba-4e21-8d66-1044be2be0c2)

- **AppBar**: Blue-colored with the title "Feedback".
- **Body Content**: Displays personalized feedback messages:
  - "My name is" + user's name from UserModel (GetIt).
  - "Nice to meet you" + user's name from SharedPreferences.

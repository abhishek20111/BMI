# BMI Calculator

A simple **BMI Calculator** app built using **Flutter**. This application allows users to calculate their Body Mass Index (BMI) based on their weight (in kilograms) and height (in feet and inches).

## Features

- **User Input**:
    - Input weight in kilograms (kg).
    - Input height in feet and inches.

- **BMI Calculation**:
    - Converts height to meters and calculates BMI using the formula:
      ```
      BMI = weight (kg) / (height in meters)^2
      ```
    - Displays the BMI result rounded to two decimal places.

- **Background Color Feedback**:
    - **Underweight**: BMI less than 18.5 (Background color: Blue).
    - **Normal weight**: BMI between 18.5 and 24.9 (Background color: Green).
    - **Overweight**: BMI greater than 24.9 (Background color: Red).

## Screenshots

![Screenshot 2024-10-16 185756](https://github.com/user-attachments/assets/16e2d248-3b5e-444c-ae69-d9da13eda39e)


## Getting Started

### Prerequisites

To run this project, you will need to have Flutter installed on your local machine. Follow the steps below to get started:

1. [Install Flutter](https://flutter.dev/docs/get-started/install)
2. Ensure you have a code editor like [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio) installed.

### Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/yourusername/bmi-calculator.git
    ```

2. Navigate into the project directory:
    ```bash
    cd bmi-calculator
    ```

3. Get the dependencies:
    ```bash
    flutter pub get
    ```

4. Run the app:
    ```bash
    flutter run
    ```

## Usage

1. Input your weight in kilograms.
2. Input your height in feet and inches.
3. Click the **Calculate** button to view your BMI.
4. The background color will change based on your BMI result:
    - Blue: Underweight
    - Green: Normal weight
    - Red: Overweight

## BMI Formula

BMI is calculated using the formula:

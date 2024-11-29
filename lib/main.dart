import 'dart:io';

void main() {
  while (true) { // Start a loop to allow multiple calculations
    print("Enter Your Weight (in kg):");
    String weightInput = stdin.readLineSync()!; // My weight

    double weight;
    try {
      weight = double.parse(weightInput);
      if (weight <= 0) {
        print('Error: Weight must be positive.');
        continue; // Go to the next iteration
      }
    } catch (e) {
      print('Error: Please enter a valid number for Weight.');
      continue; // Go to the next iteration
    }

    print("Enter Your Height (in meters):");
    String heightInput = stdin.readLineSync()!; // My height
    double height;
    try {
      height = double.parse(heightInput);
      if (height <= 0) {
        print('Error: Height must be positive.');
        continue; // Go to the next iteration
      }
    } catch (e) {
      print('Error: Please enter a valid number for Height.');
      continue; // Go to the next iteration
    }

    double bmi = weight / (height * height);
    print('BMI = ${bmi.toStringAsFixed(2)}');
    print('\n');

    String category;
    String tips;
    if (bmi < 18.5) {
      category = 'Underweight';
      tips = 'Consider consulting a healthcare provider for personalized advice.';
    } else if (bmi >= 18.5 && bmi < 25) {
      category = 'Normal weight';
      tips = 'Great job! Maintain a balanced diet and regular exercise.';
    } else if (bmi >= 25 && bmi < 30) {
      category = 'Overweight';
      tips = 'Consider incorporating more physical activity into your routine.';
    } else {
      category = 'Obesity';
      tips = 'It may be beneficial to consult a healthcare provider for guidance.';
    }

    print('Category: $category');
    print('Health Tip: $tips');

    print('Do you want to perform another calculation? (yes/no)');
    String response = stdin.readLineSync()!;
    if (response.toLowerCase() != 'yes') {
      print('Thank you for using the BMI calculator!'); // Thank the user
      break; // Exit the loop if the user does not want to continue
    }
  }
}
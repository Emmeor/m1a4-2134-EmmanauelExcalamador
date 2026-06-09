# Module 1 – Activity 4 – Calculator (Dart)

Practice arithmetic and input/output by building a small calculator.

## What to do

### 1. Fill in your details

Open `student.json` and fill in every field (use the **class code** your
instructor gave you):

```json
{
  "classCode": "1234",
  "fullName": "Juan Dela Cruz",
  "studentNumber": "2026-12345",
  "studentEmail": "juan.delacruz@hau.edu.ph",
  "personalEmail": "juan@example.com",
  "githubAccount": "juandelacruz"
}
```

### 2. Write the program

Open [`bin/calculator.dart`](bin/calculator.dart). The program reads **two
numbers** and displays:

- the **sum**
- the **difference** (1st number − 2nd number)
- the **product**
- the **quotient** (1st number ÷ 2nd number)
- the **average** of the two numbers

**Input order matters** (the autograder feeds input in this order): first the
**first number**, then the **second number**.

Run it yourself:

```bash
dart run bin/calculator.dart
```

Example — with `10` then `4`, the output should contain: sum `14`,
difference `6`, product `40`, quotient `2.5`, average `7`.

## Running the test

```bash
dart pub get
dart test
```

This activity is graded by **one test** worth the activity's points. It passes
only when **both** are true:

- ✅ all five results are correct for the test input
- ✅ every field in `student.json` is filled in

## Submitting on Canvas

When the test passes locally, **commit and push**:

```bash
git add -A
git commit -m "Activity 4 complete"
git push
```

Pushing triggers the **Autograde** workflow. To confirm it passed:

1. Open your repo on GitHub and click the **Actions** tab.
2. Open the latest **Autograde** run and confirm the green ✅ check
   and the "1 / 1 tests passed" summary.

Then submit **both** on Canvas:

1. **A screenshot** of the green Autograde run.
2. **The link to that Actions run** (copy the URL from your browser).

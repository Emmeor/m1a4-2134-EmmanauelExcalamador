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

> **Keep `student.json` identical across all your activities.** The autograder
> cross-checks these fields between your repos, and a mismatch (e.g. a different
> `classCode` in one activity) is flagged. The `classCode` must also match the
> one in your repo name.

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

## Set up your repo

Before you write any code, create **your own copy** of this activity from the
template. Do not work in the template itself.

1. **Create from the template.** Open the template repo and click
   **Use this template → Create a new repository**.
2. **Set the owner to the course org.** Under *Owner*, choose the **`HAU-6ADET`
   course org**, **not** your personal account.
3. **Name it by the convention** `m<module>a<activity>-<classcode>-<yourname>`.
   For this activity that's **`m1a4-<classcode>-yourname`** (e.g.
   `m1a4-1234-juandelacruz`). The `<classcode>` must match the one you put in
   `student.json`.
4. **Make it Private.** Set *Visibility* to **Private** so classmates can't see
   your work.

Then clone **your** new repo and work there:

```bash
git clone https://github.com/HAU-6ADET/m1a4-<classcode>-yourname.git
cd m1a4-<classcode>-yourname
```

## Running the test

```bash
dart pub get
dart test
```

This activity is graded by **16 tests** (1 point each). They check:

- ✅ each of the 6 fields in `student.json` is filled in (6 tests)
- ✅ all five results (sum, difference, product, quotient, average) are correct
  for two different input pairs (10 tests)

Each part is graded independently, so you earn partial credit for the parts
you finish.

## Confirm your submission

Your repo **is** your submission, so there is nothing to upload anywhere.
**Pushing your work is how you submit it.** When the test passes locally,
**commit and push**:

```bash
git add -A
git commit -m "Activity 4 complete"
git push
```

Pushing triggers the **Autograde** workflow. Confirm your submission landed:

1. Open your repo on GitHub and click the **Actions** tab.
2. Open the latest **Autograde** run and confirm the green ✅ check
   and the "16 / 16 tests passed" summary.

# be_spoke

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

---STEP BY STEP ON HOW THE PROJECT WILL WORK WITH BACKEND--- 

I will be using python(django) as my backend.

Will also use BLOC as my state management.

I will use Dio as my http client.

The first screen upon lunching the app is ths Splash Screen.

You then navigate to either dashboard or login screen.

At the point of login, after the credentials has been provided and validated,
I send a POST request to the server using Dio, I would have created a response file,
Which I will then you to display on the UI if request is successful or not
If it's successful I route to the dashboard

And for the pages, I will be sending GET requests to fetch data from the server
While I use my BlocListener to check state of the request if it's either loading, success or failure.

For each state
Loading - I show a loading state (circular loader),
Success - I display the data on the UI.
Failure - I show and empty state with error message

And for Success state that has empty list I show my empty state with empty list as information


--- PROJECT SETUP PROCESS --- 
Visit my Github account and copy the peoject repo link

Paste in your terminal

For save process, just create a branch out the dev branch

Update the dependencies

And run the app on your emulator or you build an apk and run on real device

Thank YOU.
Yours Sincerely,
Muhammad Ojo.
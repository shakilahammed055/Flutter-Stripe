# Strip_payment_sintegration

A new Flutter project.

## Getting Started

For implement Stripe Payment Integration you have to do 

At First 
you have the required dependencies in your pubspec.yaml file:

flutter_stripe: ^latest_version
http: ^latest_version

after this run the following commands in the terminal

flutter pub get

2nd you have to do all thing for andriod user

Android
This plugin requires several changes to be able to work on Android devices. Please make sure you follow all these steps:

Use Android 5.0 (API level 21) and above.
Use Kotlin version 1.8.0 and above: example
Requires Android Gradle plugin 8 and higher
Using a descendant of Theme.AppCompat for your activity: example, example night theme
Using an up-to-date Android gradle build tools version: example and an up-to-date gradle version accordingly: example
Using FlutterFragmentActivity instead of FlutterActivity in MainActivity.kt: example
Add the following rules to your proguard-rules.pro file: example
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivity$g
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivityStarter$Args
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivityStarter$Error
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivityStarter
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningEphemeralKeyProvider
Add the following line to your gradle.properties file: example
android.enableR8.fullMode=false
This will prevent crashes with the Stripe SDK on Android (see issue).

Rebuild the app, as the above changes don't update with hot reload
These changes are needed because the Android Stripe SDK requires the use of the AppCompat theme for their UI components and the Support Fragment Manager for the Payment Sheets

If you are having troubles to make this package to work on Android, join this discussion to get some support.

#3rd 
you have to create a stripe account, after creating account goto developer option there you will get api key,


#card information



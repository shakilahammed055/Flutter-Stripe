# Strip_payment_sintegration

A new Flutter project.

## Getting Started

For implement Stripe Payment Integration you have to do 

At First 
you have the required dependencies in your pubspec.yaml file:

flutter_stripe: ^latest_version<br/>
http: ^latest_version

after this run the following commands in the terminal

flutter pub get

2nd you have to do all thing for andriod user

Android
This plugin requires several changes to be able to work on Android devices. Please make sure you follow all these steps:

Use Android 5.0 (API level 21) and above.<br/>
Use Kotlin version 1.8.0 and above: [example](https://github.com/flutter-stripe/flutter_stripe/blob/main/example/android/settings.gradle#L22)<br/>
Requires Android Gradle plugin 8 and higher<br/>
Using a descendant of Theme.AppCompat for your activity: [example](https://github.com/flutter-stripe/flutter_stripe/blob/main/example/android/app/src/main/res/values/styles.xml#L15), [example night theme](https://github.com/flutter-stripe/flutter_stripe/blob/main/example/android/app/src/main/res/values-night/styles.xml#L16)<br/>
Using an up-to-date Android gradle build tools version: [example](https://github.com/flutter-stripe/flutter_stripe/blob/main/example/android/build.gradle#L9) and an up-to-date gradle version accordingly: [example](https://github.com/flutter-stripe/flutter_stripe/blob/main/example/android/gradle/wrapper/gradle-wrapper.properties#L6)<br/>
Using FlutterFragmentActivity instead of FlutterActivity in MainActivity.kt: [example](https://github.com/flutter-stripe/flutter_stripe/blob/79b201a2e9b827196d6a97bb41e1d0e526632a5a/example/android/app/src/main/kotlin/com/flutter/stripe/example/MainActivity.kt#L6)<br/>
Add the following rules to your proguard-rules.pro file: [example](https://github.com/flutter-stripe/flutter_stripe/blob/main/example/android/app/proguard-rules.pro)<br/>
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivity$g<br/>
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivityStarter$Args<br/>
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivityStarter$Error<br/>
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivityStarter<br/>
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningEphemeralKeyProvider<br/>
Add the following line to your gradle.properties file: [example](https://github.com/flutter-stripe/flutter_stripe/blob/main/example/android/gradle.properties)<br/>
android.enableR8.fullMode=false<br/>
This will prevent crashes with the Stripe SDK on Android (see [issue](https://github.com/flutter-stripe/flutter_stripe/issues/1909)).<br/>

Rebuild the app, as the above changes don't update with hot reload<br/>
These changes are needed because the Android Stripe SDK requires the use of the AppCompat theme for their UI components and the Support Fragment Manager for the Payment Sheets<br/>

If you are having troubles to make this package to work on Android, join [this discussion](https://github.com/flutter-stripe/flutter_stripe/discussions/538) to get some support.<br/>

#3rd 
you have to create a stripe account, after creating account goto developer option there you will get api key,<br/>


#card information<br/>

![Image](https://github.com/user-attachments/assets/9eb6e819-139f-4237-b914-6f86d1c6d1e8)<br/>

#vedio link: https://www.loom.com/share/a8500734974241f58f2d96a2db8c909a?sid=78cab195-590e-4443-995b-98f9a34ce6bb


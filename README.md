# Flutter Food Delivery Application

This application is not completed yet. Currently, I am working on it.

## Getting Started

This project is a starting point for a Flutter application from Figma.

<a href="https://www.figma.com/file/UejHMOxhcngpcj6nvoo68e/Fast-Food---A-Food-Delivery-App-(Community)-(Community)?node-id=31%3A19&t=H6vbo6sUVuNSvxR9-0" title="Flutter Food Delivery Application">Preview Figma Food Delivery UI</a>


<a href="https://www.youtube.com/watch?v=kJ9HZ4A4FXw&t=1272s" title="Flutter Food Delivery Application">My development progress - Watch it on YouTube</a>

## Features:
<ul>
<li>Splash</li>
<li>Onboarding</li>
<li>Welcome</li>
<li>Login</li>
<li>Forgot Password</li>
<li>Sign Up</li>
</ul>

## Technologies & Architecture
<p>Flutter, Dart</p>

### Firebase
<ul>
<li>Authentication</li>
<li>Firestore</li>
<li>Storage</li>
</ul>

### Navigation
<ul>
<li>GoRouter</li>
</ul>

### Architecture components
<ul>
<li>BLoC</li>
</ul>

#### Screenshots

#### Splash Screen
<img src="screenshots\splash_screen.png" alt="Splash Screen - Flutter Food Delivery from Figma" title="Splash Screen - Flutter Food Delivery from Figma" height="700" width="320"/>

#### OnBoarding Screen
<table border="0"><tr>
<td>
<img src="screenshots\onBoarding_first.png" alt="onBoarding Screen - Flutter Food Delivery from Figma" title="onBoarding Screen - Flutter Food Delivery from Figma" height="700" width="320"/>
</td>
<td>
<img src="screenshots\onBoarding_second.png" alt="onBoarding Screen - Flutter Food Delivery from Figma" title="onBoarding Screen - Flutter Food Delivery from Figma" height="700" width="320"/>
</td>

<td>
<img src="screenshots\onBoarding_last.png" alt="onBoarding Screen - Flutter Food Delivery from Figma" title="onBoarding Screen - Flutter Food Delivery from Figma" height="700" width="320"/>
</td>

</tr>
</table>

#### Welcome Screen
<img src="screenshots\welcome.png" alt="Welcome Screen - Flutter Food Delivery from Figma" title="Welcome Screen - Flutter Food Delivery from Figma" height="700" width="320"/>

#### SignIn Screen
<img src="screenshots\sign_in.png" alt="SignIn Screen - Flutter Food Delivery from Figma" title="SignIn Screen - Flutter Food Delivery from Figma" height="700" width="320"/>

#### SignUp Screen
<img src="screenshots\sign_up.png" alt="SignUp Screen - Flutter Food Delivery from Figma" title="SignUp Screen - Flutter Food Delivery from Figma" height="700" width="320"/>

#### ForgotPassword Screen
<img src="screenshots\forgot_password.png" alt="Forgot Password Screen - Flutter Food Delivery from Figma" title="Forgot Password Screen - Flutter Food Delivery from Figma" height="700" width="320"/>

## To Generate Android release steps:

### Generate FAT APK
<ul>
<li>flutter clean</li>
<li>flutter build apk --release</li>
</ul>

<p>Generate split APK's</p>

<ul>
<li>flutter clean</li>
<li>flutter build apk --split-per-abi --release</li>
</ul>

### iOS release steps 

<p>Set iOS deployment target</p>

<p>Follow below steps</p>

<ul>
<li>setup flutter sdk</li>
<li>get packages</li>
<li>open runner.xcworkspace from ids folder</li>
<li>update version code in yaml</li>
</ul>

<p>Bellow commands will generate the runner.app file</p>
<ul>
<li>flutter clean</li>
<li>flutter build ios --release</li>
</ul>
<p>Now open the xcode run/build to check if project has error</p>

<p>Select Product -> Archive Follow the uploading steps</p>

<p>Thanks for your love and support</p> 
<h3>Glory to Ukraine!</h3>

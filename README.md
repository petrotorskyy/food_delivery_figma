# Flutter Food Delivery Application

This application is not completed yet. Currently, I am working on it.

## Getting Started

This project is a starting point for a Flutter application from Figma.

<a href="https://www.figma.com/file/UejHMOxhcngpcj6nvoo68e/Fast-Food---A-Food-Delivery-App-(Community)-(Community)?node-id=31%3A19&t=H6vbo6sUVuNSvxR9-0" title="Flutter Food Delivery Application">Preview Figma Food Delivery UI</a>


<a href="https://www.youtube.com/watch?v=kJ9HZ4A4FXw&t=1272s" title="Flutter Food Delivery Application">My development progress - Watch it on YouTube</a>

## Features:
<ul><li>Splash</li>
<li>Onboarding</li>
<li>Welcome</li>
<li>Login</li>
<li>Forgot Password</li>
<li>Sign Up</li>

</ul>

## To Generate Android release steps:

### Generate FAT APK
<ul>
<li>flutter clean</li>
<li>flutter build apk --release</li>
</ul>

Generate split APK's

<ul>
<li>flutter clean</li>
<li>flutter build apk --split-per-abi --release</li>
</ul>

### iOS release steps 

Set iOS deployment target

Follow below steps

<ul>
<li>setup flutter sdk</li>
<li>get packages</li>
<li>open runner.xcworkspace from ids folder</li>
<li>update version code in yaml</li>
</ul>

Bellow commands will generate the runner.app file

flutter clean
flutter build ios --release
Now open the xcode run/build to check if project has error

Select Product -> Archive Follow the uploading steps

<p>Thanks for your love and support</p> 
<h3>Glory to Ukraine!</h3>

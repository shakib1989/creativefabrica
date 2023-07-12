# creativefabrica

Creative Fabrica Assessment

## Getting Started

## Setup

### Android Setup

Make sure you have the latest android version 33 installed and the respective build tools

### Flutter Setup
Please use flutter version 3.10.5 to build the application

### Gradle Setup
Please make sure to use gradle version 7.6.
This could be done by updating the following variable in android/gradle/wrapper/gradle-wrapper.properties

distributionUrl=https\://services.gradle.org/distributions/gradle-7.6-all.zip

### Environment Setup
1. Create a a env.json file in {project_root_location}/assets/env 
2. The env.json file should contain the following json. Please make sure to update the value of all the required information wrapped by { }
```
{
    "nasa":{
        "apiKey": "{api_key}"
    }
}
```

##Run the Apk

Make sure to set the dart entry point to the following in android studio:
```
{path_to_project_root}\lib\env\env_development.dart
```

## Build APK
Build the APK via the command : 
```
flutter build apk -t lib/env/env_development.dart --debug 
```
Change --debug to --release for release build


## Dist Apk
Apks can be found in dist folder
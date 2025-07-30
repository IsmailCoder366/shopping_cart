plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

// 🔧 Updated SDK & NDK versions to match plugin requirements
val flutterCompileSdkVersion = 35
val flutterNdkVersion = "27.0.12077973"
val flutterMinSdkVersion = 21
val flutterTargetSdkVersion = 35
val flutterVersionCode = 1
val flutterVersionName = "1.0"

android {
    namespace = "com.example.shopping_cart"
    compileSdk = flutterCompileSdkVersion
    ndkVersion = flutterNdkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.shopping_cart"
        minSdk = flutterMinSdkVersion
        targetSdk = flutterTargetSdkVersion
        versionCode = flutterVersionCode
        versionName = flutterVersionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

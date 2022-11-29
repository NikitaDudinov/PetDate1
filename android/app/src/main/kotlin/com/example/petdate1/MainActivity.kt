package com.example.petdate1

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import com.yandex.mapkit.MapKitFactory
class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        MapKitFactory.setLocale("YOUR_LOCALE") // Your preferred language. Not required, defaults to system language
        MapKitFactory.setApiKey("620fdd68-66a4-4e11-be30-757b55be47bf") // Your generated API key
        super.configureFlutterEngine(flutterEngine)
    }
    fun onCreate() {
        MapKitFactory.setApiKey("620fdd68-66a4-4e11-be30-757b55be47bf")


    }
}



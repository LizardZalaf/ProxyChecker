# Основные правила для OkHttp3
-keepattributes Signature
-keepattributes AnnotationDefault
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }
-dontwarn okhttp3.**
-dontwarn okio.**
-dontwarn javax.annotation.**
-dontwarn org.conscrypt.**

# Добавленные правила из вашей ошибки (re2j)
-dontwarn com.google.re2j.Matcher
-dontwarn com.google.re2j.Pattern

# Jsoup
-keep class org.jsoup.** { *; }

# Корутины
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}
-keepclassmembernames class kotlinx.** {
    volatile <fields>;
}

# StarFieldView и другие кастомные элементы UI
-keep class com.example.proxychecker.StarFieldView { *; }
-keep class com.example.proxychecker.ProxyItem { *; }
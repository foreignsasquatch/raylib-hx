# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Keep the GameActivity class and its methods for launching the native application.
-keep class org.raylib.GameActivity {
    public <methods>;
}

# Keep the Features class and its methods to call them from the native application.
-keep class org.raymob.Features {
    public <methods>;
}

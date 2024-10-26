package org.raymob.features;

import android.app.NativeActivity;
import android.view.WindowManager;
import android.view.View;
import android.os.Build;

public class DisplayManager 
{
    private final NativeActivity activity;

    public DisplayManager(android.content.Context context) 
    {
        activity = (NativeActivity) context;

        keepScreenOn(true);
        setImmersiveMode();
        renderIntoCutoutArea();
    }

    public void keepScreenOn(boolean keepOn) 
    {
        if (keepOn)
            activity.getWindow().addFlags(LayoutParams.FLAG_KEEP_SCREEN_ON);
        else
            activity.getWindow().clearFlags(LayoutParams.FLAG_KEEP_SCREEN_ON);
    }

    public void setImmersiveMode() 
    {
        activity.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_FULLSCREEN | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN | View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_LAYOUT_STABLE);
    }

    public void renderIntoCutoutArea() 
    {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) 
        {
            WindowManager.LayoutParams layoutParams = activity.getWindow().getAttributes();
            layoutParams.layoutInDisplayCutoutMode = WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
            activity.getWindow().setAttributes(layoutParams);
        }
    }
}

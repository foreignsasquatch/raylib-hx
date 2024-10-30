package org.raylib;

import android.app.NativeActivity;
import android.view.WindowManager;
import android.view.View;
import android.os.Build;
import android.os.Bundle;

public class GameActivity extends NativeActivity
{
    private Features features;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        setImmersiveMode();
        renderIntoCutoutArea();

        super.onCreate(savedInstanceState);
    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus)
    {
        super.onWindowFocusChanged(hasFocus);

        if (hasFocus)
            setImmersiveMode();
    }

    public void setImmersiveMode() 
    {
        getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_FULLSCREEN | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN | View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_LAYOUT_STABLE);
    }

    public void renderIntoCutoutArea() 
    {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) 
        {
            WindowManager.LayoutParams layoutParams = activity.getWindow().getAttributes();
            layoutParams.layoutInDisplayCutoutMode = WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
            getWindow().setAttributes(layoutParams);
        }
    }
}

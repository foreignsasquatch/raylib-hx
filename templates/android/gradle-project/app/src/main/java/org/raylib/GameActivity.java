package org.raylib;

import android.app.NativeActivity;
import android.view.KeyEvent;
import android.os.Bundle;
import org.raymob.Features;

public class GameActivity extends NativeActivity
{
    private Features features;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);

        features = new Features(this);
    }

    @Override
    protected void onWindowFocusChanged(boolean hasFocus)
    {
        super.onWindowFocusChanged(hasFocus);

        if (features != null)
        {
            if (hasFocus)
                features.setImmersiveMode();
        }
    }

    @Override
    protected boolean onKeyUp(int keyCode, KeyEvent event)
    {
        if (features != null)
            features.onKeyUpEvent(event);

        return super.onKeyDown(keyCode, event);
    }

    public Features getFeatures()
    {
        return features;
    }
}

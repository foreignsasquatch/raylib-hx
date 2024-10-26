package org.raymob;

import android.content.Context;
import org.raymob.features.Accelerometer;
import org.raymob.features.DisplayManager;
import org.raymob.features.SoftKeyboard;
import org.raymob.features.Vibration;

public class Features
{
    private final Accelerometer accelerometer;
    private final DisplayManager display;
    private final SoftKeyboard softKeyboard;
    private final Vibration vibrator;

    public Features(Context context)
    {
        vibrator = new Vibration(context);
        accelerometer = new Accelerometer(context);
        softKeyboard = new SoftKeyboard(context);
        display = new DisplayManager(context);
    }

    public void vibrate(float seconds)
    {
        vibrator.vibrate(seconds);
    }

    public void startAccelerometerListening()
    {
        accelerometer.startListening();
    }

    public void stopAccelerometerListening()
    {
        accelerometer.stopListening();
    }

    public float getAccelerometerX()
    {
        return accelerometer.getX();
    }

    public float getAccelerometerY()
    {
        return accelerometer.getY();
    }

    public float getAccelerometerZ()
    {
        return accelerometer.getZ();
    }

    public void showKeyboard()
    {
        softKeyboard.showKeyboard();
    }

    public void hideKeyboard()
    {
        softKeyboard.hideKeyboard();
    }

    public boolean isKeyboardActive()
    {
        return softKeyboard.isActive();
    }

    public int getLastKeyCode()
    {
        return softKeyboard.getLastKeyCode();
    }

    public char getLastKeyLabel()
    {
        return softKeyboard.getLastKeyLabel();
    }

    public int getLastKeyUnicode()
    {
        return softKeyboard.getLastKeyUnicode();
    }

    public void clearLastKeyEvent()
    {
        softKeyboard.clearLastEvent();
    }

    public void onKeyUpEvent(android.view.KeyEvent keyEvent)
    {
        softKeyboard.onKeyUpEvent(keyEvent);
    }

    public void keepScreenOn(boolean keepOn)
    {
        display.keepScreenOn(keepOn);
    }

    public void setImmersiveMode()
    {
        display.setImmersiveMode();
    }
}

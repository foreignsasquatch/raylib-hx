package org.raymob.features;

import android.content.Context;
import android.os.Build;
import android.os.VibrationEffect;
import android.os.Vibrator;

public class Vibration
{
    private final Vibrator vibrator;

    public Vibration(Context context)
    {
        vibrator = (Vibrator) context.getSystemService(Context.VIBRATOR_SERVICE);
    }

    public void vibrate(float seconds)
    {
        if (vibrator != null && vibrator.hasVibrator())
        {
            long milliseconds = (long) (seconds * 1000);

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O)
                vibrator.vibrate(VibrationEffect.createOneShot(milliseconds, VibrationEffect.DEFAULT_AMPLITUDE));
            else
                vibrator.vibrate(milliseconds);
        }
    }
}

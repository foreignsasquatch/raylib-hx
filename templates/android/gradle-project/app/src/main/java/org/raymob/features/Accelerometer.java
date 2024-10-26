package org.raymob.features;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

public class Accelerometer implements SensorEventListener 
{
    private final SensorManager sensorManager;
    private final Sensor accelerometer;
    private final float[] accelerometerValues = new float[3];

    public Accelerometer(Context context) 
    {
        sensorManager = (SensorManager) context.getSystemService(Context.SENSOR_SERVICE);

        if (sensorManager != null)
            accelerometer = sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
        else
            accelerometer = null;
    }

    public void startListening() 
    {
        if (sensorManager != null && accelerometer != null)
            sensorManager.registerListener(this, accelerometer, SensorManager.SENSOR_DELAY_NORMAL);
    }

    public void stopListening() 
    {
        if (sensorManager != null)
            sensorManager.unregisterListener(this);
    }

    public float getX() 
    {
        return accelerometerValues[0];
    }

    public float getY() 
    {
        return accelerometerValues[1];
    }

    public float getZ() 
    {
        return accelerometerValues[2];
    }

    @Override
    protected void onSensorChanged(SensorEvent event) 
    {
        if (event.sensor.getType() == Sensor.TYPE_ACCELEROMETER) 
        {
            accelerometerValues[0] = event.values[0];
            accelerometerValues[1] = event.values[1];
            accelerometerValues[2] = event.values[2];
        }
    }
}

package org.raymob.features;

import android.view.inputmethod.InputMethodManager;
import android.app.NativeActivity;
import android.content.Context;
import android.view.KeyEvent;

public class SoftKeyboard 
{
    private final Context context;
    private final InputMethodManager imm;
    private KeyEvent lastKeyEvent = null;

    public SoftKeyboard(Context context) 
    {
        this.context = context;

        imm = (InputMethodManager) context.getSystemService(Context.INPUT_METHOD_SERVICE);
    }

    public void showKeyboard() 
    {
        if (context instanceof NativeActivity) 
            imm.showSoftInput(((NativeActivity) context).getWindow().getDecorView(), InputMethodManager.SHOW_FORCED);
    }

    public void hideKeyboard() 
    {
        if (context instanceof NativeActivity) 
            imm.hideSoftInputFromWindow(((NativeActivity) context).getWindow().getDecorView().getWindowToken(), 0);
    }

    public boolean isActive() 
    {
        return context instanceof NativeActivity && imm.isActive(((NativeActivity) context).getWindow().getDecorView());
    }

    public int getLastKeyCode() 
    {
        return lastKeyEvent != null ? lastKeyEvent.getKeyCode() : 0;
    }

    public char getLastKeyLabel() 
    {
        return lastKeyEvent != null ? lastKeyEvent.getDisplayLabel() : '\0';
    }

    public int getLastKeyUnicode() 
    {
        return lastKeyEvent != null ? lastKeyEvent.getUnicodeChar() : 0;
    }

    public void clearLastEvent() 
    {
        lastKeyEvent = null;
    }

    public void onKeyUpEvent(KeyEvent event) 
    {
        lastKeyEvent = event;
    }
}

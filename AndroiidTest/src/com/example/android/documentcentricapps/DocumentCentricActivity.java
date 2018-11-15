package com.example.android.documentcentricapps;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.util.Log;
import android.view.View;
import android.widget.CheckBox;


public class DocumentCentricActivity extends Activity {

    private final static String TAG = "DocumentCentricActivity";

    public final static String KEY_EXTRA_NEW_DOCUMENT_COUNTER = "KEY_EXTRA_NEW_DOCUMENT_COUNTER";

    private static int mDocumentCounter = 0;

    private CheckBox mCheckbox;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_document_centric_main);
        mCheckbox = (CheckBox) findViewById(R.id.multiple_task_checkbox);
    }

    @Override
    public void onPostCreate(Bundle savedInstanceState, PersistableBundle persistentState) {
        super.onPostCreate(savedInstanceState, persistentState);
        // Restore state from PersistableBundle
        if (persistentState != null) {
            mDocumentCounter = persistentState.getInt(KEY_EXTRA_NEW_DOCUMENT_COUNTER);
        }
    }

    @Override
    public void onSaveInstanceState(Bundle outState, PersistableBundle outPersistentState) {
        
        outPersistentState.putInt(KEY_EXTRA_NEW_DOCUMENT_COUNTER, mDocumentCounter);
        super.onSaveInstanceState(outState, outPersistentState);
    }

    public void createNewDocument(View view) {
        boolean useMultipleTasks = mCheckbox.isChecked();
        final Intent newDocumentIntent = newDocumentIntent();
        if (useMultipleTasks) {
          
            newDocumentIntent.addFlags(Intent.FLAG_ACTIVITY_MULTIPLE_TASK);
        }
        startActivity(newDocumentIntent);
    }

    private Intent newDocumentIntent() {
        final Intent newDocumentIntent = new Intent(this, NewDocumentActivity.class);
        newDocumentIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_DOCUMENT);
        newDocumentIntent.putExtra(KEY_EXTRA_NEW_DOCUMENT_COUNTER, incrementAndGet());
        return newDocumentIntent;
    }

    private static int incrementAndGet() {
        Log.d(TAG, "incrementAndGet(): " + mDocumentCounter);
        return mDocumentCounter++;
    }

}

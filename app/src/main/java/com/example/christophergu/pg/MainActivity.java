package com.example.christophergu.pg;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    private TextView mUsername, mDob;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mUsername = findViewById(R.id.username);
        mDob = findViewById(R.id.dob);

        Intent intent = getIntent();
        String username = intent.getStringExtra(SignInActivity.strUsername);
        String dob = intent.getStringExtra(SignInActivity.strDob);

        mUsername.setText(username);
        mDob.setText(dob);
    }
}
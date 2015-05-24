package com.example.testaes;

import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.widget.TextView;

import com.example.util.ase.BackAES;

public class MainActivity extends ActionBarActivity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		String str = "";
		try {
			str = new String(BackAES.encrypt("TEST", "admin00000000000", 0));
			((TextView)findViewById(R.id.textView1)).setText(str);
			str = BackAES.decrypt(str, "admin00000000000", 0);
			((TextView)findViewById(R.id.textView2)).setText(str);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

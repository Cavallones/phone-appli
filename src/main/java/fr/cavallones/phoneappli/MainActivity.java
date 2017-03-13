package fr.cavallones.phoneappli;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import android.view.View;

import fr.cavallones.phoneappli.R;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        TextView text = new TextView(this);
        text.setText("Bonjour, vous me devez 1 000 000€.");
        setContentView(R.layout.layout_activity);
    }
}

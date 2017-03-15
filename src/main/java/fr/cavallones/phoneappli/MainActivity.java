package fr.cavallones.phoneappli;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import android.view.View;

<<<<<<< HEAD
=======
import fr.cavallones.phoneappli.R;

>>>>>>> 49c171ac6cfaae2f2c312f16b05513b08fb6830b
public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        TextView text = new TextView(this);
        text.setText("Bonjour, vous me devez 1 000 000€.");
        setContentView(R.layout.layout_activity);
    }
}

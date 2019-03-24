package miui.preference;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.miui.internal.R;
import miui.widget.SeekBar;

public class SeekBarDialogPreference extends DialogPreference {
    private Drawable Ew = getDialogIcon();

    public SeekBarDialogPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setDialogLayoutResource(R.layout.seekbar_dialog);
        createActionButtons();
        setDialogIcon(null);
    }

    protected void createActionButtons() {
        setPositiveButtonText(17039370);
        setNegativeButtonText(17039360);
    }

    protected void onBindDialogView(View view) {
        super.onBindDialogView(view);
        ImageView imageView = (ImageView) view.findViewById(R.id.icon);
        if (this.Ew != null) {
            imageView.setImageDrawable(this.Ew);
        } else {
            imageView.setVisibility(8);
        }
    }

    protected static SeekBar getSeekBar(View view) {
        return (SeekBar) view.findViewById(R.id.seekbar);
    }
}

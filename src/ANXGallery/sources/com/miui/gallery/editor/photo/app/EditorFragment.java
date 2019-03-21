package com.miui.gallery.editor.photo.app;

import android.app.Activity;
import android.app.Fragment;
import com.miui.gallery.editor.photo.utils.Attachable;

public class EditorFragment extends Fragment {
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        Fragment parent = getParentFragment();
        if (parent instanceof Attachable) {
            ((Attachable) parent).attach(this);
        }
    }
}

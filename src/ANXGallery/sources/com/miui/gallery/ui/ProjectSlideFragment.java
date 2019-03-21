package com.miui.gallery.ui;

import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;

public class ProjectSlideFragment extends Fragment {
    public static void showProjectSlideFragment(BaseActivity activity, miui.app.Fragment targetFragment, String connectedDevice) {
        Fragment projectSlideFragment = new ProjectSlideFragment();
        Bundle data = new Bundle();
        data.putString("photo_connected_device", connectedDevice);
        projectSlideFragment.setArguments(data);
        if (targetFragment != null) {
            projectSlideFragment.setTargetFragment(targetFragment, 24);
        }
        activity.startFragment(projectSlideFragment, null, true, true);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.projection_slide, container, false);
        ((TextView) view.findViewById(R.id.project_slide_title)).setText(getActivity().getResources().getString(R.string.projection_slide_playing, new Object[]{getArguments().getString("photo_connected_device")}));
        view.findViewById(R.id.project_slide_exit).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                ProjectSlideFragment.this.setResult();
                ProjectSlideFragment.this.getActivity().getFragmentManager().popBackStack();
            }
        });
        return view;
    }

    public void onDestroy() {
        setResult();
        super.onDestroy();
    }

    private void setResult() {
        Fragment fragment = getTargetFragment();
        if (fragment != null && !getFragmentManager().isDestroyed()) {
            fragment.onActivityResult(24, -1, null);
        }
    }
}

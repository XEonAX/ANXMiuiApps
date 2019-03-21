package com.miui.gallery.ui;

import android.app.Fragment;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.projection.ConnectController;
import com.miui.gallery.projection.ProjectionVideoController;
import com.miui.gallery.projection.ProjectionVideoController.OnFinishListener;
import com.miui.gallery.util.FileUtils;

public class ProjectVideoFragment extends Fragment implements OnFinishListener {
    private ProjectionVideoController mRemoteVideoControl;

    public static void showProjectVideoFragment(BaseActivity activity, BaseDataItem projectItem) {
        Fragment fragment = new ProjectVideoFragment();
        Bundle args = new Bundle();
        args.putSerializable("photo_data_item", projectItem);
        fragment.setArguments(args);
        activity.startFragment(fragment, null, true, true);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        this.mRemoteVideoControl = (ProjectionVideoController) inflater.inflate(R.layout.projection_video, container, false);
        this.mRemoteVideoControl.initView();
        return this.mRemoteVideoControl;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        BaseDataItem item = (BaseDataItem) getArguments().getSerializable("photo_data_item");
        String path = item.getOriginalPath();
        this.mRemoteVideoControl.startPlay(path, TextUtils.isEmpty(item.getTitle()) ? FileUtils.getFileTitle(FileUtils.getFileName(path)) : item.getTitle(), ConnectController.getInstance().getCurConnectedDevice());
    }

    public void onResume() {
        super.onResume();
        this.mRemoteVideoControl.setOnFinishListener(this);
    }

    public void onPause() {
        this.mRemoteVideoControl.setOnFinishListener(null);
        super.onPause();
    }

    public void onDestroy() {
        setResult();
        super.onDestroy();
    }

    private void setResult() {
        Fragment fragment = getTargetFragment();
        if (fragment != null) {
            fragment.onActivityResult(25, -1, null);
        }
    }

    public void onFinish() {
        if (isResumed() && getActivity().getFragmentManager().getBackStackEntryCount() > 0) {
            getActivity().getFragmentManager().popBackStack();
        }
    }
}

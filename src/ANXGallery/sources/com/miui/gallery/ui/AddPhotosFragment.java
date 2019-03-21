package com.miui.gallery.ui;

import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.picker.PickGalleryActivity;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.CopyOrMoveDialog.OnOperationSelectedListener;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.HashMap;

public class AddPhotosFragment extends Fragment {
    private long mAlbumId;

    public static void addPhotos(Fragment fragment, long albumId) {
        FragmentTransaction transaction = fragment.getChildFragmentManager().beginTransaction();
        Fragment tar = new AddPhotosFragment();
        Bundle args = new Bundle();
        args.putLong("key_album_id", albumId);
        tar.setArguments(args);
        transaction.add(tar, "AddPhotosFragment");
        transaction.commitAllowingStateLoss();
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return new View(getActivity());
    }

    private void pickPhotos() {
        Intent intent = new Intent(getActivity(), PickGalleryActivity.class);
        intent.putExtra("pick-upper-bound", -1);
        intent.putExtra("pick-need-id", true);
        startActivityForResult(intent, 7);
    }

    private void doAddPhotos(final long[] ids) {
        Fragment fragment = getParentFragment();
        if (fragment != null) {
            CopyOrMoveDialog dialog = new CopyOrMoveDialog();
            dialog.setOnOperationSelectedListener(new OnOperationSelectedListener() {
                public void onOperationSelected(int ops) {
                    Fragment fragment = AddPhotosFragment.this.getParentFragment();
                    if (fragment != null && fragment.getActivity() != null) {
                        switch (ops) {
                            case 1:
                                CopyMoveDialogFragment.show(fragment.getActivity(), AddPhotosFragment.this.mAlbumId, ids, 0, false, null);
                                AddPhotosFragment.this.recordCopyMoveAction(false);
                                return;
                            case 2:
                                return;
                            default:
                                CopyMoveDialogFragment.show(fragment.getActivity(), AddPhotosFragment.this.mAlbumId, ids, 0, true, null);
                                AddPhotosFragment.this.recordCopyMoveAction(true);
                                return;
                        }
                    }
                }
            });
            dialog.showAllowingStateLoss(fragment.getFragmentManager(), "CopyOrMoveDialog");
            return;
        }
        Log.e("AddPhotosFragment", "Add photo show CopyOrMoveDialog fail,Do copy operation for default!");
        recordCopyMoveAction(false);
    }

    private void recordCopyMoveAction(boolean deleteOrigin) {
        HashMap<String, String> params = new HashMap();
        params.put("move", String.valueOf(deleteOrigin));
        params.put("from", "AddPhotosFragment");
        BaseSamplingStatHelper.recordCountEvent("organize_photos", "move_or_copy", params);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode != -1 || data == null) {
            setResult(0);
            return;
        }
        ArrayList<Long> idList = (ArrayList) data.getSerializableExtra("pick-result-data");
        if (idList == null || idList.isEmpty()) {
            setResult(0);
            return;
        }
        long[] ids = new long[idList.size()];
        for (int i = 0; i < idList.size(); i++) {
            ids[i] = ((Long) idList.get(i)).longValue();
        }
        doAddPhotos(ids);
        setResult(-1);
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        Bundle args = getArguments();
        this.mAlbumId = args != null ? args.getLong("key_album_id", 0) : 0;
        if (this.mAlbumId == 0) {
            setResult(0);
        } else {
            pickPhotos();
        }
    }

    private void setResult(int resultCode) {
        Fragment fragment = getParentFragment();
        if (fragment != null) {
            fragment.onActivityResult(33, resultCode, getArguments() != null ? new Intent().putExtras(getArguments()) : null);
        }
        getFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
    }
}

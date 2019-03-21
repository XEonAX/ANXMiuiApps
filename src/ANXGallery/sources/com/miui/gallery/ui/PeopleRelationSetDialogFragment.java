package com.miui.gallery.ui;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.model.PeopleContactInfo;
import com.miui.gallery.model.PeopleContactInfo.Relation;
import com.miui.gallery.model.PeopleContactInfo.UserDefineRelation;
import com.miui.gallery.provider.FaceManager;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureHandler;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.PeopleRelationCreatorDialogFragment.OnRelationCreatedListener;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.widget.GalleryDialogFragment;
import java.util.ArrayList;
import java.util.List;

public class PeopleRelationSetDialogFragment extends GalleryDialogFragment {
    private ArrayList<String> mRelationNameItems = new ArrayList();
    private RelationSelectedListener mRelationSelectedListener;
    private ArrayList<String> mRelationValueItems = new ArrayList();

    public interface RelationSelectedListener {
        void onRelationSelected(String str, String str2);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initDialogAdapter();
    }

    private void initDialogAdapter() {
        this.mRelationNameItems.addAll(getArguments().getStringArrayList("relation_names"));
        this.mRelationValueItems.addAll(getArguments().getStringArrayList("relation_values"));
        this.mRelationNameItems.add(getString(R.string.define_by_user));
        this.mRelationValueItems.add(getString(R.string.define_by_user));
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Builder builder = new Builder(getActivity());
        builder.setTitle(getArguments().getString("people_relation_set_title"));
        builder.setSingleChoiceItems((CharSequence[]) this.mRelationNameItems.toArray(new String[this.mRelationNameItems.size()]), getDefaultIndexOfDialog(), new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                if (which == PeopleRelationSetDialogFragment.this.mRelationValueItems.indexOf(PeopleRelationSetDialogFragment.this.getString(R.string.define_by_user))) {
                    PeopleRelationCreatorDialogFragment relationDialog = new PeopleRelationCreatorDialogFragment();
                    relationDialog.setOnCreatedListener(new OnRelationCreatedListener() {
                        public void onRelationCreated(String relationText) {
                            if (PeopleRelationSetDialogFragment.this.mRelationSelectedListener != null) {
                                PeopleRelationSetDialogFragment.this.mRelationSelectedListener.onRelationSelected(PeopleContactInfo.getUserDefineRelation(), relationText);
                            }
                        }
                    });
                    relationDialog.showAllowingStateLoss(PeopleRelationSetDialogFragment.this.getActivity().getFragmentManager(), "PeopleRelationCreatorDialogFragment");
                    return;
                }
                String relation;
                String relationText = (String) PeopleRelationSetDialogFragment.this.mRelationValueItems.get(which);
                if (PeopleContactInfo.getSystemRelationValueItems().contains(relationText)) {
                    relation = relationText;
                } else {
                    relation = PeopleContactInfo.getUserDefineRelation();
                }
                if (PeopleRelationSetDialogFragment.this.mRelationSelectedListener != null) {
                    PeopleRelationSetDialogFragment.this.mRelationSelectedListener.onRelationSelected(relation, relationText);
                }
            }
        });
        return builder.create();
    }

    private int getDefaultIndexOfDialog() {
        String defaultRelation = getArguments().getString("default_relation");
        if (TextUtils.isEmpty(defaultRelation)) {
            return -1;
        }
        return this.mRelationValueItems.indexOf(defaultRelation);
    }

    public void setRelationSelectedListener(RelationSelectedListener listener) {
        this.mRelationSelectedListener = listener;
    }

    public static void createRelationSetDialog(final Activity activity, final String title, final String defaultRelation, final int peopleCount, final RelationSelectedListener listener) {
        ThreadManager.getMiscPool().submit(new Job<Bundle>() {
            public Bundle run(JobContext jc) {
                boolean shouldShowMyselfGroup;
                ArrayList<String> relationValues = new ArrayList();
                ArrayList<String> relationNames = new ArrayList();
                relationNames.addAll(PeopleContactInfo.getSystemRelationNameItems());
                relationValues.addAll(PeopleContactInfo.getSystemRelationValueItems());
                if (peopleCount <= 1) {
                    shouldShowMyselfGroup = true;
                } else {
                    shouldShowMyselfGroup = false;
                }
                if (shouldShowMyselfGroup) {
                    List<Long> peopleUnderMyselfGroup = FaceManager.queryPeopleIdOfRelation(activity, Relation.myself.getRelationType());
                    if (peopleUnderMyselfGroup == null || peopleUnderMyselfGroup.size() <= 0) {
                        shouldShowMyselfGroup = true;
                    } else {
                        shouldShowMyselfGroup = false;
                    }
                }
                if (!shouldShowMyselfGroup) {
                    int index = relationValues.indexOf(PeopleContactInfo.getRelationValue(Relation.myself));
                    relationValues.remove(index);
                    relationNames.remove(index);
                }
                ArrayList<String> userDefineRelations = UserDefineRelation.getUserDefineRelations();
                if (userDefineRelations == null) {
                    userDefineRelations = FaceManager.queryAllUserDefineRelationsOfPeople(activity);
                }
                if (BaseMiscUtil.isValid(userDefineRelations)) {
                    relationValues.addAll(userDefineRelations);
                    relationNames.addAll(userDefineRelations);
                }
                UserDefineRelation.setUserDefineRelations(userDefineRelations);
                Bundle bundle = new Bundle();
                bundle.putString("people_relation_set_title", title);
                bundle.putString("default_relation", defaultRelation);
                bundle.putStringArrayList("relation_names", relationNames);
                bundle.putStringArrayList("relation_values", relationValues);
                return bundle;
            }
        }, new FutureHandler<Bundle>() {
            public void onPostExecute(Future<Bundle> future) {
                if (future != null && future.get() != null) {
                    PeopleRelationSetDialogFragment.doCreateDialog(activity, (Bundle) future.get(), listener);
                }
            }
        });
    }

    private static void doCreateDialog(Activity activity, Bundle arguments, RelationSelectedListener listener) {
        PeopleRelationSetDialogFragment dialog = new PeopleRelationSetDialogFragment();
        dialog.setArguments(arguments);
        dialog.setRelationSelectedListener(listener);
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "PeopleRelationSetDialogFragment");
    }
}

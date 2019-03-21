package com.miui.gallery.search.transitions;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.transition.ChangeBounds;
import android.transition.ChangeClipBounds;
import android.transition.ChangeTransform;
import android.transition.Transition;
import android.transition.Transition.TransitionListener;
import android.transition.TransitionSet;
import android.view.View;
import com.miui.gallery.R;
import com.miui.gallery.search.transitions.SearchTransitionHelper.SearchTransitionListener;
import java.util.List;
import java.util.Map;
import miui.app.Fragment;

public class SearchTransitionHelperImp extends SearchTransitionHelper {
    private SearchSharedElementCallback mSharedElementCallback;

    public SearchTransitionHelperImp(Fragment fragment, SearchTransitionListener enterTransitionListener) {
        SearchSharedElementCallback anonymousClass1;
        super(fragment, enterTransitionListener);
        if (supportSharedElementTransition()) {
            anonymousClass1 = new SearchSharedElementCallback() {
                public void onMapSharedElements(List<String> names, Map<String, View> sharedElements) {
                    super.onMapSharedElements(names, sharedElements);
                    if (SearchTransitionHelperImp.this.mEnterTransitionListener != null) {
                        SearchTransitionHelperImp.this.mEnterTransitionListener.onTransitionStart();
                    }
                }
            };
        } else {
            anonymousClass1 = null;
        }
        this.mSharedElementCallback = anonymousClass1;
    }

    public SearchSharedElementCallback getSharedElementCallback() {
        return this.mSharedElementCallback;
    }

    @TargetApi(21)
    public void configTransition() {
        if (supportSharedElementTransition()) {
            this.mFragment.getActivity().getWindow().setSharedElementEnterTransition(generateTransition(true));
            this.mFragment.getActivity().getWindow().setSharedElementReturnTransition(generateTransition(false));
        }
    }

    @TargetApi(21)
    private Transition generateTransition(boolean enter) {
        if (!supportSharedElementTransition()) {
            return null;
        }
        String inputName = this.mFragment.getString(R.string.search_transition_element_input);
        String iconName = this.mFragment.getString(R.string.search_transition_element_icon);
        String iconVoice = this.mFragment.getString(R.string.search_transition_element_voice);
        TransitionSet transition = new TransitionSet();
        transition.setDuration((long) this.mFragment.getResources().getInteger(R.integer.search_activity_transition_duration));
        transition.addTransition(new ChangeTransform());
        transition.addTransition(new ChangeBounds());
        transition.addTransition(new ChangeClipBounds());
        FadeOutInTransform fadeTransform = new FadeOutInTransform();
        fadeTransform.addTarget(iconName);
        fadeTransform.addTarget(iconVoice);
        transition.addTransition(fadeTransform);
        ChangeImage changeImage = new ChangeImage();
        changeImage.addTarget(iconName);
        changeImage.addTarget(inputName);
        changeImage.addTarget(iconVoice);
        transition.addTransition(changeImage);
        ChangeTextView changeTextView = new ChangeTextView();
        changeTextView.addTarget(inputName);
        transition.addTransition(changeTextView);
        if (!enter) {
            return transition;
        }
        transition.addListener(new TransitionListener() {
            public void onTransitionStart(Transition transition) {
            }

            public void onTransitionEnd(Transition transition) {
                if (SearchTransitionHelperImp.this.mEnterTransitionListener != null) {
                    SearchTransitionHelperImp.this.mEnterTransitionListener.onTransitionEnd();
                }
            }

            public void onTransitionCancel(Transition transition) {
            }

            public void onTransitionPause(Transition transition) {
            }

            public void onTransitionResume(Transition transition) {
            }
        });
        return transition;
    }

    public static boolean supportSharedElementTransition() {
        return VERSION.SDK_INT >= 21;
    }
}

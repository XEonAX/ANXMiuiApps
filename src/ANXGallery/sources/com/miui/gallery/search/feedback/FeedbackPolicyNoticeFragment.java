package com.miui.gallery.search.feedback;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import com.miui.gallery.R;
import com.miui.gallery.preference.GalleryPreferences.Search;
import com.miui.gallery.text.UrlSpan;
import com.miui.gallery.text.UrlSpan.UrlSpanOnClickListener;
import com.miui.gallery.widget.GalleryDialogFragment;
import miui.app.AlertDialog;
import miui.app.AlertDialog.Builder;

public class FeedbackPolicyNoticeFragment extends GalleryDialogFragment {
    private OnClickListener mPositiveClickListener;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        return new Builder(getActivity()).setTitle((int) R.string.user_notice_title).setMessage(buildUserNotice(getActivity(), R.string.search_feedback_user_notice, R.string.search_feedback_user_policy)).setPositiveButton((int) R.string.user_agree, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                Search.setShouldShowFeedbackPolicy(!((AlertDialog) FeedbackPolicyNoticeFragment.this.getDialog()).isChecked());
                if (FeedbackPolicyNoticeFragment.this.mPositiveClickListener != null) {
                    FeedbackPolicyNoticeFragment.this.mPositiveClickListener.onClick(dialog, which);
                }
            }
        }).setNegativeButton(17039360, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                FeedbackPolicyNoticeFragment.this.getActivity().finish();
            }
        }).setCheckBox(true, getActivity().getString(R.string.do_not_remind_me)).create();
    }

    public void setOnPositiveButtonClickListener(OnClickListener listener) {
        this.mPositiveClickListener = listener;
    }

    public void onStart() {
        super.onStart();
        ((AlertDialog) getDialog()).getMessageView().setMovementMethod(LinkMovementMethod.getInstance());
    }

    private SpannableStringBuilder buildUserNotice(final Activity activity, int userNoticeMessageFormat, int userPolicyRes) {
        String userPolicy = activity.getString(userPolicyRes);
        String message = activity.getString(userNoticeMessageFormat, new Object[]{userPolicy});
        UrlSpanOnClickListener policyUrlClickListener = new UrlSpanOnClickListener() {
            public void onClick() {
                SearchFeedbackHelper.goToFeedbackPolicyPage(activity);
            }
        };
        SpannableStringBuilder userNotice = new SpannableStringBuilder(message);
        int start = message.indexOf(userPolicy);
        userNotice.setSpan(new UrlSpan(policyUrlClickListener), start, userPolicy.length() + start, 33);
        return userNotice;
    }
}

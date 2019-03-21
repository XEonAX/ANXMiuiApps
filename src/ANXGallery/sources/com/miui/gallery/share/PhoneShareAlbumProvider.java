package com.miui.gallery.share;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.share.AlbumShareOperations.OutgoingInvitation;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.Log;
import java.util.HashMap;
import java.util.Map;

public class PhoneShareAlbumProvider {
    private static PhoneShareAlbumProvider sInstance;
    private int[] addSharerByWhich;

    private PhoneShareAlbumProvider() {
        initDialogItems();
    }

    private void initDialogItems() {
        if (BuildUtil.isPad()) {
            this.addSharerByWhich = new int[]{2};
            return;
        }
        this.addSharerByWhich = new int[]{1, 2};
    }

    public static synchronized PhoneShareAlbumProvider getInstance() {
        PhoneShareAlbumProvider phoneShareAlbumProvider;
        synchronized (PhoneShareAlbumProvider.class) {
            if (sInstance == null) {
                sInstance = new PhoneShareAlbumProvider();
            }
            phoneShareAlbumProvider = sInstance;
        }
        return phoneShareAlbumProvider;
    }

    public int getAddSharerDialogItemsLength() {
        if (this.addSharerByWhich == null) {
            return 0;
        }
        return this.addSharerByWhich.length;
    }

    public void showAddSharerDialog(Activity activity, OnClickListener clickListener) {
        new Builder(activity).setTitle(R.string.add_sharer).setSingleChoiceItems(getShareItemTexts(activity), -1, clickListener).setCancelable(true).show();
    }

    private String[] getShareItemTexts(Context context) {
        if (context == null) {
            return null;
        }
        int itemLength = this.addSharerByWhich.length;
        String[] shareItemTexts = new String[itemLength];
        for (int i = 0; i < itemLength; i++) {
            switch (this.addSharerByWhich[i]) {
                case 1:
                    shareItemTexts[i] = context.getString(R.string.by_sms);
                    break;
                case 2:
                    shareItemTexts[i] = context.getString(R.string.by_others);
                    break;
                default:
                    Log.e("PhoneShareAlbumProvider", "not handled operation type" + this.addSharerByWhich[i]);
                    break;
            }
        }
        return shareItemTexts;
    }

    public void shareOperation(Activity activity, int clickWhich, OutgoingInvitation result, String mAlbumName) {
        if (clickWhich < this.addSharerByWhich.length) {
            switch (this.addSharerByWhich[clickWhich]) {
                case 1:
                    shareBySms(result.toMessage(), activity);
                    recordAddSharerCountEvent("sms");
                    return;
                case 2:
                    shareByOther(activity, mAlbumName, result);
                    recordAddSharerCountEvent("other");
                    return;
                default:
                    throw new UnsupportedOperationException("Bad category, which=" + clickWhich);
            }
        }
    }

    private void recordAddSharerCountEvent(String mode) {
        Map<String, String> params = new HashMap();
        params.put("mode", mode);
        BaseSamplingStatHelper.recordCountEvent("album", "add_sharer", params);
    }

    public void shareBySms(String url, Activity activity) {
        if (TextUtils.isEmpty(url)) {
            UIHelper.toast((int) R.string.request_sms_url_failed);
            return;
        }
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setData(Uri.parse("smsto:"));
        intent.putExtra("sms_body", url);
        try {
            activity.startActivity(intent);
        } catch (Throwable e) {
            Log.e("PhoneShareAlbumProvider", "sms intent not resolved");
            Log.e("PhoneShareAlbumProvider", e);
        }
    }

    public void shareByOther(Activity activity, String mAlbumName, OutgoingInvitation result) {
        activity.startActivity(getShareUrlIntent(activity, mAlbumName, result.getDescription(), result.getUrl(), false));
    }

    public Intent getShareUrlIntent(Activity activity, String mAlbumName, String description, String url, boolean isOnlyrUrl) {
        String temp;
        Intent intent = new Intent("android.intent.action.SEND");
        String album = activity.getString(R.string.quotation, new Object[]{mAlbumName});
        String text = activity.getString(R.string.share_public_url_text, new Object[]{album, url});
        if (TextUtils.isEmpty(url)) {
            temp = description;
        } else {
            temp = url;
        }
        String linkedUrl = "<a href=\"" + url + "\">" + temp + "</a>";
        String textForBluetooth = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/></head><body> <font size=12>" + activity.getString(R.string.share_public_url_text, new Object[]{album, linkedUrl}) + "</font>" + "</body></html>";
        intent.putExtra("android.intent.extra.TEXT", text);
        intent.putExtra("android.intent.extra.HTML_TEXT", textForBluetooth);
        intent.setType("text/*");
        return Intent.createChooser(intent, activity.getString(R.string.send_public_url));
    }

    public void showKickUserDialog(Activity activity, OnClickListener clickListener) {
        new Builder(activity).setTitle(R.string.kick_owner_user_title).setCancelable(true).setPositiveButton(R.string.kick_owner_user_positive_button_text, clickListener).setNegativeButton(17039360, null).show();
    }
}

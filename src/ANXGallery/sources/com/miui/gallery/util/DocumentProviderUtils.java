package com.miui.gallery.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.provider.DocumentFile;
import android.text.TextUtils;
import com.android.internal.storage.StorageInfo;
import com.android.internal.storage.StorageManager;
import com.miui.gallery.R;
import com.miui.gallery.preference.BaseGalleryPreferences.BaseDocumentProvider;
import com.miui.gallery.preference.DocumentProviderPreference;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.AlertDialogFragment.Builder;
import com.miui.gallery.ui.DocumentsUIFragment;
import java.io.File;

public class DocumentProviderUtils extends BaseDocumentProviderUtils {
    @TargetApi(24)
    public static void startFirstEntrancyPermissionActivityForResult(Activity activity) {
        if (activity == null) {
            Log.d("DocumentProviderUtils", "startExtSDCardPermissionActivityForResult activity null");
        } else {
            startPermissionActivityForResult(activity, StorageUtils.getSecondaryStoragePath(), 49, 49);
        }
    }

    @TargetApi(24)
    public static void startExtSDCardPermissionActivityForResult(Activity activity) {
        String filePath = StorageUtils.getSecondaryStoragePath();
        if (activity != null && !TextUtils.isEmpty(filePath) && BaseDocumentProviderUtils.needRequestExternalSDCardPermission(activity)) {
            if (BaseDocumentProvider.getExternalSDCardUri() != null) {
                DocumentProviderPreference.setOpenExternalDocumentCount(0);
            }
            startPermissionActivityForResult(activity, filePath, 47, 48);
        }
    }

    public static void handleRequestPermissionResult(Activity activity, int requestCode, int resultCode, Intent data) {
        if (activity != null) {
            if (requestCode == 49) {
                DocumentProviderPreference.setFirstEntrance(false);
                if (resultCode == -1 && isUriExternalSDCardRoot(data.getData())) {
                    handleRequestSucceed(activity, data);
                    BaseSamplingStatHelper.recordStringPropertyEvent("document_provider_permission_request", "document_provider_first_entrance", String.valueOf(true));
                    return;
                }
                firstEntrancyPermFailed(activity);
                BaseSamplingStatHelper.recordStringPropertyEvent("document_provider_permission_request", "document_provider_first_entrance", String.valueOf(false));
            } else if (requestCode == 47) {
                if (resultCode == -1) {
                    handleRequestSucceed(activity, data);
                    BaseSamplingStatHelper.recordStringPropertyEvent("document_provider_permission_request", "document_provider_permission_requested", String.valueOf(true));
                    return;
                }
                increaseAccessIntentCount();
                showOperationFailedDialog(activity);
                BaseSamplingStatHelper.recordStringPropertyEvent("document_provider_permission_request", "document_provider_permission_requested", String.valueOf(false));
            } else if (requestCode != 48) {
            } else {
                if (resultCode == -1 && isUriExternalSDCardRoot(data.getData())) {
                    handleRequestSucceed(activity, data);
                    BaseSamplingStatHelper.recordStringPropertyEvent("document_provider_permission_request", "document_provider_permission_requested", String.valueOf(true));
                    return;
                }
                showOperationFailedDialog(activity);
                BaseSamplingStatHelper.recordStringPropertyEvent("document_provider_permission_request", "document_provider_permission_requested", String.valueOf(false));
            }
        }
    }

    private static void startPermissionActivityForResult(Activity activity, String filePath, int requestCodeForAccessIntent, int requestCodeForDocumentTree) {
        if (DocumentProviderPreference.getOpenExternalDocumentCount() < 2) {
            createAccessIntent(activity, filePath, requestCodeForAccessIntent);
        } else {
            startDocumentTreeIntent(activity, requestCodeForDocumentTree);
        }
    }

    private static void firstEntrancyPermFailed(Activity activity) {
        increaseAccessIntentCount();
        new Builder().setCancelable(false).setTitle(activity.getResources().getString(R.string.ext_sdcard_first_entrance_request_failed_title)).setMessage(activity.getResources().getString(R.string.ext_sdcard_first_entrance_request_failed_text)).setPositiveButton(activity.getResources().getString(R.string.ext_sdcard_request_failed_button_text), new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                StorageUtils.setPriorStorage(false);
            }
        }).create().showAllowingStateLoss(activity.getFragmentManager(), "DocumentProviderUtils");
    }

    private static void increaseAccessIntentCount() {
        DocumentProviderPreference.setOpenExternalDocumentCount(DocumentProviderPreference.getOpenExternalDocumentCount() + 1);
    }

    private static boolean isUriExternalSDCardRoot(Uri chosenUri) {
        if (chosenUri == null || !StorageUtils.hasExternalSDCard(StaticContext.sGetAndroidContext())) {
            return false;
        }
        String sdCardPath = StorageUtils.getSecondaryStoragePath();
        DocumentFile chosenFile = DocumentFile.fromTreeUri(StaticContext.sGetAndroidContext(), chosenUri);
        String displayName = ".miuigallery" + System.currentTimeMillis();
        DocumentFile testFile = chosenFile.createFile("any/any", displayName);
        if (!new File(sdCardPath, displayName).exists()) {
            return false;
        }
        testFile.delete();
        return true;
    }

    private static void persistDocumentProviderUri(Context context, Intent data) {
        Uri uri = data.getData();
        if (uri != null) {
            try {
                context.getContentResolver().takePersistableUriPermission(uri, 3);
                BaseDocumentProvider.setExternalSDCardUri(uri.toString());
            } catch (Throwable e) {
                Log.e("DocumentProviderUtils", e);
            }
        }
    }

    private static void showOperationFailedDialog(Activity activity) {
        new Builder().setCancelable(false).setTitle(activity.getResources().getString(R.string.ext_sdcard_operation_failed_title)).setMessage(activity.getResources().getString(R.string.ext_sdcard_operation_failed_text)).setPositiveButton(activity.getResources().getString(R.string.ext_sdcard_request_failed_button_text), null).create().showAllowingStateLoss(activity.getFragmentManager(), "DocumentProviderUtils");
    }

    private static void handleRequestSucceed(Activity activity, Intent data) {
        persistDocumentProviderUri(activity, data);
        ToastUtils.makeText((Context) activity, activity.getResources().getString(R.string.ext_sdcard_request_succeed_toast_text));
    }

    @TargetApi(24)
    private static void createAccessIntent(final Activity activity, String filePath, final int requestCode) {
        StorageInfo storageInfo = StorageManager.getInstance().getStorageInfo(activity, new File(filePath));
        if (storageInfo == null) {
            firstEntrancyPermFailed(activity);
            return;
        }
        final Intent intent = storageInfo.createAccessIntent(activity);
        if (intent == null) {
            firstEntrancyPermFailed(activity);
            return;
        }
        new Builder().setCancelable(false).setTitle(activity.getString(R.string.ext_sdcard_permission_request_title)).setMessage(activity.getString(R.string.ext_sdcard_permission_request_reason)).setPositiveButton(activity.getString(R.string.ext_sdcard_permission_request_button_text), new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                activity.startActivityForResult(intent, requestCode);
            }
        }).create().showAllowingStateLoss(activity.getFragmentManager(), "DocumentProviderUtils");
    }

    private static void startDocumentTreeIntent(Activity activity, int requestCode) {
        if (activity != null) {
            DocumentsUIFragment.newInstance(1, requestCode).showAllowingStateLoss(activity.getFragmentManager(), "DocumentsUIFragment");
        }
    }
}

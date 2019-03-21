package com.miui.gallery.ui;

import android.app.Activity;
import android.app.Dialog;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.scanner.MediaScannerUtil;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.widget.GalleryDialogFragment;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import miui.app.ProgressDialog;
import miui.net.MimeUtils;

public class SaveUriDialogFragment extends GalleryDialogFragment {
    private OnCompleteListener mListener;
    private ProgressDialog mProgressDialog;

    public interface OnCompleteListener {
        void onComplete(String str);
    }

    public static void show(Activity activity, Uri uri, OnCompleteListener listener) {
        SaveUriDialogFragment dialog = new SaveUriDialogFragment();
        Bundle data = new Bundle();
        data.putParcelable("key_uri", uri);
        dialog.setArguments(data);
        dialog.setOnCompleteListener(listener);
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "SaveUriDialogFragment");
    }

    public void setOnCompleteListener(OnCompleteListener listener) {
        this.mListener = listener;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        this.mProgressDialog = ProgressDialog.show(getActivity(), "", getActivity().getString(R.string.adding_to_album), true, false);
        return this.mProgressDialog;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        save((Uri) getArguments().getParcelable("key_uri"));
    }

    public void onDestroy() {
        setOnCompleteListener(null);
        super.onDestroy();
    }

    private void save(final Uri uri) {
        if (uri != null) {
            ThreadManager.getMiscPool().submit(new Job<String>() {
                public String run(JobContext jc) {
                    return SaveUriDialogFragment.this.saveInternal(uri);
                }
            }, new FutureListener<String>() {
                public void onFutureDone(final Future<String> future) {
                    if (SaveUriDialogFragment.this.getActivity() != null) {
                        SaveUriDialogFragment.this.getActivity().runOnUiThread(new Runnable() {
                            public void run() {
                                if (SaveUriDialogFragment.this.mListener != null) {
                                    SaveUriDialogFragment.this.mListener.onComplete((String) future.get());
                                }
                                if (SaveUriDialogFragment.this.isAdded()) {
                                    SaveUriDialogFragment.this.dismissAllowingStateLoss();
                                }
                            }
                        });
                    }
                }
            });
        } else if (this.mListener != null) {
            this.mListener.onComplete(null);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x00a4 A:{SYNTHETIC, Splitter: B:30:0x00a4} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private String saveInternal(Uri uri) {
        FileNotFoundException e;
        Exception e2;
        Throwable th;
        ParcelFileDescriptor parcelFileDescriptor = null;
        FileInputStream inputStream = null;
        File saveFile = null;
        try {
            parcelFileDescriptor = GalleryApp.sGetAndroidContext().getContentResolver().openFileDescriptor(uri, "r");
            FileDescriptor fd = parcelFileDescriptor.getFileDescriptor();
            String extension = MimeUtils.guessExtensionFromMimeType(getMimeType(uri));
            if (TextUtils.isEmpty(extension)) {
                Log.e("SaveUriDialogFragment", "fail to save [%s] because of can't get right file extension", (Object) uri);
                BaseMiscUtil.closeSilently(parcelFileDescriptor);
                BaseMiscUtil.closeSilently(null);
                return null;
            }
            String destFolder = StorageUtils.getSafePathInPriorStorageForUnadapted("DCIM/Camera");
            if (FileUtils.createFolder(new File(destFolder), false)) {
                saveFile = generateFileForSaving(destFolder, extension);
                if (saveFile == null) {
                    BaseMiscUtil.closeSilently(parcelFileDescriptor);
                    BaseMiscUtil.closeSilently(null);
                    return null;
                }
                FileInputStream inputStream2 = new FileInputStream(fd);
                try {
                    if (FileUtils.copyToFile(inputStream2, saveFile)) {
                        String savePath = saveFile.getAbsolutePath();
                        MediaScannerUtil.scanSingleFile(getActivity().getApplicationContext(), savePath, 0);
                        MediaFileUtils.triggerMediaScan(true, saveFile);
                        BaseMiscUtil.closeSilently(parcelFileDescriptor);
                        BaseMiscUtil.closeSilently(inputStream2);
                        inputStream = inputStream2;
                        return savePath;
                    }
                    BaseMiscUtil.closeSilently(parcelFileDescriptor);
                    BaseMiscUtil.closeSilently(inputStream2);
                    inputStream = inputStream2;
                    return null;
                } catch (FileNotFoundException e3) {
                    e = e3;
                    inputStream = inputStream2;
                } catch (Exception e4) {
                    e2 = e4;
                    inputStream = inputStream2;
                    if (saveFile != null) {
                        MediaFileUtils.deleteFileType(FileType.TEMP, saveFile);
                    }
                    Log.e("SaveUriDialogFragment", "fail to save %s %s", uri, e2);
                    BaseMiscUtil.closeSilently(parcelFileDescriptor);
                    BaseMiscUtil.closeSilently(inputStream);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = inputStream2;
                    BaseMiscUtil.closeSilently(parcelFileDescriptor);
                    BaseMiscUtil.closeSilently(inputStream);
                    throw th;
                }
            }
            BaseMiscUtil.closeSilently(parcelFileDescriptor);
            BaseMiscUtil.closeSilently(null);
            return null;
        } catch (FileNotFoundException e5) {
            e = e5;
        } catch (Exception e6) {
            e2 = e6;
            if (saveFile != null) {
            }
            Log.e("SaveUriDialogFragment", "fail to save %s %s", uri, e2);
            BaseMiscUtil.closeSilently(parcelFileDescriptor);
            BaseMiscUtil.closeSilently(inputStream);
            return null;
        }
        try {
            Log.e("SaveUriDialogFragment", "fail to open %s %s", uri, e);
            BaseMiscUtil.closeSilently(parcelFileDescriptor);
            BaseMiscUtil.closeSilently(inputStream);
            return null;
        } catch (Throwable th3) {
            th = th3;
            BaseMiscUtil.closeSilently(parcelFileDescriptor);
            BaseMiscUtil.closeSilently(inputStream);
            throw th;
        }
    }

    private String getMimeType(Uri uri) {
        String type = null;
        String extension = MimeTypeMap.getFileExtensionFromUrl(uri.toString());
        if (!TextUtils.isEmpty(extension)) {
            type = MimeTypeMap.getSingleton().getMimeTypeFromExtension(extension.toLowerCase());
        }
        if (TextUtils.isEmpty(type)) {
            return GalleryApp.sGetAndroidContext().getContentResolver().getType(uri);
        }
        return type;
    }

    private static File generateFileForSaving(String directory, String extension) {
        String filePath = "";
        String DATETIME_FORMAT_STR = "yyyyMMdd_kkmmss";
        int index = 0;
        while (true) {
            Date now = new Date(System.currentTimeMillis());
            String fileName = String.format("SAVE_%s", new Object[]{new SimpleDateFormat("yyyyMMdd_kkmmss").format(now)});
            filePath = String.format("%s/%s", new Object[]{directory, fileName});
            if (index > 0) {
                filePath = filePath + "_" + index + "." + extension;
            } else {
                filePath = filePath + "." + extension;
            }
            File file = new File(filePath);
            if (file.exists()) {
                index++;
            } else {
                try {
                    file.createNewFile();
                    return file;
                } catch (IOException e) {
                    Log.e("SaveUriDialogFragment", "generateFileForSaving() failed %s %s", file.getAbsolutePath(), e);
                    return null;
                }
            }
        }
    }
}

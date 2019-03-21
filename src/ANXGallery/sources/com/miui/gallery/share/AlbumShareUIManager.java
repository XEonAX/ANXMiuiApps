package com.miui.gallery.share;

import android.accounts.Account;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnShowListener;
import android.content.Intent;
import android.graphics.Bitmap.Config;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.miui.account.AccountHelper;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.cloud.GalleryErrorCode;
import com.miui.gallery.share.AlbumShareOperations.IncomingInvitation;
import com.miui.gallery.share.AlbumShareOperations.OutgoingInvitation;
import com.miui.gallery.share.AlbumShareOperations.SharerInfo;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadPool;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.face.PeopleItemBitmapDisplayer;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import miui.app.ProgressDialog;

public class AlbumShareUIManager {
    private static final JobStatusManager<Path, Integer> sAlbumShareManager = new JobStatusManager<Path, Integer>(new ThreadPool(1, 1)) {
        protected Integer advanceStatus(Path key, Integer current, boolean success) {
            int next = -1;
            if (current != null) {
                next = AlbumShareState.advance(current.intValue(), success);
            }
            if (!AlbumShareState.isValid(next)) {
                next = AlbumShareUIManager.readAlbumShareStateFromDB(key);
            }
            return Integer.valueOf(next);
        }
    };
    private static final JobStatusManager<Void, Void> sDefaultJobManager = new JobStatusManager(new ThreadPool());
    static final Handler sHandler = new Handler(Looper.getMainLooper());

    public interface OnCompletionListener<K, T> {
        void onCompletion(K k, T t, int i, boolean z);
    }

    static class JobStatusManager<K, S> {
        private final List<OnStatusChangedListener<K, S>> mStatusChangedListeners = Lists.newArrayList();
        private final Map<K, S> mStatusMap = Maps.newHashMap();
        private final ThreadPool mThreadPool;

        public JobStatusManager(ThreadPool threadPool) {
            this.mThreadPool = threadPool;
        }

        public void add(K key, S status) {
            if (key != null) {
                this.mStatusMap.put(key, status);
                notifyStatus(key, status);
            }
        }

        public void remove(K key, boolean success) {
            if (key != null) {
                notifyStatus(key, advanceStatus(key, this.mStatusMap.remove(key), success));
            }
        }

        protected S advanceStatus(K k, S s, boolean success) {
            return null;
        }

        private void notifyStatus(K key, S newStatus) {
            for (OnStatusChangedListener<K, S> l : this.mStatusChangedListeners) {
                l.onAlbumStateChanged(key, newStatus);
            }
        }

        public S find(K key) {
            return key != null ? this.mStatusMap.get(key) : null;
        }

        public ThreadPool getThreadPool() {
            return this.mThreadPool;
        }
    }

    public static final class BlockMessage {
        final WeakReference<Activity> mActivityRef;
        final boolean mCancelable;
        final OnCancelListener mListener;
        final CharSequence mMessage;
        final CharSequence mTitle;

        private BlockMessage(Activity activity, CharSequence title, CharSequence message, boolean cancelable, OnCancelListener l) {
            if (activity == null) {
                throw new IllegalArgumentException("context cannot be null");
            }
            this.mActivityRef = new WeakReference(activity);
            this.mTitle = title;
            this.mMessage = message;
            this.mCancelable = cancelable;
            this.mListener = l;
        }

        public ProgressDialog buildDialog() {
            Activity a = (Activity) this.mActivityRef.get();
            if (a == null || a.isFinishing()) {
                return null;
            }
            ProgressDialog dialog = new ProgressDialog(a);
            dialog.setTitle(this.mTitle);
            dialog.setMessage(this.mMessage);
            dialog.setIndeterminate(true);
            dialog.setCancelable(this.mCancelable);
            dialog.setOnCancelListener(this.mListener);
            return dialog;
        }

        public static BlockMessage create(Activity activity, CharSequence title, CharSequence message) {
            return create(activity, title, message, true);
        }

        public static BlockMessage create(Activity activity, CharSequence title, CharSequence message, boolean cancelable) {
            return create(activity, title, message, cancelable, null);
        }

        public static BlockMessage create(Activity activity, CharSequence title, CharSequence message, boolean cancelable, OnCancelListener l) {
            return new BlockMessage(activity, title, message, cancelable, l);
        }
    }

    static final class FutureCancelledListener<K, T> implements OnCompletionListener<K, T> {
        public final Dialog mDialog;
        public final OnCompletionListener<K, T> mListener;

        public FutureCancelledListener(OnCompletionListener<K, T> listener, Dialog dialog) {
            this.mListener = listener;
            this.mDialog = dialog;
        }

        public void onCompletion(K key, T data, int errorCode, boolean cancel) {
            try {
                this.mDialog.dismiss();
            } catch (IllegalArgumentException e) {
            }
            if (this.mListener != null) {
                this.mListener.onCompletion(key, data, errorCode, cancel);
            }
        }
    }

    static final class FutureListenerAdapter<K, T> implements FutureListener<AsyncResult<T>>, Runnable {
        private final K mId;
        private final JobStatusManager<K, ?> mJobManager;
        private final OnCompletionListener<K, T> mListener;
        private Future<AsyncResult<T>> mResult;

        public FutureListenerAdapter(K key, OnCompletionListener<K, T> l, JobStatusManager<K, ?> jobManager) {
            this.mId = key;
            this.mListener = l;
            this.mJobManager = jobManager;
        }

        public void onFutureDone(Future<AsyncResult<T>> result) {
            this.mResult = result;
            AlbumShareUIManager.sHandler.post(this);
        }

        public void run() {
            K key = this.mId;
            boolean cancelled = this.mResult.isCancelled();
            AsyncResult<T> resultData = (AsyncResult) this.mResult.get();
            int err = resultData != null ? resultData.mError : -2;
            T data = resultData != null ? resultData.mData : null;
            this.mJobManager.remove(key, err == 0);
            if (this.mListener != null) {
                this.mListener.onCompletion(key, data, err, cancelled);
            }
        }
    }

    public interface OnStatusChangedListener<K, S> {
        void onAlbumStateChanged(K k, S s);
    }

    public static IncomingInvitation getIncomingInvitation(CloudSharerMediaSet mediaSet) {
        return AlbumShareOperations.parseInvitation(mediaSet.getShareUrlLong());
    }

    static int findAlbumShareStateFromCache(Path path) {
        Integer state = (Integer) sAlbumShareManager.find(path);
        return state != null ? state.intValue() : -1;
    }

    static int readAlbumShareStateFromDB(CloudSharerMediaSet mediaSet) {
        if (mediaSet == null) {
            return -1;
        }
        return mediaSet.getAlbumShareState(null);
    }

    static int readAlbumShareStateFromDB(Path path) {
        if (path == null) {
            return -1;
        }
        return readAlbumShareStateFromDB(path.getMediaSet());
    }

    static boolean allowOperation(CloudSharerMediaSet mediaSet) {
        if (mediaSet == null) {
            return false;
        }
        if (findAlbumShareStateFromCache(mediaSet.getPath()) == -1) {
            return true;
        }
        Log.e("AlbumShareUIManager", "Operation is in process, mediaSet=" + mediaSet);
        return false;
    }

    public static Future<?> updateInvitationAsync(Path path, OnCompletionListener<Path, String> l, BlockMessage msg) {
        final CloudSharerMediaSet mediaSet = findSharerMediaSet(path);
        if (!allowOperation(mediaSet)) {
            notifyError(l);
            return null;
        } else if (TextUtils.isEmpty(mediaSet.getShareUrl())) {
            Log.e("AlbumShareUIManager", "updateInvitationAsync: Invalid shareUrl, media set=" + mediaSet);
            notifyError(l);
            return null;
        } else if (mediaSet.hasShareDetailInfo()) {
            Log.i("AlbumShareUIManager", "updateInvitationAsync: Already exist share detail info, media set=" + mediaSet);
            if (l == null) {
                return null;
            }
            l.onCompletion(path, mediaSet.getShareUrlLong(), 0, false);
            return null;
        } else {
            int newState = AlbumShareState.requestLongUrl(readAlbumShareStateFromDB(mediaSet));
            if (AlbumShareState.isValid(newState)) {
                final String url = mediaSet.getShareUrl();
                final String longUrl = mediaSet.getShareUrlLong();
                return submit(sAlbumShareManager, path, Integer.valueOf(newState), new Job<AsyncResult<String>>() {
                    public AsyncResult<String> run(JobContext jc) {
                        return AlbumShareOperations.updateInvitation(AlbumShareUIManager.getContentResolver(), url, longUrl, mediaSet);
                    }
                }, l, msg);
            }
            Log.e("AlbumShareUIManager", "updateInvitationAsync: Invalid state, media set=" + mediaSet);
            notifyError(l);
            return null;
        }
    }

    public static Future<?> updateInvitationAsync(Path path, OnCompletionListener<Path, String> l) {
        return updateInvitationAsync(path, l, null);
    }

    public static void addInvitationToDBAsync(final String url, OnCompletionListener<Void, Long> l) {
        submit(new Job<AsyncResult<Long>>() {
            public AsyncResult<Long> run(JobContext jc) {
                return AsyncResult.create(0, Long.valueOf(AlbumShareOperations.addInvitation(url)));
            }
        }, l);
    }

    public static void applyToShareAlbum(Activity a, final Path path, final OnCompletionListener<Path, Void> applyListener, OnCompletionListener<Path, Long> acceptListener, OnCompletionListener<Path, Void> denyListener, OnCancelListener cancelListener, final BlockMessage msgWhenUpdate, boolean showAcceptDialog) {
        final WeakReference<Activity> activityRef = new WeakReference(a);
        final Path path2 = path;
        final boolean z = showAcceptDialog;
        final OnCompletionListener<Path, Long> onCompletionListener = acceptListener;
        final OnCompletionListener<Path, Void> onCompletionListener2 = denyListener;
        final OnCancelListener onCancelListener = cancelListener;
        final OnCompletionListener<Path, Void> onCompletionListener3 = applyListener;
        final OnCompletionListener<Path, String> updateListener = new OnCompletionListener<Path, String>() {
            public void onCompletion(Path p, String value, int errorCode, boolean cancel) {
                boolean handled = false;
                final Activity activity = (Activity) activityRef.get();
                if (!(errorCode != 0 || cancel || activity == null || activity.isFinishing())) {
                    final CloudSharerMediaSet mediaSet = AlbumShareUIManager.findSharerMediaSet(path2);
                    if (mediaSet != null) {
                        AlbumShareUIManager.doAfterCloudMediaSetSetReload(new Runnable() {
                            public void run() {
                                if (z) {
                                    AlbumShareUIManager.showDialogToAccept(activity, mediaSet, onCompletionListener, onCompletionListener2, onCancelListener);
                                } else {
                                    AlbumShareUIManager.tryToAccept(mediaSet.getPath(), activity, onCompletionListener, onCancelListener, null);
                                }
                            }
                        }, path2, true);
                        handled = true;
                    }
                }
                if (!handled) {
                    if (errorCode == -112) {
                        errorCode = -1002;
                    }
                    AlbumShareUIManager.notifyError(onCompletionListener3, errorCode);
                }
            }
        };
        doAfterCloudMediaSetSetReload(new Runnable() {
            public void run() {
                AlbumShareUIManager.updateShareUrlLongAuto(path, applyListener, updateListener, msgWhenUpdate);
            }
        }, path, true);
    }

    public static void updateShareUrlLongAuto(Path path, OnCompletionListener<Path, Void> applyListener, OnCompletionListener<Path, String> updateListener, BlockMessage msg) {
        CloudSharerMediaSet mediaSet = findSharerMediaSet(path);
        if (mediaSet != null) {
            if (!mediaSet.isNormalStatus()) {
                String longUrl = mediaSet.getShareUrlLong();
                if (!TextUtils.isEmpty(longUrl)) {
                    IncomingInvitation invitation = AlbumShareOperations.parseInvitation(longUrl);
                    String sharerInfo = mediaSet.getSharerInfo();
                    if (!((invitation == null || invitation.hasSharerInfo()) && TextUtils.isEmpty(sharerInfo))) {
                        if (updateListener != null) {
                            updateListener.onCompletion(path, longUrl, 0, false);
                            return;
                        }
                        return;
                    }
                }
                updateInvitationAsync(path, updateListener, msg);
            } else if (applyListener != null) {
                applyListener.onCompletion(path, null, -9, false);
            }
        } else if (updateListener != null) {
            updateListener.onCompletion(path, null, -2, false);
        }
    }

    public static void updateShareUrlLongAuto(Path path, OnCompletionListener<Path, Void> applyListener, OnCompletionListener<Path, String> updateListener) {
        updateShareUrlLongAuto(path, applyListener, updateListener, null);
    }

    public static void doAfterCloudMediaSetSetReload(Runnable r, Path path, boolean force) {
        if (r != null) {
            r.run();
        }
    }

    private static Future<?> acceptInvitationAsync(Path path, OnCompletionListener<Path, Long> l, BlockMessage msg) {
        final CloudSharerMediaSet mediaSet = findSharerMediaSet(path);
        if (!allowOperation(mediaSet)) {
            notifyError(l);
            return null;
        } else if (TextUtils.isEmpty(mediaSet.getShareUrl())) {
            Log.e("AlbumShareUIManager", "acceptInvitationAsync: Invalid shareUrl, media set=" + mediaSet);
            notifyError(l);
            return null;
        } else {
            int newState = AlbumShareState.accept(readAlbumShareStateFromDB(mediaSet));
            if (AlbumShareState.isValid(newState)) {
                final String url = mediaSet.getShareUrl();
                return submit(sAlbumShareManager, path, Integer.valueOf(newState), new Job<AsyncResult<Long>>() {
                    public AsyncResult<Long> run(JobContext jc) {
                        return AlbumShareOperations.acceptInvitation(AlbumShareUIManager.getContentResolver(), url, mediaSet);
                    }
                }, l, msg);
            }
            Log.e("AlbumShareUIManager", "acceptInvitationAsync: Invalid state, media set=" + mediaSet);
            notifyError(l);
            return null;
        }
    }

    private static Future<?> denyInvitationAsync(Path path, OnCompletionListener<Path, Void> l, BlockMessage msg) {
        final CloudSharerMediaSet mediaSet = findSharerMediaSet(path);
        if (!allowOperation(mediaSet)) {
            notifyError(l);
            return null;
        } else if (TextUtils.isEmpty(mediaSet.getShareUrl())) {
            Log.e("AlbumShareUIManager", "denyInvitationAsync: Invalid shareUrl, media set=" + mediaSet);
            notifyError(l);
            return null;
        } else {
            int newState = AlbumShareState.deny(readAlbumShareStateFromDB(mediaSet));
            if (AlbumShareState.isValid(newState)) {
                final String url = mediaSet.getShareUrl();
                return submit(sAlbumShareManager, path, Integer.valueOf(newState), new Job<AsyncResult<Void>>() {
                    public AsyncResult<Void> run(JobContext jc) {
                        return AlbumShareOperations.denyInvitation(AlbumShareUIManager.getContentResolver(), url, mediaSet);
                    }
                }, l, msg);
            }
            Log.e("AlbumShareUIManager", "denyInvitationAsync: Invalid state, media set=" + mediaSet);
            notifyError(l);
            return null;
        }
    }

    public static void exitAlbumShareAsync(final Path path, final OnCompletionListener<Path, Void> l, final BlockMessage msg) {
        doAfterCloudMediaSetSetReload(new Runnable() {
            public void run() {
                final CloudSharerMediaSet mediaSet = AlbumShareUIManager.findSharerMediaSet(path);
                if (AlbumShareUIManager.allowOperation(mediaSet)) {
                    int newState = AlbumShareState.exit(AlbumShareUIManager.readAlbumShareStateFromDB(mediaSet));
                    if (AlbumShareState.isValid(newState)) {
                        final String shareAlbumId = mediaSet.getShareAlbumId();
                        AlbumShareUIManager.submit(AlbumShareUIManager.sAlbumShareManager, path, Integer.valueOf(newState), new Job<AsyncResult<Void>>() {
                            public AsyncResult<Void> run(JobContext jc) {
                                return AlbumShareOperations.exitAlbumShare(shareAlbumId, String.valueOf(mediaSet.getId()));
                            }
                        }, l, msg);
                        return;
                    }
                    Log.e("AlbumShareUIManager", "Invalid state, media set=" + mediaSet);
                    AlbumShareUIManager.notifyError(l);
                    return;
                }
                AlbumShareUIManager.notifyError(l);
            }
        }, path, true);
    }

    public static Future<?> requestUrlForBarcodeAsync(final String serverId, OnCompletionListener<Void, String> l) {
        return submit(new Job<AsyncResult<String>>() {
            public AsyncResult<String> run(JobContext jc) {
                return AlbumShareOperations.requestUrlForBarcode(serverId);
            }
        }, l);
    }

    public static Future<?> changePublicStatusAsync(final String serverId, final boolean isPublic, OnCompletionListener<Void, String> l) {
        return submit(new Job<AsyncResult<String>>() {
            public AsyncResult<String> run(JobContext jc) {
                return AlbumShareOperations.changePublicStatus(serverId, isPublic);
            }
        }, l);
    }

    private static Future<?> requestPublicUrlAsync(final String albumId, final boolean isShareAlbum, OnCompletionListener<Void, String> l) {
        return submit(new Job<AsyncResult<String>>() {
            public AsyncResult<String> run(JobContext jc) {
                return AlbumShareOperations.requestPublicUrl(albumId, isShareAlbum);
            }
        }, l);
    }

    public static Future<?> requestPublicUrlForOwnerAsync(String albumId, OnCompletionListener<Void, String> l) {
        return requestPublicUrlAsync(albumId, false, l);
    }

    public static Future<?> requestPublicUrlForSharerAsync(String albumId, OnCompletionListener<Void, String> l) {
        return requestPublicUrlAsync(albumId, true, l);
    }

    public static Future<?> requestInvitationForSmsAsync(String serverId, String relation, String relationText, String ownerRelation, String ownerRelationText, OnCompletionListener<Void, OutgoingInvitation> l, BlockMessage msg) {
        final String str = serverId;
        final String str2 = relation;
        final String str3 = relationText;
        final String str4 = ownerRelation;
        final String str5 = ownerRelationText;
        return submit(sDefaultJobManager, null, null, new Job<AsyncResult<OutgoingInvitation>>() {
            public AsyncResult<OutgoingInvitation> run(JobContext jc) {
                return AlbumShareOperations.requestInvitationForSms(str, str2, str3, str4, str5);
            }
        }, l, msg);
    }

    public static Future<?> syncUserListForAlbumAsync(final String albumId, final boolean isSharer, OnCompletionListener<Void, Void> l) {
        return submit(new Job<AsyncResult<Void>>() {
            public AsyncResult<Void> run(JobContext jc) {
                return AlbumShareOperations.syncUserListForAlbum(albumId, isSharer);
            }
        }, l);
    }

    public static Future<?> syncAllUserInfoFromNetworkAsync(OnCompletionListener<Void, Void> l) {
        return submit(new Job<AsyncResult<Void>>() {
            public AsyncResult<Void> run(JobContext jc) {
                return AlbumShareOperations.syncAllUserInfoFromNetwork();
            }
        }, l);
    }

    public static Future<?> kickSharersAsync(final String serverId, final List<String> userIds, OnCompletionListener<Void, Pair<List<String>, List<String>>> l, BlockMessage msg) {
        return submit(sDefaultJobManager, null, null, new Job<AsyncResult<Pair<List<String>, List<String>>>>() {
            public AsyncResult<Pair<List<String>, List<String>>> run(JobContext jc) {
                return AlbumShareOperations.deleteSharers(AlbumShareUIManager.getContentResolver(), serverId, userIds);
            }
        }, l, msg);
    }

    public static Future<?> tryToCreateCloudAlbumAsync(final String cloudId, OnCompletionListener<Void, String> l) {
        return submit(sDefaultJobManager, null, null, new Job<AsyncResult<String>>() {
            public AsyncResult<String> run(JobContext jc) {
                return AlbumShareOperations.tryToCreateCloudAlbum(cloudId);
            }
        }, l, null);
    }

    public static <T> Future<AsyncResult<T>> submit(Job<AsyncResult<T>> job, OnCompletionListener<Void, T> l) {
        return submit(sDefaultJobManager, null, null, job, l);
    }

    static <K, T, S> Future<AsyncResult<T>> submit(JobStatusManager<K, S> jobManager, K key, S status, Job<AsyncResult<T>> job, OnCompletionListener<K, T> l) {
        return submit(jobManager, key, status, job, l, null);
    }

    static <K, T, S> Future<AsyncResult<T>> submit(JobStatusManager<K, S> jobManager, K key, S status, Job<AsyncResult<T>> job, OnCompletionListener<K, T> l, final BlockMessage blockMessage) {
        if (blockMessage == null) {
            jobManager.add(key, status);
            return jobManager.getThreadPool().submit(job, new FutureListenerAdapter(key, l, jobManager));
        }
        Dialog dialog = blockMessage.buildDialog();
        if (dialog != null) {
            jobManager.add(key, status);
            dialog.show();
            final Future<AsyncResult<T>> future = jobManager.getThreadPool().submit(job, new FutureListenerAdapter(key, new FutureCancelledListener(l, dialog), jobManager));
            dialog.setOnCancelListener(new OnCancelListener() {
                public void onCancel(DialogInterface dialogInterface) {
                    future.cancel();
                    if (blockMessage.mListener != null) {
                        blockMessage.mListener.onCancel(dialogInterface);
                    }
                }
            });
            return future;
        } else if (l == null) {
            return null;
        } else {
            l.onCompletion(key, null, -2, false);
            return null;
        }
    }

    static ContentResolver getContentResolver() {
        return GalleryApp.sGetAndroidContext().getContentResolver();
    }

    static void showDialogToAccept(final Activity activity, CloudSharerMediaSet mediaSet, final OnCompletionListener<Path, Long> acceptListener, final OnCompletionListener<Path, Void> denyListener, OnCancelListener cancelListener) {
        final Path path = mediaSet.getPath();
        IncomingInvitation invitation = getIncomingInvitation(mediaSet);
        OnClickListener denyButtonListener = new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                AlbumShareUIManager.onNegativeClick(activity, path, denyListener);
            }
        };
        OnShowListener onShowListener = new OnShowListener() {
            public void onShow(final DialogInterface dialog) {
                ((AlertDialog) dialog).getButton(-1).setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        AlbumShareUIManager.tryToAccept(path, activity, acceptListener, null, (AlertDialog) dialog);
                    }
                });
            }
        };
        String sharerInfoStr = null;
        if (invitation != null && invitation.hasSharerInfo()) {
            sharerInfoStr = mediaSet.getSharerInfo();
        }
        SharerInfo sharerInfo = null;
        if (!TextUtils.isEmpty(sharerInfoStr)) {
            sharerInfo = AlbumShareOperations.parseSharerInfo(sharerInfoStr);
        }
        if (sharerInfo != null) {
            showDialogToAccept(activity, sharerInfo, cancelListener, denyButtonListener, onShowListener);
        } else {
            showDialogToAccept(activity, invitation, cancelListener, denyButtonListener, onShowListener);
        }
    }

    private static void showDialogToAccept(Activity activity, SharerInfo sharerInfo, OnCancelListener cancelListener, OnClickListener denyButtonListener, OnShowListener onShowListener) {
        String babyName = sharerInfo.mAlbumNickName;
        String ownerName = sharerInfo.mOwnerRelationText;
        String sharerName = sharerInfo.mSharerRelationText;
        String[] relations = activity.getResources().getStringArray(R.array.owner_relation);
        String[] shareRelations = activity.getResources().getStringArray(R.array.sharer_relation_addressive);
        for (int i = 0; i < relations.length; i++) {
            if (relations[i].equalsIgnoreCase(sharerName)) {
                sharerName = shareRelations[i];
                break;
            }
        }
        View contentView = activity.getLayoutInflater().inflate(R.layout.baby_album_share_invitation_dialog_layout, null);
        ((TextView) contentView.findViewById(R.id.msg)).setText(activity.getString(R.string.baby_album_sharer_accept_dialog_msg, new Object[]{babyName, sharerName, babyName, ownerName, babyName}));
        AlertDialog d = new Builder(activity, miui.R.style.Theme_Light_Dialog).setView(contentView).setPositiveButton(R.string.accept, null).setNegativeButton(R.string.deny, denyButtonListener).setOnCancelListener(cancelListener).create();
        d.setOnShowListener(onShowListener);
        if (!TextUtils.isEmpty(sharerInfo.mThumbnailUrl)) {
            DisplayImageOptions defaultDisplayImageOptions = new DisplayImageOptions.Builder().cacheOnDisc().considerExifParams(true).resetViewBeforeLoading(true).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565).displayer(new PeopleItemBitmapDisplayer(false)).showStubImage(R.drawable.baby_album_sharer_default_small).usingRegionDecoderFace(true).build();
            ImageLoader.getInstance().resume();
            ImageLoader.getInstance().displayImage(sharerInfo.mThumbnailUrl, (ImageView) contentView.findViewById(R.id.baby_photo), defaultDisplayImageOptions, null, sharerInfo.mFaceRelativePos);
            d.setOnDismissListener(new OnDismissListener() {
                public void onDismiss(DialogInterface dialog) {
                    ImageLoader.getInstance().pause();
                }
            });
        }
        d.show();
    }

    private static void showDialogToAccept(Activity activity, IncomingInvitation invitation, OnCancelListener cancelListener, OnClickListener denyButtonListener, OnShowListener onShowListener) {
        String owner = invitation != null ? invitation.getOwnerName() : "";
        String album = invitation != null ? invitation.getAlbumName() : "";
        Builder title = new Builder(activity).setTitle(R.string.share_album);
        Object[] objArr = new Object[2];
        objArr[0] = owner;
        objArr[1] = activity.getString(R.string.quotation, new Object[]{album});
        AlertDialog d = title.setMessage(activity.getString(R.string.accept_or_deny, objArr)).setPositiveButton(R.string.accept, null).setNegativeButton(R.string.deny, denyButtonListener).setOnCancelListener(cancelListener).create();
        d.setOnShowListener(onShowListener);
        d.show();
    }

    public static void tryToAccept(final Path path, final Activity activity, final OnCompletionListener<Path, Long> acceptListener, OnCancelListener cancelListener, Dialog acceptDialog) {
        boolean autoSync;
        if (acceptDialog != null) {
            acceptDialog.dismiss();
        }
        Runnable acceptInvitationJob = new Runnable() {
            public void run() {
                AlbumShareUIManager.acceptInvitationAsync(path, acceptListener, BlockMessage.create(activity, null, activity.getString(R.string.operation_in_process), false));
            }
        };
        Account xiaomiAccount = AccountHelper.getXiaomiAccount(activity);
        if (xiaomiAccount == null || !ContentResolver.getSyncAutomatically(xiaomiAccount, "com.miui.gallery.cloud.provider")) {
            autoSync = false;
        } else {
            autoSync = true;
        }
        if (autoSync) {
            acceptInvitationJob.run();
            return;
        }
        acceptListener.onCompletion(path, null, -1003, false);
        Intent intent = new Intent(activity, LoginAndSyncForInvitationActivity.class);
        intent.putExtra("invitation_path", path);
        activity.startActivity(intent);
    }

    private static void onNegativeClick(Activity activity, Path path, OnCompletionListener<Path, Void> denyListener) {
        OnCompletionListener<Path, Void> l;
        if (denyListener != null) {
            l = denyListener;
        } else {
            l = new OnCompletionListener<Path, Void>() {
                public void onCompletion(Path key, Void data, int errorCode, boolean cancel) {
                    if (cancel) {
                        UIHelper.toast((int) R.string.cancel_hint);
                    } else if (GalleryErrorCode.isClientError(errorCode)) {
                        UIHelper.toast((int) R.string.operation_failed);
                    } else {
                        UIHelper.toast((int) R.string.operation_successful);
                    }
                }
            };
        }
        denyInvitationAsync(path, l, BlockMessage.create(activity, null, activity.getString(R.string.operation_in_process), false));
    }

    public static CloudSharerMediaSet findSharerMediaSet(Path path) {
        return path.getMediaSet();
    }

    static void notifyError(OnCompletionListener<?, ?> l) {
        notifyError(l, -110);
    }

    static void notifyError(OnCompletionListener<?, ?> l, int error) {
        if (l != null) {
            l.onCompletion(null, null, error, false);
        }
    }
}

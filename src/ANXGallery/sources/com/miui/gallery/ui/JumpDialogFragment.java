package com.miui.gallery.ui;

import android.app.Activity;
import android.app.Dialog;
import android.app.Fragment;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.WindowManager.LayoutParams;
import com.miui.account.AccountHelper;
import com.miui.gallery.R;
import com.miui.gallery.activity.facebaby.BabyAlbumDetailActivity;
import com.miui.gallery.activity.facebaby.FacePageActivity;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.provider.GalleryContract.RecentAlbum;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.AlbumsCursorHelper;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ShareAlbumsCursorHelper;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.GalleryDialogFragment;
import miui.app.ProgressDialog;

public class JumpDialogFragment extends GalleryDialogFragment {
    private Runnable mDelayVisibleRunnable = new Runnable() {
        public void run() {
            if (JumpDialogFragment.this.getActivity() != null) {
                JumpDialogFragment.this.setDialogAlpha(JumpDialogFragment.this.getDialog(), 1.0f);
            }
        }
    };
    private HandleIntentCallback mHandleIntentCallback = new HandleIntentCallback() {
        public void onHandleIntent(final Intent intent) {
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    if (JumpDialogFragment.this.getActivity() != null) {
                        if (intent != null) {
                            JumpDialogFragment.this.startActivity(intent);
                        }
                        JumpDialogFragment.this.dismissAllowingStateLoss();
                    }
                }
            });
        }

        public void onJumpFailed(Context context, final String errorMsg) {
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    if (JumpDialogFragment.this.getActivity() != null) {
                        if (!TextUtils.isEmpty(errorMsg)) {
                            ToastUtils.makeText(JumpDialogFragment.this.getActivity(), errorMsg);
                        }
                        JumpDialogFragment.this.dismissAllowingStateLoss();
                    }
                }
            });
        }
    };

    private interface HandleIntentCallback {
        void onHandleIntent(Intent intent);

        void onJumpFailed(Context context, String str);
    }

    private class AlbumJumpHelper implements LoaderCallbacks {
        private Cursor mAlbumCursor;
        private AlbumsCursorHelper mAlbumsCursorHelper;
        private Fragment mFragment;
        private HandleIntentCallback mHandleIntentCallback;
        private Cursor mShareAlbumCursor;
        private ShareAlbumsCursorHelper mShareAlbumsCursorHelper;
        private Uri mUri;

        public AlbumJumpHelper(Fragment fragment) {
            this.mFragment = fragment;
        }

        public void startLoading(HandleIntentCallback callback, Uri uri) {
            this.mUri = uri;
            String albumServerId = this.mUri.getQueryParameter("serverId");
            String albumIdString = this.mUri.getQueryParameter("id");
            long albumId = !TextUtils.isEmpty(albumIdString) ? Long.valueOf(albumIdString).longValue() : -1;
            if (albumId >= 0 || !TextUtils.isEmpty(albumServerId)) {
                Intent intent = getShortCutIntent(albumId);
                if (intent != null) {
                    callback.onHandleIntent(intent);
                    return;
                }
                this.mHandleIntentCallback = callback;
                Bundle bundle = new Bundle();
                bundle.putString("serverId", albumServerId);
                bundle.putLong("id", albumId);
                this.mFragment.getLoaderManager().initLoader(1, bundle, this);
                return;
            }
            callback.onJumpFailed(this.mFragment.getActivity(), this.mFragment.getString(R.string.album_jump_failed));
        }

        public Loader onCreateLoader(int id, Bundle args) {
            CursorLoader loader = new CursorLoader(this.mFragment.getActivity());
            switch (id) {
                case 1:
                    String selection;
                    loader.setUri(Album.URI_ALL_EXCEPT_DELETED);
                    loader.setProjection(AlbumsCursorHelper.ALL_ALBUMS_PROJECTION);
                    if (args.getLong("id", -1) >= 0) {
                        selection = String.format("%s=%s", new Object[]{"_id", Long.valueOf(args.getLong("id"))});
                    } else {
                        selection = String.format("%s='%s'", new Object[]{"serverId", args.getString("serverId")});
                    }
                    loader.setSelection(selection);
                    break;
                case 2:
                    loader.setUri(Album.URI_SHARE_ALL);
                    loader.setProjection(ShareAlbumsCursorHelper.SHARED_ALBUM_PROJECTION);
                    loader.setSelection(String.format("%s>0 AND %s=%s", new Object[]{"count", "_id", Long.valueOf(args.getLong("id"))}));
                    break;
            }
            return loader;
        }

        public void onLoadFinished(Loader loader, Object data) {
            switch (loader.getId()) {
                case 1:
                    this.mAlbumCursor = (Cursor) data;
                    this.mAlbumsCursorHelper = new AlbumsCursorHelper(this.mFragment.getActivity());
                    this.mAlbumsCursorHelper.setAlbumsData(this.mAlbumCursor);
                    if (this.mAlbumCursor.moveToFirst()) {
                        Bundle bundle = new Bundle();
                        bundle.putLong("id", this.mAlbumsCursorHelper.getAlbumId(0));
                        this.mFragment.getLoaderManager().initLoader(2, bundle, this);
                        return;
                    }
                    this.mHandleIntentCallback.onJumpFailed(this.mFragment.getActivity(), this.mFragment.getString(R.string.album_jump_failed));
                    return;
                case 2:
                    this.mShareAlbumCursor = (Cursor) data;
                    this.mShareAlbumsCursorHelper = new ShareAlbumsCursorHelper();
                    this.mShareAlbumsCursorHelper.setSharedAlbums(this.mShareAlbumCursor);
                    Intent intent = createJumpIntent();
                    if (intent != null) {
                        this.mHandleIntentCallback.onHandleIntent(intent);
                        return;
                    } else {
                        this.mHandleIntentCallback.onJumpFailed(this.mFragment.getActivity(), this.mFragment.getString(R.string.album_jump_failed));
                        return;
                    }
                default:
                    return;
            }
        }

        public void onLoaderReset(Loader loader) {
            switch (loader.getId()) {
                case 1:
                    this.mAlbumsCursorHelper = null;
                    if (this.mAlbumCursor != null) {
                        this.mAlbumCursor.close();
                        return;
                    }
                    return;
                case 2:
                    this.mShareAlbumsCursorHelper = null;
                    if (this.mShareAlbumCursor != null) {
                        this.mShareAlbumCursor.close();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }

        private Intent createJumpIntent() {
            if (this.mAlbumCursor.getCount() <= 0) {
                return null;
            }
            long albumId = this.mAlbumsCursorHelper.getAlbumId(0);
            Intent intent = getShortCutIntent(albumId);
            if (intent != null) {
                return intent;
            }
            long attributes = this.mAlbumsCursorHelper.getAttributes(albumId);
            String serverId = this.mAlbumsCursorHelper.getServerId(albumId);
            String albumName = this.mAlbumsCursorHelper.getAlbumName(albumId);
            String albumLocalPath = this.mAlbumsCursorHelper.getAlbumLocalPath(Long.valueOf(albumId));
            if (this.mAlbumsCursorHelper.isBabyAlbum(albumId)) {
                intent = new Intent(this.mFragment.getActivity(), BabyAlbumDetailActivity.class);
                intent.putExtra("people_id", this.mAlbumsCursorHelper.getBabyAlbumPeopleId(albumId));
                intent.putExtra("baby_info", this.mAlbumsCursorHelper.getBabyInfo(albumId));
                intent.putExtra("thumbnail_info_of_baby", this.mAlbumsCursorHelper.getThumbnailInfoOfBaby(albumId));
                intent.putExtra("baby_sharer_info", this.mAlbumsCursorHelper.getBabySharerInfo(albumId));
            } else {
                intent = new Intent("com.miui.gallery.action.VIEW_ALBUM_DETAIL");
            }
            boolean isScreenshotAlbum = String.valueOf(2).equals(serverId);
            boolean isOtherShareAlbum = this.mAlbumsCursorHelper.isOtherShareAlbum(albumId);
            boolean isOwnerShareAlbum = this.mShareAlbumsCursorHelper.isOwnerShareAlbum(albumId);
            boolean isLocalAlbum = this.mAlbumsCursorHelper.isLocalAlbum(albumId);
            intent.putExtra("other_share_album", isOtherShareAlbum);
            intent.putExtra("owner_share_album", isOwnerShareAlbum);
            intent.putExtra("is_local_album", isLocalAlbum);
            intent.putExtra("screenshot_album", isScreenshotAlbum);
            intent.putExtra("pano_album", AlbumsCursorHelper.isPanoAlbum(albumId));
            intent.putExtra("album_id", albumId);
            intent.putExtra("album_name", albumName);
            intent.putExtra("album_unwriteable", this.mAlbumsCursorHelper.albumUnwriteable(albumId));
            if (isScreenshotAlbum) {
                String appName = this.mUri.getQueryParameter("screenshotAppName");
                if (!TextUtils.isEmpty(appName)) {
                    intent.putExtra("screenshot_app_name", appName);
                    intent.putExtra("album_name", appName);
                    intent.putExtra("album_unwriteable", true);
                }
            }
            intent.putExtra("album_server_id", serverId);
            intent.putExtra("attributes", attributes);
            intent.putExtra("album_local_path", albumLocalPath);
            return intent;
        }

        private Intent getShortCutIntent(long albumId) {
            if (AlbumsCursorHelper.isFaceAlbum(albumId)) {
                return new Intent("com.miui.gallery.action.VIEW_PEOPLE");
            }
            if (!AlbumsCursorHelper.isRecentAlbum(albumId)) {
                return null;
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(RecentAlbum.VIEW_PAGE_URI.buildUpon().appendQueryParameter("source", "album_page").build());
            intent.setPackage(this.mFragment.getActivity().getPackageName());
            return intent;
        }
    }

    private class PeopleJumpHelper implements LoaderCallbacks {
        public final String[] PROJECTION = new String[]{"_id", "peopleName", "relationType", "microthumbfile", "thumbnailFile", "localFile", "faceXScale", "faceYScale", "faceWScale", "faceHScale", "serverId"};
        private Fragment mFragment;
        private HandleIntentCallback mHandleIntentCallback;

        public PeopleJumpHelper(Fragment fragment) {
            this.mFragment = fragment;
        }

        public void startLoading(HandleIntentCallback callback, String peopleServerId) {
            this.mHandleIntentCallback = callback;
            Bundle bundle = new Bundle();
            bundle.putString("serverId", peopleServerId);
            this.mFragment.getLoaderManager().initLoader(1, bundle, this);
        }

        public Loader onCreateLoader(int id, Bundle args) {
            CursorLoader loader = new CursorLoader(this.mFragment.getActivity());
            loader.setUri(PeopleFace.PEOPLE_COVER_URI.buildUpon().appendQueryParameter("serverId", args.getString("serverId")).build());
            loader.setProjection(this.PROJECTION);
            return loader;
        }

        /* JADX WARNING: Removed duplicated region for block: B:23:0x00c0  */
        /* JADX WARNING: Removed duplicated region for block: B:20:0x00b3  */
        /* JADX WARNING: Removed duplicated region for block: B:20:0x00b3  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x00c0  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onLoadFinished(Loader loader, Object data) {
            Intent intent = null;
            if (data != null) {
                Cursor cursor = (Cursor) data;
                try {
                    if (cursor.moveToFirst()) {
                        Bundle bundle = new Bundle();
                        String peopleId = cursor.getString(10);
                        String peopleLocalId = cursor.getString(0);
                        bundle.putString("server_id_of_album", peopleId);
                        bundle.putString("local_id_of_album", peopleLocalId);
                        String peopleName = cursor.getString(1);
                        if (TextUtils.isEmpty(peopleName)) {
                            peopleName = this.mFragment.getString(R.string.people_page_unname);
                        }
                        bundle.putString("album_name", peopleName);
                        bundle.putInt("relationType", cursor.getInt(2));
                        String thumbnail = cursor.getString(4);
                        if (TextUtils.isEmpty(thumbnail)) {
                            thumbnail = cursor.getString(3);
                        }
                        if (TextUtils.isEmpty(thumbnail)) {
                            thumbnail = cursor.getString(5);
                        }
                        bundle.putString("face_album_cover", thumbnail);
                        bundle.putParcelable("face_position_rect", new RectF(cursor.getFloat(6), cursor.getFloat(7), cursor.getFloat(6) + cursor.getFloat(8), cursor.getFloat(7) + cursor.getFloat(9)));
                        Intent intent2 = new Intent();
                        try {
                            intent2.putExtras(bundle);
                            intent2.setClass(this.mFragment.getActivity(), FacePageActivity.class);
                            intent = intent2;
                        } catch (Exception e) {
                            intent = intent2;
                            cursor.close();
                            if (intent != null) {
                            }
                        }
                    }
                } catch (Exception e2) {
                    cursor.close();
                    if (intent != null) {
                    }
                }
            }
            if (intent != null) {
                this.mHandleIntentCallback.onHandleIntent(intent);
            } else {
                this.mHandleIntentCallback.onJumpFailed(this.mFragment.getActivity(), this.mFragment.getString(R.string.people_jump_failed));
            }
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    public static void showAlbumPage(Activity activity, Uri uri) {
        JumpDialogFragment dialog = new JumpDialogFragment();
        Bundle data = new Bundle();
        data.putParcelable("uri", uri);
        data.putInt("pageType", 0);
        dialog.setArguments(data);
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "JumpDialogFragment");
    }

    public static void showPeoplePage(Activity activity, String peopleServerId) {
        JumpDialogFragment dialog = new JumpDialogFragment();
        Bundle data = new Bundle();
        data.putString("serverId", peopleServerId);
        data.putInt("pageType", 1);
        dialog.setArguments(data);
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "JumpDialogFragment");
    }

    public static void enterPrivateAlbum(Activity activity) {
        JumpDialogFragment dialog = new JumpDialogFragment();
        Bundle data = new Bundle();
        data.putInt("pageType", 2);
        dialog.setArguments(data);
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "JumpDialogFragment");
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialog = ProgressDialog.show(getActivity(), "", getActivity().getString(R.string.loading_dots), true, false);
        setDialogAlpha(dialog, 0.0f);
        setCancelable(false);
        return dialog;
    }

    public void onStart() {
        super.onStart();
        ThreadManager.getMainHandler().postDelayed(this.mDelayVisibleRunnable, (long) getResources().getInteger(17694722));
    }

    public void onStop() {
        super.onStop();
        ThreadManager.getMainHandler().removeCallbacks(this.mDelayVisibleRunnable);
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        int pageType = getArguments().getInt("pageType", -1);
        switch (pageType) {
            case 0:
                Log.d("JumpDialogFragment", "Jump to album page, album serverId = %s", getArguments().getString("serverId"));
                new AlbumJumpHelper(this).startLoading(this.mHandleIntentCallback, (Uri) getArguments().getParcelable("uri"));
                return;
            case 1:
                Log.d("JumpDialogFragment", "Jump to people page, people serverId = %s", getArguments().getString("serverId"));
                new PeopleJumpHelper(this).startLoading(this.mHandleIntentCallback, getArguments().getString("serverId"));
                return;
            case 2:
                Log.d("JumpDialogFragment", "Jump secret album");
                Bundle bundle = new Bundle();
                bundle.putSerializable("cloud_guide_source", CloudGuideSource.SECRET);
                LoginAndSyncCheckFragment.checkLoginAndSyncState(this, bundle);
                return;
            default:
                Log.e("JumpDialogFragment", "Invalid page type %d", Integer.valueOf(pageType));
                dismiss();
                return;
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            switch (requestCode) {
                case 29:
                    if (AccountHelper.getXiaomiAccount(getActivity()) != null) {
                        AuthenticatePrivacyPasswordFragment.startAuthenticatePrivacyPassword(this);
                        break;
                    }
                    break;
                case 36:
                    IntentUtil.enterPrivateAlbum(getActivity());
                    this.mHandleIntentCallback.onHandleIntent(null);
                    break;
            }
        }
        this.mHandleIntentCallback.onHandleIntent(null);
        super.onActivityResult(requestCode, resultCode, data);
    }

    private void setDialogAlpha(Dialog dialog, float alpha) {
        if (dialog != null && dialog.getWindow() != null) {
            LayoutParams lp = dialog.getWindow().getAttributes();
            lp.alpha = alpha;
            dialog.getWindow().setAttributes(lp);
        }
    }
}

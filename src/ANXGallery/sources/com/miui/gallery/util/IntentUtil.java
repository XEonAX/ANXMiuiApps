package com.miui.gallery.util;

import android.app.Activity;
import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipData.Item;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.MiuiIntent;
import android.content.res.MiuiConfiguration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.ActivityOptionsCompat;
import android.support.v4.util.Pair;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.android.internal.SystemPropertiesCompat;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.activity.CloudGuideWelcomeActivity;
import com.miui.gallery.activity.CloudSettingsActivity;
import com.miui.gallery.activity.GallerySettingsActivity;
import com.miui.gallery.activity.InternalPhotoPageActivity;
import com.miui.gallery.activity.PhotoDetailActivity;
import com.miui.gallery.activity.PhotoPreviewSelectActivity;
import com.miui.gallery.adapter.CheckableAdapter.CheckedItem;
import com.miui.gallery.agreement.cta.CtaAgreement.Licence;
import com.miui.gallery.card.model.MediaInfo;
import com.miui.gallery.card.ui.detail.StoryAlbumActivity;
import com.miui.gallery.collage.CollageActivity;
import com.miui.gallery.compat.view.WindowCompat;
import com.miui.gallery.editor.photo.app.PhotoEditor;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.movie.ui.activity.MovieActivity;
import com.miui.gallery.picker.PickerActivity;
import com.miui.gallery.picker.helper.Picker.ImageType;
import com.miui.gallery.picker.uri.OriginUrlRequestor.OriginInfo;
import com.miui.gallery.picker.uri.UriGenerator;
import com.miui.gallery.picker.uri.UriGenerator.UriGenerateListener;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.preference.GalleryPreferences.Baby;
import com.miui.gallery.provider.GalleryOpenProvider;
import com.miui.gallery.request.HostManager;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.BaseMediaFragment;
import com.miui.gallery.ui.PhotoPageFragment;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import com.miui.gallery.util.MovieLibraryLoaderHelper.DownloadStateListener;
import com.miui.gallery.util.photoview.ItemViewInfo;
import com.miui.gallery.util.photoview.PhotoPageDataCache;
import com.miui.os.Rom;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import miui.cloud.backup.SettingsBackupConsts;
import miui.hybrid.HybridActivity;
import miui.provider.ExtraNetwork;

public class IntentUtil {
    private static final String[] CONTACT_PHOTO_CLASS = new String[]{"com.jeejen.contact.ui.AttachPhotoActivity", "com.android.contacts.activities.AttachPhotoActivity"};
    private static final String[] CONTACT_PHOTO_PACKAGE = new String[]{"com.jeejen.family.miui", MiuiConfiguration.CONTACTS_PKG_NAME};
    private static final String[] PLAY_VIDEO_CLASS = new String[]{"com.miui.videoplayer.VideoPlayerActivity", "com.miui.videoplayer.VideoPlayerActivity"};
    private static final String[] PLAY_VIDEO_PACKAGE = new String[]{"com.miui.videoplayer", "com.miui.video"};

    public static void gotoPhotoPage(BaseMediaFragment fragment, ViewGroup adapterView, Uri uri, int position, int count, String selection, String[] selectionArgs, String orderBy, ImageLoadParams data, long albumId) {
        gotoPhotoPage(fragment.getActivity(), adapterView, uri, position, count, selection, selectionArgs, orderBy, data, albumId, null, -1, false, null, null, false);
    }

    public static void gotoPhotoPage(BaseMediaFragment fragment, ViewGroup adapterView, Uri uri, int position, int count, String selection, String[] selectionArgs, String orderBy, ImageLoadParams data) {
        gotoPhotoPage(fragment.getActivity(), adapterView, uri, position, count, selection, selectionArgs, orderBy, data, -1, null, -1, false, null, null, false);
    }

    public static void gotoPhotoPage(BaseMediaFragment fragment, ViewGroup adapterView, Uri uri, int position, int count, String selection, String[] selectionArgs, String orderBy, ImageLoadParams data, String albumName) {
        gotoPhotoPage(fragment.getActivity(), adapterView, uri, position, count, selection, selectionArgs, orderBy, data, -1, albumName, -1, false, null, null, false);
    }

    public static void gotoPhotoPage(BaseMediaFragment fragment, ViewGroup adapterView, Uri uri, int position, int count, String selection, String[] selectionArgs, String orderBy, ImageLoadParams data, long albumId, String albumName, int operationMask) {
        gotoPhotoPage(fragment.getActivity(), adapterView, uri, position, count, selection, selectionArgs, orderBy, data, albumId, albumName, operationMask, false, null, null, false);
    }

    public static void gotoPhotoPage(BaseMediaFragment fragment, ViewGroup adapterView, Uri uri, int position, int count, String selection, String[] selectionArgs, String orderBy, ImageLoadParams data, String albumName, boolean fromRecommendFacePage, String recommendFaceId, ArrayList<ItemViewInfo> viewInfos) {
        gotoPhotoPage(fragment.getActivity(), adapterView, uri, position, count, selection, selectionArgs, orderBy, data, -1, albumName, -1, fromRecommendFacePage, recommendFaceId, viewInfos, false);
    }

    public static void gotoPhotoPageFromPicker(Activity activity, Uri uri, String selection, String[] selectionArgs, String orderBy, ImageLoadParams data, ArrayList<ItemViewInfo> viewInfos) {
        gotoPhotoPage(activity, null, uri, 0, 1, selection, selectionArgs, orderBy, data, -1, null, -1, false, null, viewInfos, true);
    }

    private static void gotoPhotoPage(final Activity activity, ViewGroup adapterView, Uri uri, int position, int count, String selection, String[] selectionArgs, String orderBy, ImageLoadParams data, long albumId, String albumName, int operationMask, boolean fromRecommendFacePage, String recommendFaceId, ArrayList<ItemViewInfo> specialItemViewInfos, boolean isPreview) {
        ThreadManager.getPreviewPool().submit(new Job<Object>() {
            public Object run(JobContext jc) {
                activity.startActivity(new Intent(activity, InternalPhotoPageActivity.class));
                return null;
            }
        });
        Bundle bundle = new Bundle();
        bundle.putParcelable("photo_data", uri);
        bundle.putInt("photo_init_position", position);
        bundle.putInt("photo_count", count);
        if (!TextUtils.isEmpty(selection)) {
            bundle.putString("photo_selection", selection);
        }
        if (selectionArgs != null) {
            bundle.putStringArray("photo_selection_args", selectionArgs);
        }
        if (!TextUtils.isEmpty(orderBy)) {
            bundle.putString("photo_order_by", orderBy);
        }
        if (data != null) {
            bundle.putParcelable("photo_transition_data", data);
        }
        bundle.putBoolean("from_gallery", true);
        if (adapterView != null) {
            PhotoPageDataCache.getInstance().setItemViewParent(adapterView);
        } else if (specialItemViewInfos != null && specialItemViewInfos.size() > 0) {
            PhotoPageDataCache.getInstance().setAppointedItemViewInfos(specialItemViewInfos);
        }
        if (!TextUtils.isEmpty(albumName)) {
            bundle.putString("album_name", albumName);
        }
        bundle.putLong("album_id", albumId);
        bundle.putInt("support_operation_mask", operationMask);
        bundle.putBoolean("from_recommend_face_page", fromRecommendFacePage);
        bundle.putString("recommend_face_id", recommendFaceId);
        bundle.putBoolean("photo_enter_transit", true);
        bundle.putBoolean("photo_preview_mode", isPreview);
        PhotoPageDataCache.getInstance().setArguments(bundle);
        if (data != null) {
            Builder builder = new Builder().cloneFrom(ThumbConfig.THUMBNAIL_DISPLAY_IMAGE_OPTIONS_DEFAULT).syncLoadFromThumbCache(false).cacheInMemory(true);
            if (data.getFileLength() > 0) {
                builder.considerFileLength(true).fileLength(data.getFileLength());
            }
            data.setDisplayImageOptions(builder.build());
            PhotoPageDataCache.preLoad(activity, data);
        }
    }

    public static void gotoPreviewSelectPage(BaseMediaFragment fragment, Uri uri, int position, int count, String selection, String[] selectionArgs, String orderBy, ImageLoadParams data, long[] selectedIds, int[] selectedPositions) {
        gotoPreviewSelectPage(fragment, uri, position, count, selection, selectionArgs, orderBy, data, selectedIds, selectedPositions, null, null);
    }

    public static void gotoPreviewSelectPage(BaseMediaFragment fragment, Uri uri, int position, int count, String selection, String[] selectionArgs, String orderBy, ImageLoadParams data, long[] selectedIds, int[] selectedPositions, String targetPackage, String targetClass) {
        Intent intent = new Intent(fragment.getActivity(), PhotoPreviewSelectActivity.class);
        intent.setData(uri);
        intent.putExtra("photo_init_position", position);
        intent.putExtra("photo_count", count);
        if (!TextUtils.isEmpty(selection)) {
            intent.putExtra("photo_selection", selection);
        }
        if (selectionArgs != null) {
            intent.putExtra("photo_selection_args", selectionArgs);
        }
        if (!TextUtils.isEmpty(orderBy)) {
            intent.putExtra("photo_order_by", orderBy);
        }
        if (data != null) {
            intent.putExtra("photo_transition_data", data);
        }
        if (selectedIds != null) {
            intent.putExtra("photo_preview_selected_ids", selectedIds);
        }
        if (selectedPositions != null) {
            intent.putExtra("photo_preview_selected_positions", selectedPositions);
        }
        if (targetPackage != null) {
            intent.putExtra("assistant_target_package", targetPackage);
        }
        if (targetClass != null) {
            intent.putExtra("assistant_target_class", targetClass);
        }
        fragment.startActivity(intent);
    }

    public static void gotoPhotoDetailPage(Activity context, BaseDataItem dataItem, boolean isFromLocked) {
        Intent intent = new Intent(context, PhotoDetailActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable("photo_detail_target", dataItem);
        bundle.putBoolean(MiuiIntent.EXTRA_START_ACTIVITY_WHEN_LOCKED, isFromLocked);
        intent.putExtras(bundle);
        context.startActivityForResult(intent, 38);
    }

    public static void gotoDailyAlbumDetailPage(Activity activity, int date) {
        Intent intent = new Intent("com.miui.gallery.action.VIEW_ALBUM_DETAIL");
        intent.putExtra("daily_album", true);
        intent.putExtra("daily_album_date", date);
        intent.putExtra("album_name", GalleryDateUtils.formatRelativeDate(GalleryDateUtils.format(date)));
        intent.putExtra("album_unwriteable", false);
        intent.putExtra("album_id", 2147483643);
        intent.putExtra("album_server_id", String.valueOf(-2147483643));
        activity.startActivity(intent);
    }

    private static void setDataAndType(Intent i, Uri uri, String mimeType) {
        if ("file".equals(uri.getScheme()) && GalleryOpenProvider.needReturnContentUri()) {
            i.setDataAndType(GalleryOpenProvider.translateToContent(uri.getPath()), mimeType);
            i.setFlags(1);
            return;
        }
        i.setDataAndType(uri, mimeType);
    }

    private static String ensureMimeType(Uri uri, String mimeType) {
        return !TextUtils.isEmpty(mimeType) ? mimeType : BaseFileMimeUtil.getMimeType(uri.toString());
    }

    public static void playVideo(Context context, Uri uri, String mimeType, boolean showGalleryWhenLocked, int requestOrientation) {
        Intent i = new Intent();
        mimeType = ensureMimeType(uri, mimeType);
        if ("*/*".equals(mimeType)) {
            mimeType = "video/*";
        }
        try {
            Log.i("IntentUtil", "showGalleryWhenLocked: %s, requestOrientation: %d", Boolean.valueOf(showGalleryWhenLocked), Integer.valueOf(requestOrientation));
            i.setAction("com.miui.videoplayer.LOCAL_VIDEO_PLAY");
            if (!"file".equals(uri.getScheme()) || GalleryOpenProvider.needReturnContentUri()) {
                setDataAndType(i, uri, mimeType);
            } else {
                setDataAndType(i, uri, null);
            }
            i.putExtra(MiuiIntent.EXTRA_START_ACTIVITY_WHEN_LOCKED, showGalleryWhenLocked);
            i.putExtra("com.miui.video.extra.play_video_request_orientation", requestOrientation);
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                Object callingPackage = activity.getCallingPackage();
                Log.i("IntentUtil", "play video extra calling package: %s", callingPackage);
                i.putExtra("miui_video_extra_calling_package", callingPackage);
                activity.startActivityForResult(i, 45);
                return;
            }
            context.startActivity(i);
        } catch (ActivityNotFoundException e) {
            Log.e("IntentUtil", "local video player not found!");
            i.setAction("android.intent.action.VIEW");
            setDataAndType(i, uri, mimeType);
            context.startActivity(i);
        } catch (Exception e2) {
            ToastUtils.makeText(context, context.getString(R.string.video_err));
        }
    }

    public static boolean startEditAction(BaseDataItem mediaItem, Activity activity, PhotoPageFragment fragment) {
        Intent intent = new Intent();
        ActivityOptionsCompat options = null;
        intent.putExtra("allow_use_on_offline_global", CTA.allowUseOnOfflineGlobal());
        BrightnessProvider brightnessProvider;
        if (mediaItem.isVideo()) {
            if (TextUtils.isEmpty(mediaItem.getOriginalPath())) {
                ToastUtils.makeText((Context) activity, R.string.video_edit_file_not_exits_tip);
                return false;
            }
            try {
                intent.setClass(activity, Class.forName("com.miui.gallery.video.editor.activity.VideoEditorActivity"));
                intent.putExtra("extra_screen_brightness", activity.getWindow().getAttributes().screenBrightness);
                if (activity instanceof BrightnessProvider) {
                    brightnessProvider = (BrightnessProvider) activity;
                    intent.putExtra("photo-brightness-manual", brightnessProvider.getManualBrightness());
                    intent.putExtra("photo-brightness-auto", brightnessProvider.getAutoBrightness());
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            intent.setDataAndType(Uri.fromFile(new File(mediaItem.getOriginalPath())), "video/*");
        } else if (mediaItem.getContentUriForExternal() == null) {
            ToastUtils.makeText((Context) activity, R.string.photo_edit_file_not_exits_tip);
            return false;
        } else {
            Drawable drawable;
            intent.setClass(activity, PhotoEditor.class);
            intent.setDataAndType(mediaItem.getContentUriForExternal(), "image/*");
            intent.putExtra("extra_screen_brightness", activity.getWindow().getAttributes().screenBrightness);
            if (activity instanceof BrightnessProvider) {
                brightnessProvider = (BrightnessProvider) activity;
                intent.putExtra("photo-brightness-manual", brightnessProvider.getManualBrightness());
                intent.putExtra("photo-brightness-auto", brightnessProvider.getAutoBrightness());
            }
            Intent activityIntent = activity.getIntent();
            boolean appLocked = false;
            if (activityIntent != null) {
                appLocked = activityIntent.getBooleanExtra("skip_interception", false);
            }
            Resources res = activity.getResources();
            ImageView imageView = fragment.getPhotoView();
            if (imageView != null) {
                drawable = imageView.getDrawable();
                if (drawable instanceof BitmapDrawable) {
                    BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                    Object memoryCacheKey = MemoryCacheUtils.generatePreviewPhotoKey(mediaItem.getContentUriForExternal().toString());
                    ImageLoader.getInstance().referenceToMemoryCache(memoryCacheKey, bitmapDrawable.getBitmap());
                    Log.d("IntentUtil", "cache preview: %s", memoryCacheKey);
                }
            }
            if (!appLocked && WindowCompat.supportActivityTransitions(activity.getWindow()) && res.getConfiguration().orientation == 1 && imageView != null) {
                View transitionView = fragment.getView().findViewById(R.id.photo_pager);
                if (transitionView == null) {
                    throw new IllegalArgumentException("photo view not found");
                }
                drawable = imageView.getDrawable();
                if (drawable == null) {
                    return false;
                }
                Pair[] pairArr = new Pair[1];
                pairArr[0] = Pair.create(transitionView, res.getString(R.string.photo_editor_transition_image_view));
                options = ActivityOptionsCompat.makeSceneTransitionAnimation(activity, pairArr);
                intent.putExtra("extra_custom_transition", true);
                intent.putExtra("extra_image_width", drawable.getIntrinsicWidth());
                intent.putExtra("extra_image_height", drawable.getIntrinsicHeight());
                float[] raw = new float[9];
                imageView.getImageMatrix().getValues(raw);
                intent.putExtra("extra_image_matrix", raw);
            }
        }
        if (mediaItem.isSecret()) {
            intent.putExtra("extra_is_secret", mediaItem.isSecret());
            intent.putExtra("extra_secret_key", mediaItem.getSecretKey());
            intent.putExtra("photo_secret_id", mediaItem.getKey());
        }
        Bundle optBundle = options == null ? null : options.toBundle();
        if (fragment != null) {
            activity.startActivityFromFragment(fragment, intent, 30, optBundle);
        } else {
            activity.startActivityForResult(intent, 30, optBundle);
        }
        Log.d("IntentUtil", "startEditor");
        return true;
    }

    public static boolean showOnMap(Context context, double latitude, double longitude) {
        try {
            String uri = String.format(Locale.US, "http://maps.google.com/maps?f=q&q=(%f,%f)", new Object[]{Double.valueOf(latitude), Double.valueOf(longitude)});
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(uri)).setComponent(new ComponentName("com.google.android.apps.maps", "com.google.android.maps.MapsActivity")));
            return true;
        } catch (Object e) {
            try {
                Log.e("IntentUtil", "GMM activity not found!", e);
                context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(String.format(Locale.US, "geo:%f,%f", new Object[]{Double.valueOf(latitude), Double.valueOf(longitude)}))));
                return true;
            } catch (Object ee) {
                Log.e("IntentUtil", "GEO activity not found!", ee);
                return false;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void createShortCutForBabyAlbum(Context activity, boolean isOtherShared, long albumUniformLocalId, String albumName, Bitmap face, String peopleId, String thumbnailInfo, String babyInfo, String sharerInfo) {
        String id;
        Intent intent = new Intent("com.miui.gallery.action.VIEW_SHARED_BABY_ALBUM");
        intent.putExtra("album_id", albumUniformLocalId);
        intent.putExtra("album_name", albumName);
        intent.putExtra("other_share_album", isOtherShared);
        intent.putExtra("people_id", peopleId);
        intent.putExtra("thumbnail_info_of_baby", thumbnailInfo);
        intent.putExtra("baby_info", babyInfo);
        intent.putExtra("baby_sharer_info", sharerInfo);
        if (TextUtils.isEmpty(peopleId)) {
            id = String.valueOf(albumUniformLocalId);
        } else {
            id = peopleId;
        }
        ShortcutUtil.createShortcut(activity, id, albumName, face, R.drawable.baby_default_icon, intent);
        if (VERSION.SDK_INT >= 26) {
            albumName = id;
        }
        Baby.recordBabyAlbumHasShortcut(albumName);
    }

    public static void removeAllShortCutForBabyAlbums(Context context) {
        Iterator it = Baby.getBabyAlbumsHasShortcut().iterator();
        while (it.hasNext()) {
            String babyAlbumName = (String) it.next();
            removeShortCutForBabyAlbumByName(context, babyAlbumName);
            Baby.removeBabyAlbumShortcut(babyAlbumName);
        }
    }

    public static void removeShortCutForBabyAlbumByName(Context context, String albumName) {
        Intent shortcutintent = new Intent("com.miui.home.launcher.action.UNINSTALL_SHORTCUT");
        shortcutintent.setPackage(SystemPropertiesCompat.get("ro.miui.product.home", MiuiConfiguration.LAUNCHER_PKG_NAME));
        if (VERSION.SDK_INT < 26) {
            shortcutintent.putExtra("android.intent.extra.shortcut.NAME", albumName);
        } else {
            shortcutintent.putExtra("shortcut_id", albumName);
        }
        shortcutintent.putExtra("android.intent.extra.shortcut.INTENT", new Intent());
        context.sendBroadcast(shortcutintent);
    }

    public static void startCameraActivity(Context context) {
        context.startActivity(new Intent("android.media.action.STILL_IMAGE_CAMERA").setFlags(335544320));
    }

    public static void pickPeople(Activity activity, String candidateName) {
        Intent intent = new Intent("com.miui.gallery.action.PICK_PEOPLE");
        intent.putExtra("pick_people", true);
        intent.putExtra("pick_people_candidate_name", candidateName);
        activity.startActivityForResult(intent, 14);
    }

    public static void pickFace(Activity activity, String name, String serverId, String localId, ArrayList<Long> ids, int pickCount, boolean needPickFaceServerId) {
        Intent intent = new Intent("com.miui.gallery.action.PICK_FACE");
        intent.putExtra("server_id_of_album", serverId);
        intent.putExtra("local_id_of_album", localId);
        intent.putExtra("album_name", name);
        intent.putExtra("pick_face_direct", true);
        intent.putExtra("need_pick_face_id", needPickFaceServerId);
        if (ids != null && ids.size() > 0) {
            intent.putExtra("pick_face_ids_in", TextUtils.join(",", ids));
        }
        intent.putExtra("pick-upper-bound", pickCount);
        intent.putExtra("picker_result_set", PickerActivity.copyPicker(null));
        activity.startActivityForResult(intent, 31);
    }

    public static void enterPrivateAlbum(Context context) {
        Intent intent = new Intent("com.miui.gallery.action.VIEW_ALBUM_DETAIL");
        intent.putExtra("album_id", -1000);
        intent.putExtra("album_name", context.getResources().getString(R.string.secret_album_display_name));
        intent.putExtra("album_server_id", String.valueOf(1000));
        intent.putExtra("album_unwriteable", false);
        context.startActivity(intent);
    }

    public static void gotoTurnOnSyncSwitch(Context context) {
        if (context != null) {
            if (ContentResolver.getMasterSyncAutomatically()) {
                Intent intent = new Intent(context, CloudSettingsActivity.class);
                intent.setAction("com.miui.gallery.cloud.provider.SYNC_SETTINGS");
                context.startActivity(intent);
                return;
            }
            context.startActivity(new Intent("com.xiaomi.action.MICLOUD_MAIN"));
        }
    }

    public static void enterGallerySetting(Context context) {
        context.startActivity(new Intent(context, GallerySettingsActivity.class));
    }

    public static void startMotionPhotoAction(BaseDataItem mediaItem, Activity activity, PhotoPageFragment fragment) {
        startExtraPhotoActivity(mediaItem, activity, fragment, "com.miui.extraphoto.action.MOTION_PHOTO_REPICK", 50);
    }

    public static void startAdvancedRefocusAction(BaseDataItem mediaItem, Activity activity, PhotoPageFragment fragment) {
        startExtraPhotoActivity(mediaItem, activity, fragment, "com.miui.extraphoto.action.VIEW_ADVANCED_REFOCUS", 44);
    }

    public static void startExtraPhotoActivity(BaseDataItem mediaItem, Activity activity, PhotoPageFragment fragment, String action, int requestId) {
        View transitionView = fragment.getView().findViewById(R.id.photo_pager);
        ImageView imageView = fragment.getPhotoView();
        int width = 0;
        int height = 0;
        float[] matrix = new float[9];
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable != null) {
                width = drawable.getIntrinsicWidth();
                height = drawable.getIntrinsicHeight();
                imageView.getImageMatrix().getValues(matrix);
            }
        }
        Intent intent = new Intent(action);
        intent.setPackage("com.miui.extraphoto");
        intent.putExtra("extra_screen_brightness", activity.getWindow().getAttributes().screenBrightness);
        intent.putExtra("extra_path", mediaItem.getOriginalPath());
        ActivityOptionsCompat options = null;
        if (width > 0 && height > 0 && activity.getResources().getConfiguration().orientation == 1 && WindowCompat.supportActivityTransitions(activity.getWindow())) {
            intent.putExtra("extra_preview_image_width", width);
            intent.putExtra("extra_preview_image_height", height);
            intent.putExtra("extra_preview_image_matrix", matrix);
            intent.putExtra("extra_has_transition", true);
            options = ActivityOptionsCompat.makeSceneTransitionAnimation(activity, Pair.create(transitionView, "tag_transition_view"), Pair.create(transitionView, "tag_transition_view_menu"));
        }
        Bundle optBundle = options == null ? null : options.toBundle();
        if (fragment != null) {
            try {
                activity.startActivityFromFragment(fragment, intent, requestId, optBundle);
                return;
            } catch (Object e) {
                Log.e("IntentUtil", "start extra photo activity error\n", e);
                return;
            }
        }
        activity.startActivityForResult(intent, requestId, optBundle);
    }

    public static void startFancyColorAction(BaseDataItem mediaItem, Fragment fragment, boolean isFromLocked) {
        startDualActionInternal(mediaItem, fragment, isFromLocked, "com.miui.extraphoto.action.FANCY_COLOR");
    }

    public static void startRefocusAction(BaseDataItem mediaItem, Fragment fragment, boolean isFromLocked) {
        startDualActionInternal(mediaItem, fragment, isFromLocked, "com.miui.extraphoto.action.VIEW_REFOCUS");
    }

    public static void startFreeViewAction(BaseDataItem mediaItem, Fragment fragment, boolean isFromLocked) {
        startDualActionInternal(mediaItem, fragment, isFromLocked, "com.miui.extraphoto.action.VIEW_3D");
    }

    private static void startDualActionInternal(BaseDataItem mediaItem, Fragment fragment, boolean isFromLocked, String action) {
        if (mediaItem != null && fragment != null && fragment.getActivity() != null && !TextUtils.isEmpty(mediaItem.getOriginalPath())) {
            Intent intent = new Intent(action);
            intent.setPackage("com.miui.extraphoto");
            setDataAndType(intent, Uri.fromFile(new File(mediaItem.getOriginalPath())), mediaItem.getMimeType());
            Bundle bundle = new Bundle();
            bundle.putBoolean(MiuiIntent.EXTRA_START_ACTIVITY_WHEN_LOCKED, isFromLocked);
            intent.putExtras(bundle);
            try {
                fragment.startActivityForResult(intent, 37);
            } catch (Throwable e) {
                Log.e("IntentUtil", e);
            }
        }
    }

    public static void guideToLoginXiaomiAccount(Context context, CloudGuideSource source) {
        Bundle args = new Bundle();
        args.putSerializable("cloud_guide_source", source);
        guideToLoginXiaomiAccount(context, args);
    }

    public static void guideToLoginXiaomiAccount(Context context, Bundle args) {
        Intent intent = new Intent(context, CloudGuideWelcomeActivity.class);
        if (args != null) {
            intent.putExtras(args);
        }
        context.startActivity(intent);
    }

    public static void gotoTrashBin(Context context, String from) {
        if (PrivacyAgreementUtils.isCloudServiceAgreementEnable(context)) {
            Intent intent = new Intent("com.miui.gallery.action.VIEW_WEB_DEVICE_ID");
            intent.putExtra("url", HostManager.getTrashBinUrl());
            context.startActivity(intent);
            HashMap<String, String> params = new HashMap();
            params.put("from", from);
            BaseSamplingStatHelper.recordCountEvent("trash_bin", "enter_trash_bin_page", params);
            return;
        }
        Log.w("IntentUtil", "can not go to trashBin because cloud privacy denied");
        startCloudMainPage(context);
    }

    public static void gotoOperationCard(Context context, String url) {
        Intent intent = new Intent("com.miui.gallery.action.VIEW_WEB_OPERATION_STORY");
        intent.putExtra("url", url);
        context.startActivity(intent);
    }

    public static void gotoMiCloudVipPage(Context context) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setComponent(new ComponentName("com.miui.cloudservice", "com.miui.cloudservice.ui.MiCloudHybridActivity"));
            intent.putExtra(HybridActivity.EXTRA_URL, "https://i.mi.com/vip?source=miui_gallery&ext=miui_gallery");
            context.startActivity(intent);
        } catch (Object e) {
            Log.e("IntentUtil", "can't goto micloud vip page", e);
        }
    }

    public static void gotoDeepClean(Context context) {
        try {
            context.startActivity(new Intent("miui.intent.action.GARBAGE_DEEPCLEAN"));
        } catch (Exception e) {
            Log.e("IntentUtil", "can't goto deep clean page");
        }
    }

    public static boolean gotoAppDetailTraffic(Context context) {
        Intent intent = new Intent("miui.intent.action.NETWORKASSISTANT_APP_DETAIL");
        Bundle bundle = new Bundle();
        bundle.putString(ExtraNetwork.FIREWALL_PACKAGE_NAME, context.getPackageName());
        bundle.putInt("title_type", 2);
        bundle.putInt("sort_type", 0);
        intent.putExtras(bundle);
        try {
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            Log.e("IntentUtil", "can't go to traffic page");
            return false;
        }
    }

    public static boolean gotoSettings(Context context) {
        try {
            context.startActivity(new Intent("android.settings.SETTINGS"));
            return true;
        } catch (Exception e) {
            Log.e("IntentUtil", "can't go to settings page");
            return false;
        }
    }

    public static boolean gotoBugreport(Context context) {
        Intent i;
        try {
            i = new Intent("miui.intent.action.BUGREPORT");
            i.putExtra(SettingsBackupConsts.EXTRA_PACKAGE_NAME, "com.miui.gallery");
            i.addFlags(268435456);
            context.startActivity(i);
            return true;
        } catch (Exception e) {
            Log.w("IntentUtil", "can't go to bug report app");
            try {
                i = new Intent("android.intent.action.VIEW");
                i.addCategory("android.intent.category.BROWSABLE");
                i.setData(Uri.parse("http://www.miui.com"));
                context.startActivity(i);
                return true;
            } catch (Exception e2) {
                Log.e("IntentUtil", "can't go to www.miui.com");
                return false;
            }
        }
    }

    public static boolean startCloudMainPage(Context context) {
        try {
            context.startActivity(new Intent("com.xiaomi.action.MICLOUD_MAIN"));
            return true;
        } catch (ActivityNotFoundException e) {
            Log.e("IntentUtil", "cloud main page start fail");
            return false;
        }
    }

    public static void jumpToExplore(Context context, String path) {
        try {
            Intent intent = new Intent("miui.intent.action.OPEN");
            intent.addFlags(268435456);
            if (Rom.IS_INTERNATIONAL) {
                intent.setPackage("com.mi.android.globalFileexplorer");
            } else {
                intent.setPackage("com.android.fileexplorer");
            }
            intent.putExtra("explorer_path", path);
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean isSpeechInputSupported() {
        if (BaseBuildUtil.isInternational() || BuildUtil.isPad()) {
            return false;
        }
        Intent i = new Intent("com.xiaomi.mibrain.action.RECOGNIZE_SPEECH");
        i.setPackage("com.xiaomi.mibrain.speech");
        return MiscUtil.isIntentSupported(i);
    }

    public static boolean startSpeechInput(Activity activity, int requestCode, boolean needNLP, ArrayList<String> suggestedSpeechTexts) {
        try {
            Intent i = new Intent("com.xiaomi.mibrain.action.RECOGNIZE_SPEECH");
            i.setPackage("com.xiaomi.mibrain.speech");
            i.putExtra("miref", activity.getPackageName());
            i.putExtra("appId", "2882303761517492012");
            i.putExtra("appToken", "527730249789");
            i.putExtra("client_id", "2882303761517492012");
            i.putExtra("api_key", "NwRthN_W6eI4dvXX47gZIlZdwBoDMT5t2Xu-7uciaqw");
            i.putExtra("sign_secret", "wyRVnz7UEHQqNcwYAvANxiXBL25taWWPsSQGHbWIcNcEVYrU72NO0MBZjkqXuOk-iOXXiAnrMlZo78sJDhFreg");
            i.putExtra("needNlp", needNLP);
            if (BaseMiscUtil.isValid(suggestedSpeechTexts)) {
                i.putStringArrayListExtra("suggestedSpeechTexts", suggestedSpeechTexts);
            }
            activity.startActivityForResult(i, requestCode);
            return true;
        } catch (ActivityNotFoundException e) {
            Log.e("IntentUtil", "Start speech input error");
            return false;
        }
    }

    public static void gotoPrivacyPolicy(Activity activity) {
        activity.startActivity(Licence.getPrivacyIntent());
    }

    public static String getCallingPackage(Activity activity) {
        String callingPackage = activity.getCallingPackage();
        if (TextUtils.isEmpty(callingPackage)) {
            ComponentName componentName = activity.getCallingActivity();
            if (componentName != null) {
                callingPackage = componentName.getPackageName();
            }
        }
        if (!TextUtils.isEmpty(callingPackage) || VERSION.SDK_INT < 22) {
            return callingPackage;
        }
        Uri referrer = activity.getReferrer();
        if (referrer != null) {
            return referrer.toString();
        }
        return callingPackage;
    }

    public static void startPhotoMovie(Activity activity, List<MediaInfo> mediaInfos, long cardId, int template, String title, String subTitle) {
        if (MovieLibraryLoaderHelper.getInstance().checkAbleOrDownload(activity, new DownloadStateListener() {
            public void onDownloading() {
                ToastUtils.makeText(GalleryApp.sGetAndroidContext(), (int) R.string.photo_movie_module_loading);
            }

            public void onFinish(boolean isSuccess, int errorCode) {
            }
        }) && BaseMiscUtil.isValid(mediaInfos)) {
            ClipData clip = null;
            int photoCount = 0;
            for (int i = 0; i < mediaInfos.size() && photoCount < 20; i++) {
                if (mediaInfos.get(i) != null) {
                    Uri uri = GalleryOpenProvider.translateToContent(((MediaInfo) mediaInfos.get(i)).getUri());
                    String sha1 = ((MediaInfo) mediaInfos.get(i)).getSha1();
                    if (clip == null) {
                        clip = new ClipData("data", new String[]{"image/*", "text/uri-list"}, new Item(sha1, null, uri));
                    } else {
                        clip.addItem(new Item(sha1, null, uri));
                    }
                    photoCount++;
                }
            }
            Intent intent = new Intent(activity, MovieActivity.class);
            intent.putExtra("movie_extra_preview_mode", true);
            intent.putExtra("card_id", cardId);
            intent.putExtra("card_title", title);
            intent.putExtra("card_sub_title", subTitle);
            intent.putExtra("movie_extra_template", template);
            intent.setClipData(clip);
            activity.startActivity(intent);
        }
    }

    public static void gotoStoryAlbum(Activity activity, long cardId) {
        if (activity != null) {
            Intent intent = new Intent(activity, StoryAlbumActivity.class);
            intent.putExtra("card_id", cardId);
            activity.startActivity(intent);
        }
    }

    public static boolean checkCreationCondition(Activity activity, int ops) {
        switch (ops) {
            case 0:
                return true;
            case 1:
                return MovieLibraryLoaderHelper.getInstance().checkAbleOrDownload(activity);
            case 2:
                return PrintInstallHelper.getInstance().ensurePrintFucntionAvailable();
            default:
                return false;
        }
    }

    public static void doCreation(final Activity activity, final int creationOps, List<CheckedItem> checkedItems, ImageType imageType) {
        if (checkedItems.isEmpty()) {
            Log.e("IntentUtil", "No selected Item!");
        } else {
            new UriGenerator(activity, checkedItems, imageType, new UriGenerateListener() {
                public void onFail() {
                    IntentUtil.recordUriGenerateError();
                }

                public void onSuccess(Uri[] uris, List<OriginInfo> originInfos) {
                    switch (creationOps) {
                        case 0:
                            IntentUtil.dispatchImageUrisInternalIntent(activity, new Intent(activity, CollageActivity.class), uris);
                            return;
                        case 1:
                            if (MovieLibraryLoaderHelper.getInstance().checkAbleOrDownload(activity)) {
                                IntentUtil.dispatchImageUrisInternalIntent(activity, new Intent(activity, MovieActivity.class), uris);
                                return;
                            }
                            return;
                        case 2:
                            PrintInstallHelper.getInstance().printPhotos(activity, uris, originInfos);
                            return;
                        default:
                            return;
                    }
                }
            }).generate();
        }
    }

    private static void recordUriGenerateError() {
        Log.e("IntentUtil", "checkedItem Uri generate error");
        BaseSamplingStatHelper.recordCountEvent("creation", "checked_item_uri_error");
    }

    private static void dispatchImageUrisInternalIntent(Activity activity, Intent intent, Uri[] imageUris) {
        if (imageUris.length == 0) {
            Log.e("IntentUtil", "No result Uris to dispatch!");
            return;
        }
        int i;
        if (GalleryOpenProvider.needReturnContentUri((Context) activity, "")) {
            for (i = 0; i < imageUris.length; i++) {
                imageUris[i] = GalleryOpenProvider.translateToContent(imageUris[i].getPath());
            }
        }
        ClipData clip = new ClipData("data", new String[]{"image/*", "text/uri-list"}, new Item(imageUris[0]));
        for (i = 1; i < imageUris.length; i++) {
            clip.addItem(new Item(imageUris[i]));
        }
        intent.setClipData(clip);
        intent.setFlags(1);
        try {
            activity.startActivity(intent);
        } catch (Throwable e) {
            Log.e("IntentUtil", e);
        }
    }
}

package com.miui.gallery.ui;

import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.RectF;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.provider.FaceManager;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet;
import com.miui.gallery.provider.deprecated.PeopleRecommendMediaSet;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BindImageHelper;
import com.miui.gallery.util.BindImageHelper.OnImageLoadingCompleteListener;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.face.FaceRegionRectF;
import com.miui.gallery.util.face.PeopleItemBitmapDisplayer;
import com.miui.gallery.util.photoview.ItemViewInfo;
import com.miui.gallery.util.uil.CloudImageLoader;
import com.miui.gallery.util.uil.CloudImageLoadingListener;
import com.miui.gallery.util.uil.CloudUriAdapter;
import com.miui.gallery.widget.PagerGridLayout.BaseAdapter;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import java.util.ArrayList;
import java.util.HashMap;

public abstract class RecommendFaceGroupAdapter extends BaseAdapter {
    public static final String[] PROJECTION = new String[]{"_id", "sha1", "microthumbfile", "thumbnailFile", "localFile", "faceXScale", "faceYScale", "faceWScale", "faceHScale", "exifOrientation", "serverId", "photo_id", "size"};
    private CloudImageLoadingListener mCloudLoadingListener;
    private ArrayList<String> mConfirmToRight = new ArrayList();
    private ArrayList<String> mConfirmToWrong = new ArrayList();
    protected Cursor mCursor;
    private Builder mDisplayImageOptionsBuilder;
    private BaseMediaFragment mFragment;
    private OnImageLoadingCompleteListener mLoadingCompleteListener;
    private Long mLocalIdOfAlbum;
    private String mServerIdOfAlbum;
    public int mVisibleItemCount = 0;

    private class RecommendFaceItem implements OnClickListener, OnTouchListener {
        private CheckBox mCheckbox;
        private ImageView mCoverImage;
        private ImageViewAware mCoverImageAware = new ImageViewAware(this.mCoverImage);
        private String mFacePath;
        private long mFileLength;
        private long mPhotoCloudId;
        private String mServerId;

        public RecommendFaceItem(View view) {
            this.mCoverImage = (ImageView) view.findViewById(R.id.recommend_face_cover);
            this.mCheckbox = (CheckBox) view.findViewById(R.id.face_check);
            this.mCoverImage.setOnTouchListener(this);
            this.mCoverImage.setClickable(true);
            this.mCheckbox.setOnClickListener(this);
            this.mCheckbox.setChecked(true);
        }

        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.face_check /*2131886689*/:
                    RecommendFaceGroupAdapter.this.recommendCheckStatusChanged(this.mServerId, this.mCheckbox.isChecked());
                    return;
                default:
                    return;
            }
        }

        public boolean onTouch(View v, MotionEvent event) {
            if (v.getId() != R.id.recommend_face_cover) {
                return false;
            }
            switch (event.getAction()) {
                case 0:
                    v.setPressed(true);
                    break;
                case 1:
                    RecommendFaceGroupAdapter.this.gotoRecommendCoverPage(this.mFacePath, ItemViewInfo.getImageInfo((int) (event.getRawX() - event.getX()), (int) (event.getRawY() - event.getY()), v, 0), this.mServerId, this.mPhotoCloudId, this.mFileLength);
                    break;
                case 3:
                    break;
            }
            v.setPressed(false);
            return true;
        }

        public void bindImage(String uri, Uri downloadUri, DisplayImageOptions options, RectF facePosition, DownloadType sourceType) {
            BindImageHelper.bindImage(uri, downloadUri, NetworkUtils.isActiveNetworkMetered() ? DownloadType.MICRO : DownloadType.THUMBNAIL, this.mCoverImage, options, ThumbConfig.get().sMicroTargetSize, facePosition, true, true, RecommendFaceGroupAdapter.this.mLoadingCompleteListener);
            if (DownloadType.MICRO == sourceType && !TextUtils.isEmpty(uri) && !NetworkUtils.isActiveNetworkMetered()) {
                CloudImageLoader.getInstance().displayImage(downloadUri, DownloadType.THUMBNAIL, this.mCoverImage, options, ThumbConfig.get().sMicroTargetSize, RecommendFaceGroupAdapter.this.mCloudLoadingListener, null, facePosition, true, false);
            }
        }

        public void needToFresh(DisplayImageOptions displayImageOptions) {
            if (TextUtils.isEmpty(this.mFacePath) && !TextUtils.isEmpty(this.mServerId)) {
                RectF[] faceRegion = new RectF[1];
                String facePath = FaceManager.queryCoverImageOfOneFace(this.mServerId, faceRegion);
                this.mFacePath = facePath;
                if (!TextUtils.isEmpty(this.mFacePath)) {
                    ImageLoader.getInstance().displayImage(Scheme.FILE.wrap(facePath), this.mCoverImageAware, displayImageOptions, null, null, null, faceRegion[0]);
                }
            }
        }

        public void setServerId(String serverId) {
            this.mServerId = serverId;
        }

        public void setCloudId(long cloudId) {
            this.mPhotoCloudId = cloudId;
        }

        public void setFacePath(String path) {
            this.mFacePath = path;
        }

        public void setFileLength(long fileLength) {
            this.mFileLength = fileLength;
        }

        public void setChecked(boolean checked) {
            this.mCheckbox.setChecked(checked);
        }
    }

    protected abstract int getLayoutId();

    public RecommendFaceGroupAdapter(BaseMediaFragment fragment, String serverId, Long localId) {
        this.mFragment = fragment;
        this.mServerIdOfAlbum = serverId;
        this.mLocalIdOfAlbum = localId;
        initDisplayOptions();
    }

    private void initDisplayOptions() {
        this.mDisplayImageOptionsBuilder = new Builder().cacheThumbnail(true).loadFromMicroCache(true).cacheInMemory(true).considerExifParams(true).showStubImage(R.drawable.default_face_cover).resetViewBeforeLoading(true).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565).displayer(new PeopleItemBitmapDisplayer(true)).usingRegionDecoderFace(true);
    }

    public int getCount() {
        return this.mCursor == null ? 0 : this.mCursor.getCount();
    }

    public View getView(LayoutInflater inflater, ViewGroup container) {
        View view = inflater.inflate(getLayoutId(), container, false);
        view.setTag(new RecommendFaceItem(view));
        return view;
    }

    public void bindData(int position, View view) {
        DisplayImageOptions displayImageOptions;
        Cursor cursor = getCursorByPosition(position);
        String serverId = cursor.getString(10);
        long cloudId = cursor.getLong(11);
        long fileLength = cursor.getLong(12);
        this.mConfirmToRight.add(serverId);
        RecommendFaceItem item = (RecommendFaceItem) view.getTag();
        item.setChecked(true);
        item.setServerId(serverId);
        item.setCloudId(cloudId);
        item.setFileLength(fileLength);
        DownloadType type = DownloadType.THUMBNAIL;
        String thumbnail = cursor.getString(3);
        if (TextUtils.isEmpty(thumbnail)) {
            thumbnail = cursor.getString(4);
        }
        if (TextUtils.isEmpty(thumbnail)) {
            type = DownloadType.MICRO;
            thumbnail = cursor.getString(2);
        }
        item.setFacePath(thumbnail);
        if (TextUtils.isEmpty(thumbnail)) {
            type = DownloadType.MICRO;
            thumbnail = StorageUtils.getPriorMicroThumbnailPath(cursor.getString(1));
        }
        if (fileLength > 0) {
            displayImageOptions = this.mDisplayImageOptionsBuilder.considerFileLength(true).fileLength(fileLength).build();
        } else {
            displayImageOptions = this.mDisplayImageOptionsBuilder.considerFileLength(false).build();
        }
        item.bindImage(thumbnail, getDownloadUri(cursor, 11), displayImageOptions, new FaceRegionRectF(cursor.getFloat(5), cursor.getFloat(6), cursor.getFloat(5) + cursor.getFloat(7), cursor.getFloat(6) + cursor.getFloat(8), cursor.getInt(9)), type);
        this.mVisibleItemCount++;
    }

    private Uri getDownloadUri(Cursor cursor, int idIndex) {
        return CloudUriAdapter.getDownloadUri(cursor.getLong(idIndex));
    }

    public void freshView(View view) {
        DisplayImageOptions displayImageOptions;
        RecommendFaceItem item = (RecommendFaceItem) view.getTag();
        if (item.mFileLength > 0) {
            displayImageOptions = this.mDisplayImageOptionsBuilder.considerFileLength(true).fileLength(item.mFileLength).build();
        } else {
            displayImageOptions = this.mDisplayImageOptionsBuilder.considerFileLength(false).build();
        }
        item.needToFresh(displayImageOptions);
    }

    public void onPageChanged() {
        confirmRecommends();
        this.mConfirmToWrong.clear();
        this.mConfirmToRight.clear();
        this.mVisibleItemCount = 0;
    }

    public int getMergeFaceCount() {
        return this.mConfirmToRight == null ? 0 : this.mConfirmToRight.size();
    }

    private void gotoRecommendCoverPage(String facePath, ItemViewInfo viewInfo, String faceServerId, long cloudId, long fileLength) {
        ImageLoadParams item = new ImageLoadParams(cloudId, facePath, ThumbConfig.get().sMicroTargetSize, null, 0, null, true, fileLength);
        ArrayList<ItemViewInfo> arrayList = new ArrayList(1);
        arrayList.add(viewInfo);
        IntentUtil.gotoPhotoPage(this.mFragment, null, PeopleFace.RECOMMEND_FACES_OF_ONE_PERSON_URI, 0, 1, null, new String[]{"'" + faceServerId + "'"}, "dateTaken DESC ", item, null, true, faceServerId, arrayList);
        BaseSamplingStatHelper.recordCountEvent("face", "face_click_recommend_face");
    }

    private void recommendCheckStatusChanged(String serverId, boolean checked) {
        if (checked) {
            this.mConfirmToWrong.remove(serverId);
            this.mConfirmToRight.add(serverId);
        } else {
            this.mConfirmToWrong.add(serverId);
            this.mConfirmToRight.remove(serverId);
        }
        if (this.mConfirmToWrong.size() != this.mVisibleItemCount) {
            return;
        }
        if (this.mFragment instanceof FacePageFragment) {
            ((FacePageFragment) this.mFragment).changeToNextPage();
        } else {
            ((RecommendFacePageFragment) this.mFragment).changeToNextPage();
        }
    }

    public void confirmRecommends() {
        confirmFace(this.mConfirmToRight, true);
        confirmFace(this.mConfirmToWrong, false);
    }

    private void confirmFace(ArrayList<String> serverIds, boolean yes) {
        if (serverIds != null && serverIds.size() != 0) {
            NormalPeopleFaceMediaSet sourcePeople = new NormalPeopleFaceMediaSet(this.mLocalIdOfAlbum.longValue(), this.mServerIdOfAlbum, "");
            PeopleRecommendMediaSet.refreshRecommendHistoryToTrue(serverIds, sourcePeople);
            if (yes) {
                PeopleRecommendMediaSet.addSelectItemsToRecommendedMediaSet(serverIds, sourcePeople);
                HashMap<String, String> params = new HashMap(1);
                params.put("count", String.valueOf(serverIds.size()));
                BaseSamplingStatHelper.recordCountEvent("face", "face_confirm_recommend_face", params);
                return;
            }
            PeopleRecommendMediaSet.feedbackIgnoredPeople2Server(serverIds, sourcePeople);
        }
    }

    public Cursor swapCursor(Cursor newCursor) {
        if (newCursor == this.mCursor) {
            return null;
        }
        Cursor oldCursor = this.mCursor;
        this.mCursor = newCursor;
        return oldCursor;
    }

    public void setOnLoadingCompleteListener(OnImageLoadingCompleteListener listener) {
        this.mLoadingCompleteListener = listener;
        if (listener != null) {
            this.mCloudLoadingListener = new CloudImageLoadingListener() {
                public void onLoadingStarted(Uri uri, DownloadType type, View view) {
                }

                public void onLoadingFailed(Uri uri, DownloadType type, View view, ErrorCode code) {
                    if (RecommendFaceGroupAdapter.this.mLoadingCompleteListener != null) {
                        RecommendFaceGroupAdapter.this.mLoadingCompleteListener.onLoadingFailed();
                    }
                }

                public void onLoadingComplete(Uri uri, DownloadType type, View view, Bitmap loadedImage) {
                    if (RecommendFaceGroupAdapter.this.mLoadingCompleteListener != null) {
                        RecommendFaceGroupAdapter.this.mLoadingCompleteListener.onLoadingComplete();
                    }
                }

                public void onDownloadComplete(Uri uri, DownloadType type, View view, String filePath) {
                }

                public void onLoadingCancelled(Uri uri, DownloadType type, View view) {
                }
            };
        } else {
            this.mCloudLoadingListener = null;
        }
    }

    protected Cursor getCursorByPosition(int position) {
        this.mCursor.moveToPosition(position);
        return this.mCursor;
    }
}

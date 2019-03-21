package com.miui.gallery.adapter;

import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.RectF;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.model.BaseAlbumCover;
import com.miui.gallery.model.FaceAlbumCover;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.Common;
import com.miui.gallery.provider.GalleryContract.Search;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.search.core.display.icon.IconImageLoader;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.BindImageHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.face.FaceRegionRectF;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class AlbumPageHeaderAdapter extends BaseAdapter {
    private Album[] mAlbums;
    private Context mContext;
    private Builder mDisplayImageOptionsBuilder;
    private Builder mFaceDisplayImageOptionsBuilder;
    private LayoutInflater mLayoutInflater = LayoutInflater.from(this.mContext);

    private static class Album {
        Uri mActionUri;
        int mAlbumNameRes;
        int mDefaultCoverRes;
        int mIndex;
        boolean mIsCoverDataValid;

        public Album(int index, int albumNameRes, int defaultCoverRes, Uri actionUri) {
            this.mIndex = index;
            this.mAlbumNameRes = albumNameRes;
            this.mDefaultCoverRes = defaultCoverRes;
            this.mActionUri = actionUri;
        }
    }

    private static abstract class BaseViewHolder {
        protected static List<Integer> sAlbumCovers = new ArrayList();
        private static DisplayImageOptions sDefaultCoverDisplayImageOptions = new Builder().cacheInMemory(true).resetViewBeforeLoading(true).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(ThumbConfig.getThumbConfig()).cacheThumbnail(false).loadFromMicroCache(false).build();
        protected TextView mAlbumName;
        protected View mCover1;
        protected View mCover2;
        protected View mCover3;
        protected ImageView mDefaultAlbumCover;
        protected View mItemView;

        protected abstract void doBindCover(Context context, Album album, Builder builder);

        static {
            sAlbumCovers.add(Integer.valueOf(R.id.album_cover_1));
            sAlbumCovers.add(Integer.valueOf(R.id.album_cover_2));
            sAlbumCovers.add(Integer.valueOf(R.id.album_cover_3));
        }

        public BaseViewHolder(View view) {
            this.mItemView = view;
            this.mAlbumName = (TextView) view.findViewById(R.id.album_name);
            this.mCover1 = view.findViewById(R.id.album_cover_1);
            this.mCover2 = view.findViewById(R.id.album_cover_2);
            this.mCover3 = view.findViewById(R.id.album_cover_3);
            this.mDefaultAlbumCover = (ImageView) view.findViewById(R.id.default_album_cover);
        }

        protected ImageView getAlbumCoverByIdx(int index) {
            return (ImageView) this.mItemView.findViewById(((Integer) sAlbumCovers.get(index)).intValue());
        }

        public void bindView(Context context, Album album, Builder builder) {
            this.mAlbumName.setText(context.getText(album.mAlbumNameRes));
            bindCover(context, album, builder);
        }

        public void bindClickListener(final Context context, final Album album) {
            this.mItemView.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setPackage(GalleryApp.sGetAndroidContext().getPackageName());
                    intent.setData(album.mActionUri);
                    context.startActivity(intent);
                }
            });
        }

        private void bindCover(Context context, Album album, Builder builder) {
            if (album.mIsCoverDataValid) {
                doBindCover(context, album, builder);
            }
        }

        protected void bindDefaultCover(int defaultCoverRes) {
            this.mDefaultAlbumCover.setVisibility(0);
            setCoversVisibility(4);
            this.mDefaultAlbumCover.setImageResource(defaultCoverRes);
        }

        protected void setCoversVisibility(int visibility) {
            this.mCover1.setVisibility(visibility);
            this.mCover2.setVisibility(visibility);
            this.mCover3.setVisibility(visibility);
        }

        protected static FaceRegionRectF parseCoverRect(String faceRect) {
            try {
                String[] rectInfo = faceRect.split(" ");
                float faceX = Float.parseFloat(rectInfo[0]);
                float faceY = Float.parseFloat(rectInfo[1]);
                float faceW = Float.parseFloat(rectInfo[2]);
                float faceH = Float.parseFloat(rectInfo[3]);
                return new FaceRegionRectF(faceX, faceY, faceX + faceW, faceY + faceH, Integer.parseInt(rectInfo[4]));
            } catch (Exception e) {
                Log.e("AlbumPageHeaderAdapter", "wrong face rect format: %s", (Object) faceRect);
                return null;
            }
        }

        protected static Uri getDownloadUri(long id, int syncState) {
            return syncState == 0 ? ContentUris.withAppendedId(Cloud.CLOUD_URI, id) : null;
        }

        protected static DisplayImageOptions buildDisplayImageOptions(Builder builder, long coverSize) {
            if (coverSize > 0) {
                return builder.considerFileLength(true).fileLength(coverSize).build();
            }
            return builder.considerFileLength(false).build();
        }
    }

    private static class LocalAlbum extends Album {
        ArrayList<BaseAlbumCover> mAlbumCovers;

        public LocalAlbum(int index, int albumNameRes, int defaultAlbumCoverRes, Uri actionUri) {
            super(index, albumNameRes, defaultAlbumCoverRes, actionUri);
        }
    }

    private static class LocalAlbumViewHolder extends BaseViewHolder {
        public LocalAlbumViewHolder(View view) {
            super(view);
        }

        protected void doBindCover(Context context, Album album, Builder builder) {
            ArrayList<BaseAlbumCover> covers = ((LocalAlbum) album).mAlbumCovers;
            if (BaseMiscUtil.isValid(covers)) {
                this.mDefaultAlbumCover.setVisibility(4);
                setCoversVisibility(0);
                int i = 0;
                while (i < covers.size() && i < 3) {
                    BaseAlbumCover cover = (BaseAlbumCover) covers.get(i);
                    BindImageHelper.bindImage(cover.coverPath, BaseViewHolder.getDownloadUri(cover.coverId, cover.coverSyncState), DownloadType.MICRO, getAlbumCoverByIdx(i), BaseViewHolder.buildDisplayImageOptions(builder, cover.coverSize), ThumbConfig.get().sMicroTargetSize);
                    i++;
                }
                if (i < sAlbumCovers.size()) {
                    for (int j = i; j < sAlbumCovers.size(); j++) {
                        getAlbumCoverByIdx(j).setImageResource(R.drawable.image_default_cover_dark_gray);
                    }
                    return;
                }
                return;
            }
            bindDefaultCover(album.mDefaultCoverRes);
        }
    }

    private static class PeopleAlbumViewHolder extends BaseViewHolder {
        public PeopleAlbumViewHolder(View view) {
            super(view);
        }

        protected void doBindCover(Context context, Album album, Builder builder) {
            ArrayList<BaseAlbumCover> covers = ((LocalAlbum) album).mAlbumCovers;
            if (BaseMiscUtil.isValid(covers)) {
                this.mDefaultAlbumCover.setVisibility(4);
                setCoversVisibility(0);
                int i = 0;
                while (i < covers.size() && i < 3) {
                    BaseAlbumCover cover = (BaseAlbumCover) covers.get(i);
                    DisplayImageOptions options = BaseViewHolder.buildDisplayImageOptions(builder, cover.coverSize);
                    RectF rect = BaseViewHolder.parseCoverRect(((FaceAlbumCover) cover).faceRect);
                    bindFaceCover(cover.coverPath, getAlbumCoverByIdx(i), BaseViewHolder.getDownloadUri(cover.coverId, cover.coverSyncState), options, rect);
                    i++;
                }
                if (i < sAlbumCovers.size()) {
                    for (int j = i; j < sAlbumCovers.size(); j++) {
                        getAlbumCoverByIdx(j).setImageResource(R.drawable.image_default_cover_dark_gray);
                    }
                    return;
                }
                return;
            }
            bindDefaultCover(album.mDefaultCoverRes);
        }

        private void bindFaceCover(String localPath, ImageView imageView, Uri downloadUri, DisplayImageOptions options, RectF regionDecodeRect) {
            BindImageHelper.bindFaceImage(localPath, downloadUri, imageView, options, ThumbConfig.get().sMicroTargetSize, regionDecodeRect, false);
        }
    }

    private static class SearchAlbum extends Album {
        ArrayList<String> mCoverUris;

        public SearchAlbum(int index, int albumNameRes, int defaultAlbumCoverRes, Uri actionUri) {
            super(index, albumNameRes, defaultAlbumCoverRes, actionUri);
        }
    }

    private static class SearchAlbumViewHolder extends BaseViewHolder {
        public SearchAlbumViewHolder(View view) {
            super(view);
        }

        protected void doBindCover(Context context, Album album, Builder builder) {
            ArrayList<String> coverUris = ((SearchAlbum) album).mCoverUris;
            if (BaseMiscUtil.isValid(coverUris)) {
                this.mDefaultAlbumCover.setVisibility(4);
                setCoversVisibility(0);
                int i = 0;
                while (i < coverUris.size() && i < 3) {
                    bindServerCover(context, (String) coverUris.get(i), getAlbumCoverByIdx(i), builder.build());
                    i++;
                }
                if (i < sAlbumCovers.size()) {
                    for (int j = i; j < sAlbumCovers.size(); j++) {
                        getAlbumCoverByIdx(j).setImageResource(R.drawable.image_default_cover_dark_gray);
                    }
                    return;
                }
                return;
            }
            bindDefaultCover(album.mDefaultCoverRes);
        }

        private void bindServerCover(Context context, String cover, ImageView imageView, DisplayImageOptions options) {
            IconImageLoader.getInstance().displayImage(context, Uri.parse(cover), DownloadType.MICRO, imageView, options, ThumbConfig.get().sMicroTargetSize);
        }
    }

    public AlbumPageHeaderAdapter(Context context) {
        this.mContext = context;
        Resources resources = context.getResources();
        initDisplayImageOptions();
        this.mAlbums = new Album[3];
        this.mAlbums[0] = new LocalAlbum(0, R.string.album_name_people, R.drawable.album_cover_people, Common.URI_PEOPLE_LIST_PAGE);
        this.mAlbums[1] = new SearchAlbum(1, R.string.album_name_locations, R.drawable.album_cover_locations, Search.URI_LOCATION_LIST_PAGE.buildUpon().appendQueryParameter("title", resources.getString(R.string.album_name_locations)).build());
        this.mAlbums[2] = new SearchAlbum(2, R.string.album_name_tags, R.drawable.album_cover_objects, Search.URI_TAG_LIST_PAGE.buildUpon().appendQueryParameter("title", resources.getString(R.string.album_name_tags)).build());
    }

    private void initDisplayImageOptions() {
        this.mDisplayImageOptionsBuilder = new Builder().cloneFrom(ThumbConfig.MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT).showImageForEmptyUri(R.drawable.image_default_cover_dark_gray).showImageOnFail(R.drawable.image_default_cover_dark_gray).showImageOnLoading(R.drawable.image_default_cover_dark_gray);
        this.mFaceDisplayImageOptionsBuilder = new Builder().cloneFrom(ThumbConfig.MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT).showImageForEmptyUri(R.drawable.image_default_cover_dark_gray).showImageOnFail(R.drawable.image_default_cover_dark_gray).showImageOnLoading(R.drawable.image_default_cover_dark_gray).usingRegionDecoderFace(true);
    }

    public int getViewTypeCount() {
        return 3;
    }

    public int getItemViewType(int position) {
        switch (position) {
            case 0:
                return 1;
            case 1:
            case 2:
                return 2;
            default:
                return 0;
        }
    }

    public long getItemId(int position) {
        Album album = getItem(position);
        if (album != null) {
            return (long) album.mIndex;
        }
        return -1;
    }

    public boolean hasStableIds() {
        return true;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        BaseViewHolder viewHolder;
        if (convertView == null) {
            convertView = this.mLayoutInflater.inflate(R.layout.album_page_grid_item, parent, false);
            switch (getItemViewType(position)) {
                case 0:
                    viewHolder = new LocalAlbumViewHolder(convertView);
                    break;
                case 1:
                    viewHolder = new PeopleAlbumViewHolder(convertView);
                    break;
                case 2:
                    viewHolder = new SearchAlbumViewHolder(convertView);
                    break;
                default:
                    viewHolder = new LocalAlbumViewHolder(convertView);
                    break;
            }
            convertView.setTag(viewHolder);
        }
        viewHolder = (BaseViewHolder) convertView.getTag();
        Album album = getItem(position);
        viewHolder.bindView(this.mContext, album, getItemId(position) == 0 ? this.mFaceDisplayImageOptionsBuilder : this.mDisplayImageOptionsBuilder);
        viewHolder.bindClickListener(this.mContext, album);
        return convertView;
    }

    public int getCount() {
        return this.mAlbums != null ? this.mAlbums.length : 0;
    }

    public Album getItem(int position) {
        if (this.mAlbums == null || position < 0 || position >= this.mAlbums.length) {
            return null;
        }
        return this.mAlbums[position];
    }

    public void setAlbumCover(int index, ArrayList<?> covers) {
        if (index >= 0 && index < getCount()) {
            Album album = this.mAlbums[index];
            album.mIsCoverDataValid = true;
            Iterator it;
            Object cover;
            if (album instanceof SearchAlbum) {
                ArrayList<String> coverUris = null;
                if (BaseMiscUtil.isValid(covers)) {
                    coverUris = new ArrayList();
                    it = covers.iterator();
                    while (it.hasNext()) {
                        cover = it.next();
                        if (cover != null && (cover instanceof String)) {
                            coverUris.add((String) cover);
                        }
                    }
                }
                ((SearchAlbum) album).mCoverUris = coverUris;
            } else if (album instanceof LocalAlbum) {
                ArrayList<BaseAlbumCover> albumCovers = null;
                if (BaseMiscUtil.isValid(covers)) {
                    albumCovers = new ArrayList();
                    it = covers.iterator();
                    while (it.hasNext()) {
                        cover = it.next();
                        if (cover != null && (cover instanceof BaseAlbumCover)) {
                            albumCovers.add((BaseAlbumCover) cover);
                        }
                    }
                }
                ((LocalAlbum) album).mAlbumCovers = albumCovers;
            }
            notifyDataSetChanged();
        }
    }
}

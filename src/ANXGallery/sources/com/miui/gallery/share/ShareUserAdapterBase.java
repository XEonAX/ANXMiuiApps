package com.miui.gallery.share;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.common.collect.Lists;
import com.miui.gallery.R;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.util.List;

public abstract class ShareUserAdapterBase extends BaseAdapter {
    private static int sIconEffectHeight;
    private static int sIconEffectWidth;
    private static int sIconHeight;
    private static int sIconWidth;
    protected final String mCreatorId;
    protected DisplayImageOptions mDefaultDisplayImageOptions;
    protected final LayoutInflater mInflater;
    private final int mItemLayoutId;
    protected final List<CloudUserCacheEntry> mShareUsers = Lists.newArrayList();

    class ViewHolder {
        public final ImageView mIcon;
        public final ImageView mIconEffect;
        public final ImageView mMark;
        public final TextView mText;

        public ViewHolder(CloudUserCacheEntry entry, View v) {
            this.mIcon = (ImageView) v.findViewById(R.id.icon);
            LayoutParams params = this.mIcon.getLayoutParams();
            ShareUserAdapterBase.this.setIconSize(entry, params);
            v.getLayoutParams().width = params.width;
            this.mMark = (ImageView) v.findViewById(R.id.mark);
            this.mText = (TextView) v.findViewById(R.id.text);
            this.mIconEffect = (ImageView) v.findViewById(R.id.ic_effect);
        }
    }

    protected abstract int getAbsentSharerIcon(CloudUserCacheEntry cloudUserCacheEntry);

    protected abstract int getDefaultIcon(CloudUserCacheEntry cloudUserCacheEntry);

    protected abstract int getIconEffect();

    protected abstract void intialDisplayOptions();

    public ShareUserAdapterBase(Context context, String creatorId, int itemLayoutId) {
        this.mInflater = LayoutInflater.from(context);
        this.mCreatorId = creatorId;
        this.mItemLayoutId = itemLayoutId;
        if (sIconWidth == 0) {
            Resources res = context.getResources();
            Drawable mask = res.getDrawable(R.drawable.ic_contact_photo_mask);
            sIconWidth = mask.getIntrinsicWidth();
            sIconHeight = mask.getIntrinsicHeight();
            Drawable effect = res.getDrawable(R.drawable.ic_contact_photo_effect);
            sIconEffectWidth = effect.getIntrinsicWidth();
            sIconEffectHeight = effect.getIntrinsicHeight();
        }
        intialDisplayOptions();
    }

    public void setShareUsers(List<CloudUserCacheEntry> shareUsers) {
        this.mShareUsers.clear();
        this.mShareUsers.addAll(shareUsers);
        notifyDataSetChanged();
    }

    public CloudUserCacheEntry getItem(int position) {
        if (position < this.mShareUsers.size()) {
            return (CloudUserCacheEntry) this.mShareUsers.get(position);
        }
        return null;
    }

    public long getItemId(int position) {
        return 0;
    }

    protected String getDisplayName(Resources res, UserInfo user, CloudUserCacheEntry entry) {
        if (user == null) {
            return entry == null ? null : entry.mUserId;
        } else {
            if (TextUtils.equals(user.getUserId(), GalleryCloudUtils.getAccountName())) {
                return res.getString(R.string.user_alias_self);
            }
            return user.getDisplayName();
        }
    }

    protected void setIconSize(CloudUserCacheEntry entry, LayoutParams params) {
        params.width = sIconEffectWidth;
        params.height = sIconEffectHeight;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        View view;
        CloudUserCacheEntry entry = getItem(position);
        if (convertView != null) {
            view = convertView;
        } else {
            view = this.mInflater.inflate(this.mItemLayoutId, parent, false);
            view.setTag(new ViewHolder(entry, view));
        }
        ViewHolder vh = (ViewHolder) view.getTag();
        if (entry == null || TextUtils.isEmpty(entry.mUserId)) {
            vh.mText.setText(getDisplayName(view.getResources(), null, entry));
            vh.mIcon.setImageResource(position == 0 ? getDefaultIcon(entry) : getAbsentSharerIcon(entry));
        } else {
            UserInfo userInfo = (UserInfo) UserInfoCache.getInstance().getValue(entry.mUserId);
            vh.mText.setText(getDisplayName(view.getResources(), userInfo, entry));
            if (userInfo != null) {
                String iconUrl = userInfo.getMiliaoIconUrl150();
                if (TextUtils.isEmpty(iconUrl)) {
                    vh.mIcon.setImageResource(getDefaultIcon(entry));
                } else {
                    ImageLoader.getInstance().displayImage(iconUrl, vh.mIcon, this.mDefaultDisplayImageOptions, null);
                }
            } else {
                vh.mIcon.setImageResource(getDefaultIcon(entry));
            }
            if (TextUtils.equals(entry.mUserId, this.mCreatorId)) {
                vh.mMark.setImageResource(R.drawable.cloud_album_creator_mark);
            }
        }
        vh.mIconEffect.setImageResource(getIconEffect());
        return view;
    }
}

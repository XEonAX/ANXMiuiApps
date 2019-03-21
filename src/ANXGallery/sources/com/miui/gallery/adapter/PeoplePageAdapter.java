package com.miui.gallery.adapter;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap.Config;
import android.graphics.RectF;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.model.PeopleContactInfo;
import com.miui.gallery.ui.PeoplePageGridHeaderItem;
import com.miui.gallery.ui.PeoplePageGridItem;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.face.PeopleCursorHelper;
import com.miui.gallery.util.face.PeopleItemBitmapDisplayer;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersSimpleAdapter;
import java.util.HashMap;

public class PeoplePageAdapter extends BaseAdapter implements CheckableAdapter, StickyGridHeadersSimpleAdapter {
    private boolean mCheckable;
    private HashMap<String, Integer> mUserDefineRelationMap;

    public PeoplePageAdapter(Context context) {
        super(context);
        this.mContext = context;
    }

    protected void initDisplayImageOptions() {
        this.mDisplayImageOptionBuilder = new Builder().cacheThumbnail(true).loadFromMicroCache(true).cacheInMemory(true).considerExifParams(true).showStubImage(R.drawable.default_face_cover).resetViewBeforeLoading(true).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565).displayer(new PeopleItemBitmapDisplayer(true)).usingRegionDecoderFace(true);
        this.mDefaultDisplayImageOptions = this.mDisplayImageOptionBuilder.build();
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(R.layout.people_page_grid_item, viewGroup, false);
    }

    public void bindView(View view, Context context, Cursor cursor) {
        PeoplePageGridItem item = (PeoplePageGridItem) view;
        int position = cursor.getPosition();
        item.bindImage(PeopleCursorHelper.getThumbnailPath(cursor), getDownloadUri(position), getDisplayImageOptions(position), PeopleCursorHelper.getFaceRegionRectF(cursor), PeopleCursorHelper.getThumbnailDownloadType(cursor));
        String name = PeopleCursorHelper.getPeopleName(cursor);
        String peopleServerId = PeopleCursorHelper.getPeopleServerId(cursor);
        long peopleLocalId = Long.parseLong(PeopleCursorHelper.getPeopleLocalId(cursor));
        if (TextUtils.isEmpty(name)) {
            item.setName(this.mContext.getString(R.string.people_page_unname));
        } else {
            item.setName(name);
        }
        item.saveIds2Tag(peopleLocalId, peopleServerId);
        item.setCheckable(this.mCheckable);
    }

    public Uri getDownloadUri(int position) {
        return PeopleCursorHelper.getThumbnailDownloadUri(getCursorByPosition(position));
    }

    public String getThumbFilePath(int position) {
        return PeopleCursorHelper.getThumbnailPath(getCursorByPosition(position));
    }

    public long getFileLength(int position) {
        return PeopleCursorHelper.getCoverSize(getCursorByPosition(position));
    }

    public RectF getFaceRegionRectF(int position) {
        return PeopleCursorHelper.getFaceRegionRectF(getCursorByPosition(position));
    }

    public String getPeopleIdOfItem(int position) {
        return PeopleCursorHelper.getPeopleServerId((Cursor) getItem(position));
    }

    public String getPeopleLocalIdOfItem(int position) {
        return PeopleCursorHelper.getPeopleLocalId((Cursor) getItem(position));
    }

    public int getRelationTypeOfItem(int position) {
        return PeopleCursorHelper.getRelationType((Cursor) getItem(position));
    }

    public String getRelationTextOfItem(int position) {
        return PeopleCursorHelper.getRelationText((Cursor) getItem(position));
    }

    public void setUserDefineRelationMap(HashMap<String, Integer> map) {
        this.mUserDefineRelationMap = map;
    }

    public long getHeaderId(int position) {
        int relationType = getRelationTypeOfItem(position);
        if (!PeopleContactInfo.isUserDefineRelation(relationType)) {
            return (long) relationType;
        }
        int relationIndex = 0;
        String relationText = getRelationTextOfItem(position);
        if (!(this.mUserDefineRelationMap == null || this.mUserDefineRelationMap.get(relationText) == null)) {
            relationIndex = ((Integer) this.mUserDefineRelationMap.get(relationText)).intValue();
        }
        return (long) (PeopleContactInfo.getRelationTypesCount() + relationIndex);
    }

    public View getHeaderView(int position, View convertView, ViewGroup parent) {
        String relationShow;
        if (convertView == null) {
            convertView = LayoutInflater.from(this.mContext).inflate(R.layout.people_page_grid_header_item, parent, false);
        }
        int relationType = getRelationTypeOfItem(position);
        if (PeopleContactInfo.isUserDefineRelation(relationType)) {
            relationShow = getRelationTextOfItem(position);
        } else {
            relationShow = PeopleContactInfo.getRelationShow(relationType);
        }
        ((PeoplePageGridHeaderItem) convertView).bindData(relationShow);
        if (PeopleContactInfo.isUnKnownRelation(relationType)) {
            convertView.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    ToastUtils.makeTextLong(PeoplePageAdapter.this.mContext, PeoplePageAdapter.this.mContext.getString(R.string.how_to_set_relation));
                }
            });
        }
        return convertView;
    }

    public boolean shouldDrawDivider() {
        return false;
    }

    public View getDividerView(int position, View convertView, ViewGroup parent) {
        return null;
    }

    public void enterChoiceMode() {
        this.mCheckable = true;
    }

    public View getCheckableView(View itemView) {
        return null;
    }

    public void exitChoiceMode() {
        this.mCheckable = false;
    }
}

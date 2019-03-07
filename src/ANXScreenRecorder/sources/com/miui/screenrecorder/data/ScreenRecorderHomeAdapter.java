package com.miui.screenrecorder.data;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.screenrecorder.R;
import com.miui.screenrecorder.ScreenRecorderApplication;
import com.miui.screenrecorder.colorart.src.colorart.ColorArt;
import com.miui.screenrecorder.tools.LogUtil;
import com.miui.screenrecorder.tools.MSRImageLoader;
import com.miui.screenrecorder.widget.StickyGridHeadersSimpleAdapter;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;

public class ScreenRecorderHomeAdapter extends BaseAdapter implements StickyGridHeadersSimpleAdapter, ImageLoadingListener {
    private static final String TAG = "ScreenRecorderAdapter";
    private ArrayList<GridItem> mDataList;
    private LayoutInflater mInflater;
    private boolean mIsInEditMode;
    private float mRadio;
    private HashSet<String> mSelectedItem;
    private int mWidth;
    private int newHeight = ScreenRecorderApplication.getContext().getResources().getDimensionPixelSize(R.dimen.thumbnail_discript_height);

    private class GetBackgroundColorTask extends AsyncTask<Bitmap, Void, Integer> {
        View mView;

        private GetBackgroundColorTask(View view) {
            this.mView = view;
        }

        protected Integer doInBackground(Bitmap... bitmap) {
            ColorArt colorArt;
            try {
                Bitmap bmp = ScreenRecorderHomeAdapter.this.imageCropWithRect(bitmap[0]);
                colorArt = new ColorArt(bmp, true);
                bmp.recycle();
            } catch (OutOfMemoryError error) {
                LogUtil.e(ScreenRecorderHomeAdapter.TAG, "GetBackgroundColorTask get background color failed:" + error.toString());
                colorArt = new ColorArt(bitmap[0], true);
            }
            return Integer.valueOf(colorArt.colorBurn(colorArt.getBackgroundColor(), 0.2f));
        }

        protected void onPostExecute(Integer color) {
            if (color.intValue() == -1) {
                LogUtil.i(ScreenRecorderHomeAdapter.TAG, "GetBackgroundColorTask no background color");
                return;
            }
            GradientDrawable drawable = new GradientDrawable();
            drawable.setShape(0);
            float radii = ScreenRecorderApplication.getContext().getResources().getDimension(R.dimen.desp_round);
            drawable.setCornerRadii(new float[]{0.0f, 0.0f, 0.0f, 0.0f, radii, radii, radii, radii});
            drawable.setColor(color.intValue());
            this.mView.setBackground(drawable);
        }
    }

    private class HeadViewHolder {
        TextView textView;

        private HeadViewHolder() {
        }
    }

    private class ViewHolder {
        View discriptView;
        TextView name;
        ImageView playImage;
        ImageView selectImage;
        TextView size;
        ImageView thumbnail;
        TextView time;

        private ViewHolder() {
        }
    }

    public ScreenRecorderHomeAdapter(Context context, float radio, int width) {
        this.mInflater = LayoutInflater.from(context);
        this.mWidth = width;
        this.mRadio = radio;
    }

    private void setData(ArrayList<GridItem> list) {
        if (this.mDataList != null) {
            this.mDataList.clear();
        } else {
            this.mDataList = new ArrayList();
        }
        if (list != null && list.size() != 0) {
            for (int i = 0; i < list.size(); i++) {
                this.mDataList.add(new GridItem((GridItem) list.get(i)));
            }
        }
    }

    public void insertData(int index, GridItem item) {
        if (this.mDataList == null) {
            this.mDataList = new ArrayList();
        }
        if (index >= 0 && index <= this.mDataList.size()) {
            this.mDataList.add(index, item);
        }
    }

    public void setSelectedItem(HashSet<String> selectedItem) {
        this.mSelectedItem = selectedItem;
        if (this.mSelectedItem == null) {
            this.mSelectedItem = new HashSet();
        }
    }

    public void setIsEditMode(boolean isEditMode) {
        this.mIsInEditMode = isEditMode;
    }

    public int getCount() {
        if (this.mDataList == null) {
            return 0;
        }
        return this.mDataList.size();
    }

    public Object getItem(int position) {
        if (this.mDataList == null || position < 0 || position >= this.mDataList.size()) {
            return null;
        }
        return this.mDataList.get(position);
    }

    public long getItemId(int position) {
        return (long) position;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        if (this.mDataList == null || this.mDataList.size() == 0 || position >= this.mDataList.size() || position < 0) {
            return null;
        }
        ViewHolder viewHolder;
        if (convertView == null) {
            viewHolder = new ViewHolder();
            convertView = this.mInflater.inflate(R.layout.home_recorder_item, parent, false);
            LayoutParams params = convertView.getLayoutParams();
            params.width = this.mWidth;
            params.height = (int) (this.mRadio * ((float) this.mWidth));
            convertView.setLayoutParams(params);
            viewHolder.thumbnail = (ImageView) convertView.findViewById(R.id.thumbnail);
            viewHolder.time = (TextView) convertView.findViewById(R.id.time);
            viewHolder.size = (TextView) convertView.findViewById(R.id.size);
            viewHolder.name = (TextView) convertView.findViewById(R.id.app_name);
            viewHolder.playImage = (ImageView) convertView.findViewById(R.id.play_image);
            viewHolder.selectImage = (ImageView) convertView.findViewById(R.id.select_image);
            viewHolder.discriptView = convertView.findViewById(R.id.discript_view);
            convertView.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) convertView.getTag();
        }
        GridItem item = (GridItem) this.mDataList.get(position);
        String path = item.getPath();
        if (!TextUtils.isEmpty(path)) {
            viewHolder.thumbnail.setTag(viewHolder.discriptView);
            if (!path.equals((String) viewHolder.thumbnail.getTag(R.id.tag_img_path))) {
                viewHolder.thumbnail.setTag(R.id.tag_img_path, path);
                viewHolder.thumbnail.setTag(R.id.tag_has_img_color, Boolean.valueOf(false));
                viewHolder.thumbnail.setImageDrawable(null);
                viewHolder.discriptView.setBackgroundResource(R.drawable.default_desp_bg);
            }
            MSRImageLoader.getInstance(ScreenRecorderApplication.getContext()).displayImage(Uri.fromFile(new File(path)).toString(), viewHolder.thumbnail, this);
        }
        viewHolder.time.setText(item.getDuration());
        viewHolder.size.setText(item.getSize());
        viewHolder.name.setText(item.getName());
        if (this.mIsInEditMode) {
            viewHolder.playImage.setVisibility(8);
            viewHolder.selectImage.setVisibility(0);
            if (this.mSelectedItem.contains(path)) {
                viewHolder.selectImage.setImageResource(R.drawable.grid_item_checkbox_checked);
                viewHolder.selectImage.setContentDescription(ScreenRecorderApplication.getContext().getString(R.string.is_checked));
            } else {
                viewHolder.selectImage.setImageResource(R.drawable.grid_item_checkbox_normal);
                viewHolder.selectImage.setContentDescription(ScreenRecorderApplication.getContext().getString(R.string.unchecked));
            }
        } else {
            viewHolder.playImage.setVisibility(0);
            viewHolder.selectImage.setVisibility(8);
        }
        return convertView;
    }

    public long getHeaderId(int position) {
        return (long) ((GridItem) this.mDataList.get(position)).getHeaderId();
    }

    public View getHeaderView(int position, View convertView, ViewGroup parent) {
        if (this.mDataList == null || this.mDataList.size() == 0 || position < 0 || position >= this.mDataList.size()) {
            return null;
        }
        HeadViewHolder viewHolder;
        if (convertView == null) {
            viewHolder = new HeadViewHolder();
            convertView = this.mInflater.inflate(R.layout.home_grid_head, parent, false);
            viewHolder.textView = (TextView) convertView.findViewById(R.id.head_text);
            convertView.setTag(viewHolder);
        } else {
            viewHolder = (HeadViewHolder) convertView.getTag();
        }
        viewHolder.textView.setText(((GridItem) this.mDataList.get(position)).getTime());
        convertView.setContentDescription(((GridItem) this.mDataList.get(position)).getTime());
        return convertView;
    }

    public void onLoadingStarted(String imageUri, View view) {
    }

    public void onLoadingFailed(String imageUri, View view, FailReason failReason) {
        LogUtil.e(TAG, "loading image failed: " + imageUri);
    }

    public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
        LogUtil.i(TAG, "loading image Complete: " + imageUri);
        if (!((Boolean) view.getTag(R.id.tag_has_img_color)).booleanValue()) {
            new GetBackgroundColorTask((View) view.getTag()).execute(new Bitmap[]{loadedImage});
            view.setTag(R.id.tag_has_img_color, Boolean.valueOf(true));
        }
    }

    public void onLoadingCancelled(String imageUri, View view) {
        LogUtil.e(TAG, "loading image cancelled: " + imageUri);
    }

    private Bitmap imageCropWithRect(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return Bitmap.createBitmap(bitmap, 0, bitmap.getHeight() - this.newHeight, bitmap.getWidth(), this.newHeight);
    }

    public void notifyDataSetChanged(ArrayList<GridItem> datalist) {
        setData(datalist);
        notifyDataSetChanged();
    }
}

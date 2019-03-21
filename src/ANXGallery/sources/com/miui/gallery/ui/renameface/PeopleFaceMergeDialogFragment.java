package com.miui.gallery.ui.renameface;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.model.DisplayFolderItem;
import com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet;
import com.miui.gallery.ui.renameface.FolderItemsLoader.LoaderUpdatedItems;
import com.miui.gallery.widget.GalleryDialogFragment;
import com.miui.gallery.widget.PagerAdapter;
import com.miui.gallery.widget.PagerGridLayout;
import com.miui.gallery.widget.PagerGridLayout.BaseAdapter;
import com.miui.gallery.widget.PagerIndicator;
import com.miui.gallery.widget.ViewPager;
import com.miui.gallery.widget.ViewPager.OnPageChangeListener;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.util.ArrayList;

public class PeopleFaceMergeDialogFragment extends GalleryDialogFragment {
    private ArrayList<DisplayFolderItem> mItems;
    private FolderItemsLoader mLoader;
    private PeoplePagerAdapter mPagerAdapter;
    private PagerIndicator mPagerIndicator;
    private PeopleSelectListener mPeopleSelectListener;
    private ViewPager mViewPager;

    public interface PeopleSelectListener {
        void onPeopleSelect(FaceDisplayFolderItem faceDisplayFolderItem, boolean z, int i);
    }

    private class PageChangeListener implements OnPageChangeListener {
        private PageChangeListener() {
        }

        /* synthetic */ PageChangeListener(PeopleFaceMergeDialogFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        public void onPageSelected(int position) {
            if (PeopleFaceMergeDialogFragment.this.mPagerAdapter.getCount() > 1) {
                PeopleFaceMergeDialogFragment.this.mPagerIndicator.showIndex(position, PeopleFaceMergeDialogFragment.this.mPagerAdapter.getCount());
            }
        }

        public void onPageScrollStateChanged(int state) {
        }
    }

    private class PagerGridLayoutAdapter extends BaseAdapter {
        private ArrayList<DisplayFolderItem> mGridLayoutItems;

        public class ViewHolder {
            ImageView cover;
            TextView name;

            public ViewHolder(View view) {
                this.name = (TextView) view.findViewById(R.id.name);
                this.cover = (ImageView) view.findViewById(R.id.face);
            }

            public void bindView(FaceDisplayFolderItem item) {
                if (item.isTip) {
                    this.cover.setBackgroundResource(R.drawable.create_new_face);
                    this.cover.setTag(Integer.valueOf(0));
                    this.name.setText(PeopleFaceMergeDialogFragment.this.getString(R.string.create_new_face));
                } else {
                    this.name.setText(item.name);
                    this.cover.setTag(Integer.valueOf(1));
                    ImageLoader.getInstance().displayImage(Scheme.FILE.wrap(item.thumbnailPath), this.cover, InputFaceNameFragment.sDisplayImageOptions, null, item.mFacePosRelative);
                }
                PagerGridLayoutAdapter.this.setItemClickListener(this.cover, item);
            }
        }

        public PagerGridLayoutAdapter(ArrayList<DisplayFolderItem> items) {
            this.mGridLayoutItems = items;
        }

        public void updateItems(ArrayList<DisplayFolderItem> items) {
            this.mGridLayoutItems = items;
            notifyDataSetChanged();
        }

        public int getRowsCount() {
            return 2;
        }

        public int getColumnsCount() {
            return 4;
        }

        public int getCount() {
            return this.mGridLayoutItems == null ? 0 : this.mGridLayoutItems.size();
        }

        public View getView(LayoutInflater inflater, ViewGroup container) {
            View view = inflater.inflate(R.layout.people_face_merge_pager_item, container, false);
            view.setTag(new ViewHolder(view));
            return view;
        }

        public void bindData(int position, View view) {
            ((ViewHolder) view.getTag()).bindView((FaceDisplayFolderItem) this.mGridLayoutItems.get(position));
        }

        public void onPageChanged() {
        }

        public void freshView(View view) {
        }

        private void setItemClickListener(View view, final FaceDisplayFolderItem item) {
            view.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    DisplayFolderItem displayFolderItem = null;
                    String name = item.name;
                    if (name != null) {
                        displayFolderItem = FaceAlbumRenameHandler.getDisplayFolderItem(PeopleFaceMergeDialogFragment.this.mLoader.tryToGetLoadedItems(300), name.trim());
                    }
                    PeopleFaceMergeDialogFragment.this.mPeopleSelectListener.onPeopleSelect(item, displayFolderItem != null, ((Integer) v.getTag()).intValue());
                }
            });
        }
    }

    private class PeoplePagerAdapter extends PagerAdapter {
        private PagerGridLayoutAdapter mAdapter;

        private PeoplePagerAdapter() {
            this.mAdapter = new PagerGridLayoutAdapter(PeopleFaceMergeDialogFragment.this.mItems);
        }

        /* synthetic */ PeoplePagerAdapter(PeopleFaceMergeDialogFragment x0, AnonymousClass1 x1) {
            this();
        }

        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }

        public int getCount() {
            return PeopleFaceMergeDialogFragment.this.mItems == null ? 0 : (PeopleFaceMergeDialogFragment.this.mItems.size() + 7) / 8;
        }

        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        public Object instantiateItem(ViewGroup container, int position) {
            PagerGridLayout pager = getPagerLayout();
            pager.setAdapter(this.mAdapter, position);
            container.addView(pager);
            return pager;
        }

        public int getItemPosition(Object object, int position) {
            if (position <= 0 || position >= getCount()) {
                return -2;
            }
            return -3;
        }

        public void updateItems(ArrayList<DisplayFolderItem> items) {
            PeopleFaceMergeDialogFragment.this.mItems.addAll(items);
            this.mAdapter.updateItems(PeopleFaceMergeDialogFragment.this.mItems);
            notifyDataSetChanged();
        }

        private PagerGridLayout getPagerLayout() {
            PagerGridLayout pager = new PagerGridLayout(PeopleFaceMergeDialogFragment.this.getActivity());
            int padding = PeopleFaceMergeDialogFragment.this.getActivity().getResources().getDimensionPixelSize(R.dimen.people_face_merge_dialog_padding);
            pager.setPaddingRelative(padding, 0, padding, 0);
            return pager;
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        NormalPeopleFaceMediaSet faceSet = (NormalPeopleFaceMediaSet) getArguments().getParcelable("merge_action_from_album");
        this.mItems = new ArrayList();
        this.mItems.add(new FaceDisplayFolderItem(true));
        this.mPagerAdapter = new PeoplePagerAdapter(this, null);
        initPagerLoader(faceSet);
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        View dialogView = getActivity().getLayoutInflater().inflate(R.layout.people_face_merge, null, false);
        this.mPagerIndicator = (PagerIndicator) dialogView.findViewById(R.id.pager_index);
        this.mViewPager = (ViewPager) dialogView.findViewById(R.id.pager);
        this.mViewPager.setAdapter(this.mPagerAdapter);
        this.mViewPager.setOnPageChangeListener(new PageChangeListener(this, null));
        Button cancelButton = (Button) dialogView.findViewById(R.id.button1);
        ((TextView) dialogView.findViewById(R.id.alertTitle)).setText(getArguments().getString("people_face_Merge_title"));
        Dialog dialog = new Dialog(getActivity());
        dialog.setContentView(dialogView);
        setCancelButtonClickListener(cancelButton, dialog);
        Window window = dialog.getWindow();
        window.setGravity(80);
        window.setLayout(-1, -2);
        return dialog;
    }

    private void initPagerLoader(NormalPeopleFaceMediaSet faceSet) {
        long[] selectedFoldersLocalId = null;
        if (faceSet != null) {
            selectedFoldersLocalId = new long[]{faceSet.getBucketId()};
        }
        this.mLoader = new FaceFolderItemsLoader(getActivity(), null, new LoaderUpdatedItems() {
            public void onLoaderUpdatedItems() {
                Dialog dialog = PeopleFaceMergeDialogFragment.this.getDialog();
                if (dialog != null && dialog.isShowing()) {
                    PeopleFaceMergeDialogFragment.this.mPagerAdapter.updateItems(PeopleFaceMergeDialogFragment.this.mLoader.unblockGetItems());
                }
            }
        }, selectedFoldersLocalId);
    }

    public void onCancel(DialogInterface dialog) {
        super.onCancel(dialog);
        this.mLoader.cancel();
    }

    private void setCancelButtonClickListener(Button button, final Dialog dialog) {
        button.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                dialog.cancel();
            }
        });
    }

    public void setPeopleSelectListener(PeopleSelectListener listener) {
        this.mPeopleSelectListener = listener;
    }
}

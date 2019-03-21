package com.miui.gallery.editor.photo.app.mosaic;

import android.graphics.Rect;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.editor.photo.app.MenuFragment;
import com.miui.gallery.editor.photo.app.OperationUpdateListener;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractMosaicFragment;
import com.miui.gallery.editor.photo.core.common.model.MosaicData;
import com.miui.gallery.editor.photo.widgets.PaintSizePopupWindow;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.ScrollControlLinearLayoutManager;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.util.ArrayList;
import java.util.List;

public class MosaicMenuFragment extends MenuFragment<AbstractMosaicFragment, SdkProvider<MosaicData, AbstractMosaicFragment>> {
    private OnClickListener mEraserClickListener = new OnClickListener() {
        public void onClick(View v) {
            MosaicMenuFragment.this.mEraserView.setSelected(true);
            MosaicMenuFragment.this.mMosaicAdapter.setSelection(-1);
            ((AbstractMosaicFragment) MosaicMenuFragment.this.getRenderFragment()).setMosaicData(MosaicMenuFragment.this.mEraserData);
        }
    };
    private MosaicData mEraserData;
    private ImageView mEraserView;
    private int mMenuHeight;
    private MosaicAdapter mMosaicAdapter;
    private List<MosaicData> mMosaicDataList;
    private OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView parent, View child, int position) {
            ScrollControlLinearLayoutManager.onItemClick(parent, position);
            MosaicMenuFragment.this.mEraserView.setSelected(false);
            MosaicMenuFragment.this.setSelection(position);
            return true;
        }
    };
    private OnSeekBarChangeListener mOnSeekBarChangeListener = new OnSeekBarChangeListener() {
        public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
            int value = Math.round(((float) (BaiduSceneResult.ID_CARD * progress)) / 100.0f) + 35;
            MosaicMenuFragment.this.mPaintPopupWindow.setPaintSize(value);
            ((AbstractMosaicFragment) MosaicMenuFragment.this.getRenderFragment()).setMosaicPaintSize(value);
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
            MosaicMenuFragment.this.mPaintPopupWindow.showAtLocation(MosaicMenuFragment.this.mRecyclerView, 17, 0, (-MosaicMenuFragment.this.mMenuHeight) / 2);
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
            MosaicMenuFragment.this.mPaintPopupWindow.dismiss();
        }
    };
    private OnClickListener mOperationClickListener = new OnClickListener() {
        public void onClick(View v) {
            switch (v.getId()) {
                case R.id.operation_revoke /*2131886399*/:
                    ((AbstractMosaicFragment) MosaicMenuFragment.this.getRenderFragment()).doRevoke();
                    return;
                case R.id.operation_revert /*2131886400*/:
                    ((AbstractMosaicFragment) MosaicMenuFragment.this.getRenderFragment()).doRevert();
                    return;
                default:
                    return;
            }
        }
    };
    private View mOperationPanel;
    private OperationUpdateListener mOperationUpdateListener = new OperationUpdateListener() {
        public void onOperationUpdate() {
            MosaicMenuFragment.this.refreshOperationPanel();
        }
    };
    private PaintSizePopupWindow mPaintPopupWindow;
    private SimpleRecyclerView mRecyclerView;
    private View mRevert;
    private View mRevoke;
    private SeekBar mSeekBar;
    private TextView mTitleView;

    public MosaicMenuFragment() {
        super(Effect.MOSAIC);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.mosaic_menu_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.mPaintPopupWindow = new PaintSizePopupWindow(getActivity());
        this.mSeekBar = (SeekBar) view.findViewById(R.id.seekbar);
        this.mSeekBar.setOnSeekBarChangeListener(this.mOnSeekBarChangeListener);
        this.mMosaicDataList = new ArrayList(this.mSdkProvider.list());
        this.mEraserData = (MosaicData) this.mMosaicDataList.remove(0);
        this.mRecyclerView = (SimpleRecyclerView) view.findViewById(R.id.preview_list);
        LinearLayoutManager linearLayoutManager = new ScrollControlLinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(0);
        this.mRecyclerView.setLayoutManager(linearLayoutManager);
        final int itemDecoration = getResources().getDimensionPixelSize(R.dimen.mosaic_menu_item_margin);
        this.mRecyclerView.addItemDecoration(new ItemDecoration() {
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, State state) {
                int adapterPos = parent.getChildAdapterPosition(view);
                if (adapterPos == 0) {
                    outRect.left = (int) (((float) itemDecoration) / 2.0f);
                } else {
                    outRect.left = itemDecoration;
                }
                if (adapterPos == parent.getAdapter().getItemCount() - 1) {
                    outRect.right = itemDecoration;
                }
            }
        });
        this.mMosaicAdapter = new MosaicAdapter(getActivity(), this.mMosaicDataList);
        this.mRecyclerView.setAdapter(this.mMosaicAdapter);
        HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(this.mRecyclerView);
        this.mMosaicAdapter.setOnItemClickListener(this.mOnItemClickListener);
        this.mEraserView = (ImageView) view.findViewById(R.id.eraser);
        ImageLoader.getInstance().displayImage(this.mEraserData.iconPath, this.mEraserView);
        this.mEraserView.setOnClickListener(this.mEraserClickListener);
        this.mTitleView = (TextView) view.findViewById(R.id.title);
        this.mTitleView.setText(R.string.photo_editor_mosaic);
        setSelection(0);
        this.mSeekBar.setProgress(this.mSeekBar.getMax() / 2);
        this.mOperationPanel = view.findViewById(R.id.operation_panel);
        this.mRevoke = view.findViewById(R.id.operation_revoke);
        this.mRevert = view.findViewById(R.id.operation_revert);
        this.mRevoke.setOnClickListener(this.mOperationClickListener);
        this.mRevert.setOnClickListener(this.mOperationClickListener);
        ((AbstractMosaicFragment) getRenderFragment()).setOperationUpdateListener(this.mOperationUpdateListener);
        this.mMenuHeight = getResources().getDimensionPixelSize(R.dimen.photo_editor_menu_panel_height);
    }

    private void refreshOperationPanel() {
        boolean canRevoke = ((AbstractMosaicFragment) getRenderFragment()).canRevoke();
        boolean canRevert = ((AbstractMosaicFragment) getRenderFragment()).canRevert();
        if (canRevoke || canRevert) {
            this.mTitleView.setVisibility(8);
            this.mOperationPanel.setVisibility(0);
        } else {
            this.mTitleView.setVisibility(0);
            this.mOperationPanel.setVisibility(8);
        }
        this.mRevoke.setEnabled(canRevoke);
        this.mRevert.setEnabled(canRevert);
    }

    private void setSelection(int position) {
        this.mMosaicAdapter.setSelection(position);
        ((AbstractMosaicFragment) getRenderFragment()).setMosaicData((MosaicData) this.mMosaicDataList.get(position));
    }

    public void onDestroy() {
        super.onDestroy();
    }
}

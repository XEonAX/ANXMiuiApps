package com.miui.gallery.editor.photo.app.remover;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.MenuFragment;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractRemoverFragment;
import com.miui.gallery.editor.photo.core.common.model.RemoverData;
import com.miui.gallery.editor.photo.core.imports.remover.RemoverRenderFragment;
import com.miui.gallery.editor.photo.utils.MiscUtils;
import com.miui.gallery.editor.photo.widgets.CommonBottomMenuWithUndo;
import com.miui.gallery.editor.photo.widgets.PaintSizePopupWindow;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import com.miui.gallery.editor.photo.widgets.seekbar.BasicSeekBar;
import com.miui.gallery.movie.ui.listener.SingleClickListener;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import miui.app.ProgressDialog;

public class RemoverFragment extends MenuFragment<AbstractRemoverFragment, SdkProvider<RemoverData, AbstractRemoverFragment>> {
    private RemoverAdapter mAdapter;
    private CommonBottomMenuWithUndo mBottomMenuPanel;
    private int mCurrentType = 0;
    private List<RemoverData> mDataList;
    private boolean mIsNightMode;
    private OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView parent, View child, int position) {
            if (RemoverFragment.this.mAdapter.getSelection() != position) {
                RemoverData removerData = (RemoverData) RemoverFragment.this.mDataList.get(position);
                RemoverFragment.this.mCurrentType = removerData.mType;
                ((AbstractRemoverFragment) RemoverFragment.this.getRenderFragment()).setRemoverData(removerData);
                RemoverFragment.this.mAdapter.setSelection(position);
                ((AbstractRemoverFragment) RemoverFragment.this.getRenderFragment()).setPaintSize((float) RemoverFragment.this.getPaintSizeByProgress(RemoverFragment.this.mSeekBar.getProgress()));
            }
            return true;
        }
    };
    private PaintSizePopupWindow mPaintSizePopupWindow;
    private ProgressDialog mProgressDialog;
    private SimpleRecyclerView mRecyclerView;
    private BasicSeekBar mSeekBar;

    public RemoverFragment() {
        super(Effect.REMOVER);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mDataList = new ArrayList(this.mSdkProvider.list());
        this.mIsNightMode = MiscUtils.isNightMode(getActivity());
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.mRecyclerView = (SimpleRecyclerView) view.findViewById(R.id.remover_type_list);
        this.mAdapter = new RemoverAdapter(this.mDataList, new Selector(getResources().getColor(R.color.photo_editor_highlight_color)));
        this.mRecyclerView.setLayoutManager(new GridLayoutManager(getActivity(), this.mDataList.size(), 1, false));
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mAdapter.setOnItemClickListener(this.mOnItemClickListener);
        this.mAdapter.setSelection(0);
        this.mPaintSizePopupWindow = new PaintSizePopupWindow(getActivity());
        this.mSeekBar = (BasicSeekBar) view.findViewById(R.id.seekbar);
        this.mSeekBar.setProgress(this.mSeekBar.getMax() / 2);
        this.mSeekBar.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                int value = RemoverFragment.this.getPaintSizeByProgress(progress);
                RemoverFragment.this.mPaintSizePopupWindow.setPaintSize(value);
                ((AbstractRemoverFragment) RemoverFragment.this.getRenderFragment()).setPaintSize((float) value);
            }

            public void onStartTrackingTouch(SeekBar seekBar) {
                RemoverFragment.this.mPaintSizePopupWindow.setPaintSize(RemoverFragment.this.getPaintSizeByProgress(seekBar.getProgress()));
                RemoverFragment.this.mPaintSizePopupWindow.showAtLocation(RemoverFragment.this.mRecyclerView, 17, 0, (-RemoverFragment.this.getResources().getDimensionPixelSize(R.dimen.photo_editor_menu_panel_height)) / 2);
            }

            public void onStopTrackingTouch(SeekBar seekBar) {
                RemoverFragment.this.mPaintSizePopupWindow.dismiss();
            }
        });
        ((AbstractRemoverFragment) getRenderFragment()).setPaintSize((float) (this.mSeekBar.getProgress() + 35));
        this.mBottomMenuPanel = (CommonBottomMenuWithUndo) view.findViewById(R.id.bottom_bar);
        this.mBottomMenuPanel.setTitle(R.string.photo_editor_remover);
        TextView title = this.mBottomMenuPanel.getTitle();
        title.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.editor_ic_help, 0);
        title.setCompoundDrawablePadding((int) getResources().getDimension(R.dimen.remover_ic_help_padding));
        title.setOnClickListener(new SingleClickListener() {
            protected void onSingleClick(View v) {
                Intent intent = new Intent("com.miui.gallery.action.VIEW_WEB");
                Locale locale = Locale.US;
                String str = "https://i.mi.com/static2?filename=MicloudWebBill/event/gallery/MagicAllh5.html%1$s#%2$s";
                Object[] objArr = new Object[2];
                objArr[0] = RemoverFragment.this.mIsNightMode ? "&mode=dark" : "";
                objArr[1] = Locale.getDefault();
                intent.putExtra("url", String.format(locale, str, objArr));
                RemoverFragment.this.startActivity(intent);
                BaseSamplingStatHelper.recordCountEvent("photo_editor", "remove_tips_click");
            }
        });
        AbstractRemoverFragment removerFragment = (AbstractRemoverFragment) getRenderFragment();
        if (removerFragment instanceof RemoverRenderFragment) {
            RemoverRenderFragment removerRenderFragment = (RemoverRenderFragment) removerFragment;
            this.mBottomMenuPanel.setRenderRecordListener(removerRenderFragment);
            removerRenderFragment.setMenuUpdateListener(this.mBottomMenuPanel);
        }
        this.mBottomMenuPanel.updateBottomBar(true);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.remover_menu_fragment, container, false);
    }

    private int getPaintSizeByProgress(int progress) {
        int min;
        int max;
        switch (this.mCurrentType) {
            case 1:
                min = 20;
                max = 100;
                break;
            default:
                min = 35;
                max = 161;
                break;
        }
        return Math.round(((float) ((max - min) * progress)) / ((float) this.mSeekBar.getMax())) + min;
    }

    protected void showProcessDialog() {
        this.mProgressDialog = genProgressDialog(getActivity().getString(R.string.remover_menu_processing));
        this.mProgressDialog.show();
    }

    protected void hideProcessDialog() {
        if (this.mProgressDialog != null && this.mProgressDialog.isShowing()) {
            this.mProgressDialog.dismiss();
        }
    }
}

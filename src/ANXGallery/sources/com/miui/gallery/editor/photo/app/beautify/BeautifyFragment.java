package com.miui.gallery.editor.photo.app.beautify;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.MenuFragment;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.Metadata;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.common.model.BeautifyData;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import java.util.ArrayList;
import java.util.List;

public class BeautifyFragment extends MenuFragment<AbstractEffectFragment, SdkProvider<BeautifyData, AbstractEffectFragment>> {
    private BeautifyAdapter mAdapter;
    private List<BeautifyData> mDataList;
    private OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView parent, View child, int position) {
            if (BeautifyFragment.this.mAdapter.getSelection() != position) {
                BeautifyFragment.this.performItemSelect(position, BeautifyFragment.this.mValues[position], false);
            }
            return true;
        }
    };
    private SimpleRecyclerView mRecyclerView;
    private TextView mTitle;
    private int[] mValues;

    public BeautifyFragment() {
        super(Effect.BEAUTIFY);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mDataList = new ArrayList(this.mSdkProvider.list());
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.beautify_menu_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.mValues = new int[this.mDataList.size()];
        this.mRecyclerView = (SimpleRecyclerView) view.findViewById(R.id.preview_list);
        this.mAdapter = new BeautifyAdapter(getActivity(), this.mDataList, new Selector(getResources().getColor(R.color.photo_editor_highlight_color)));
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mAdapter.setOnItemClickListener(this.mOnItemClickListener);
        this.mTitle = (TextView) view.findViewById(R.id.title);
        this.mTitle.setText(R.string.photo_editor_beautify);
        performItemSelect(1, 0, false);
    }

    private void doRender(Metadata data, Object value) {
        ((AbstractEffectFragment) getRenderFragment()).clear();
        ((AbstractEffectFragment) getRenderFragment()).add(data, value);
        ((AbstractEffectFragment) getRenderFragment()).render();
    }

    private void performItemSelect(int position, int progress, boolean skipRender) {
        BeautifyData data = (BeautifyData) this.mDataList.get(position);
        this.mAdapter.setSelection(position);
        if (!skipRender) {
            doRender(data, Integer.valueOf(progress));
        }
    }
}

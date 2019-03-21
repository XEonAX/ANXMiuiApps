package com.miui.gallery.editor.photo.app.miuibeautify;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.filtersdk.beauty.BeautyProcessorManager;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.miuibeautify.SmartBeautyLevelItemAdapter.LevelItem;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import java.util.ArrayList;
import java.util.List;

public class SmartBeautyFragment extends ChildMenuFragment {
    private SmartBeautyLevelItemAdapter mBeautyLevelAdapter;
    private SimpleRecyclerView mLevelItemList;
    private boolean mListItemClickable = true;
    private OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
        int mPrePos = 0;

        public boolean OnItemClick(RecyclerView parent, View child, int position) {
            if (position != this.mPrePos && SmartBeautyFragment.this.mListItemClickable) {
                this.mPrePos = position;
                SmartBeautyFragment.this.setBeautyParameterTable(BeautyProcessorManager.INSTANCE.getBeautyProcessor().getIntelligentLevelParams(position));
                SmartBeautyFragment.this.notifyBeautyParameterChanged();
                SmartBeautyFragment.this.mBeautyLevelAdapter.setSelection(position);
            }
            return true;
        }
    };

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View v = inflater.inflate(R.layout.fragment_beauty_level, container, false);
        initView(v);
        return v;
    }

    private void initView(View view) {
        this.mLevelItemList = (SimpleRecyclerView) view.findViewById(R.id.beauty_level_item_list);
        List<LevelItem> items = new ArrayList();
        items.add(new LevelItem(R.drawable.icon_level_0_n, R.drawable.icon_level_0_p));
        items.add(new LevelItem(R.drawable.icon_level_1_n, R.drawable.icon_level_1_p));
        items.add(new LevelItem(R.drawable.icon_level_2_n, R.drawable.icon_level_2_p));
        items.add(new LevelItem(R.drawable.icon_level_3_n, R.drawable.icon_level_3_p));
        items.add(new LevelItem(R.drawable.icon_level_4_n, R.drawable.icon_level_4_p));
        items.add(new LevelItem(R.drawable.icon_level_5_n, R.drawable.icon_level_5_p));
        this.mBeautyLevelAdapter = new SmartBeautyLevelItemAdapter(getActivity(), items);
        this.mLevelItemList.setAdapter(this.mBeautyLevelAdapter);
        this.mBeautyLevelAdapter.setOnItemClickListener(this.mOnItemClickListener);
        this.mBeautyLevelAdapter.notifyDataSetChanged();
        this.mCallbacks.changeTitle(getResources().getString(R.string.photo_editor_miui_beauty_menu_smart_beauty));
        this.mOnItemClickListener.OnItemClick(null, null, 3);
    }

    public void onBeautyProcessStart() {
        super.onBeautyProcessStart();
        this.mListItemClickable = false;
    }

    public void onBeautyProcessEnd() {
        super.onBeautyProcessEnd();
        this.mListItemClickable = true;
    }
}

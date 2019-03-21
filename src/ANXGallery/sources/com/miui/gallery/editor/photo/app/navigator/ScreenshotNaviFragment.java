package com.miui.gallery.editor.photo.app.navigator;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.AbstractNaviFragment;
import com.miui.gallery.util.Log;

public class ScreenshotNaviFragment extends AbstractNaviFragment {
    private OnClickListener mOnClickListener = new OnClickListener() {
        public void onClick(View v) {
            Integer index = (Integer) v.getTag(R.id.screenshot_navigator_tag_id);
            if (index == null) {
                Log.w("ScreenshotNaviFragment", "no attached id found for %s", v);
            } else {
                ScreenshotNaviFragment.this.notifyNavigate(((NavigatorData) ScreenshotNaviFragment.this.getNaviData().get(index.intValue())).effect);
            }
        }
    };

    protected View onCreateNavigator(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.screenshot_navigator, container, false);
    }

    protected void onNavigatorCreated(View view, Bundle savedInstanceState) {
        LinearLayout layout = (LinearLayout) view;
        for (int i = 0; i < getNaviData().size(); i++) {
            NavigatorData data = (NavigatorData) getNaviData().get(i);
            View item = View.inflate(getActivity(), R.layout.navigator_item, null);
            TextView label = (TextView) item.findViewById(R.id.label);
            LayoutParams lp = new LayoutParams(0, -1, 1.0f);
            label.setCompoundDrawablesWithIntrinsicBounds(0, data.icon, 0, 0);
            label.setText(data.name);
            label.setTag(R.id.screenshot_navigator_tag_id, Integer.valueOf(i));
            label.setOnClickListener(this.mOnClickListener);
            layout.addView(item, lp);
        }
    }
}

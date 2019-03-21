package com.miui.gallery.search.hint;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.search.widget.bannerView.BannerView;
import com.miui.gallery.search.widget.bannerView.BaseBannerAdapter;

public class SearchBarHintAdapter extends BaseBannerAdapter<SearchBarHintItem> {
    public SearchBarHintAdapter(SearchBarHintItem[] data) {
        super(data);
    }

    public View getView(BannerView parent) {
        return LayoutInflater.from(parent.getContext()).inflate(R.layout.search_bar_hint_item, null);
    }

    public void bindView(View view, int position) {
        SearchBarHintItem item = (SearchBarHintItem) getItem(position);
        ((TextView) view.findViewById(R.id.hint_text)).setHint(item.getHintText());
        if (getOnUpdateTextListener() != null) {
            getOnUpdateTextListener().onUpdateText(null, item.getHintText());
        }
    }
}

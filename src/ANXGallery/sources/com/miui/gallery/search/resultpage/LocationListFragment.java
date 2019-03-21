package com.miui.gallery.search.resultpage;

import android.content.Context;
import com.miui.gallery.R;
import com.miui.gallery.search.StatusHandleHelper.AbstractErrorViewAdapter;
import com.miui.gallery.search.StatusHandleHelper.InfoViewPosition;

public class LocationListFragment extends SearchResultFragment {

    private class LocationListErrorViewAdapter extends ErrorViewAdapter {
        public LocationListErrorViewAdapter(Context context) {
            super(context);
        }

        protected int getIconResForStatus(int status, InfoViewPosition position) {
            if (position == InfoViewPosition.FULL_SCREEN) {
                return R.drawable.empty_page_places;
            }
            if (position == InfoViewPosition.FOOTER) {
                return R.drawable.search_connection_error_icon;
            }
            return 0;
        }

        protected String getInfoTitleForStatus(int status, InfoViewPosition position) {
            int resId = R.string.places_album_empty_title;
            boolean fullScreen = position == InfoViewPosition.FULL_SCREEN;
            switch (status) {
                case 1:
                    if (!fullScreen) {
                        resId = R.string.search_connection_error_and_set;
                        break;
                    }
                    break;
                case 3:
                    if (!fullScreen) {
                        resId = R.string.search_login_title;
                        break;
                    }
                    break;
                case 4:
                    if (!fullScreen) {
                        resId = R.string.search_backup_title;
                        break;
                    }
                    break;
                case 10:
                    resId = R.string.search_syncing;
                    break;
                case 13:
                    resId = R.string.ai_album_requesting_title;
                    break;
                default:
                    if (!fullScreen) {
                        resId = R.string.search_error_and_retry;
                        break;
                    }
                    break;
            }
            return this.mContext.getString(resId);
        }
    }

    protected int getLayoutResource() {
        return R.layout.search_location_list_fragment;
    }

    protected AbstractErrorViewAdapter getErrorViewAdapter() {
        if (this.mErrorViewAdapter == null) {
            this.mErrorViewAdapter = new LocationListErrorViewAdapter(this.mActivity);
        }
        return this.mErrorViewAdapter;
    }
}

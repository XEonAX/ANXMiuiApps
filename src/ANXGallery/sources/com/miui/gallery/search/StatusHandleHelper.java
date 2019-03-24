package com.miui.gallery.search;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.AIAlbumStatusHelper;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import com.miui.gallery.util.IntentUtil;
import miui.yellowpage.YellowPageContract.Search;

public class StatusHandleHelper {
    private int mBaseStatus = -1;
    private ErrorViewAdapter mErrorViewAdapter;
    private View[] mFullScreenViews;
    private View mInfoFooterView;
    private View mInfoHeaderView;
    private boolean mInitiated;
    private int mResultStatus = -1;
    private int mTopVisibleView = -1;

    public interface ErrorViewAdapter {
        void addFooterView(View view);

        void addHeaderView(View view);

        void bindInfoView(View view, int i, InfoViewPosition infoViewPosition);

        View bindLoadingView(View view, int i, InfoViewPosition infoViewPosition);

        View getInfoView(View view, int i, InfoViewPosition infoViewPosition);

        View getLoadingView(View view, int i, InfoViewPosition infoViewPosition);

        boolean isEmptyDataView();

        boolean isLoading();

        InfoViewPosition positionForBaseStatus(int i);

        InfoViewPosition positionForResultStatus(int i);

        void removeFooterView(View view);

        void removeHeaderView(View view);

        void requestRetry();
    }

    public static abstract class AbstractErrorViewAdapter implements ErrorViewAdapter {
        protected final Context mContext;
        protected final LayoutInflater mInflater = LayoutInflater.from(this.mContext);

        public AbstractErrorViewAdapter(Context context) {
            this.mContext = context;
        }

        public View getInfoView(View convertView, int status, InfoViewPosition position) {
            if (!SearchConstants.isErrorStatus(status)) {
                return null;
            }
            if (position != InfoViewPosition.FULL_SCREEN) {
                convertView = getInfoItemView(convertView, status, position);
            }
            return convertView;
        }

        public void bindInfoView(View view, int status, InfoViewPosition position) {
            if (view != null) {
                setTextIfExist(view, R.id.title, getInfoTitleForStatus(status, position));
                setTextIfExist(view, R.id.sub_title, getInfoSubTitleForStatus(status));
                if (shouldShowFixButtonForStatus(status, position)) {
                    setVisibilityIfExist(view, R.id.fix_button, 0);
                    setTextIfExist(view, R.id.fix_button, getFixButtonTextForStatus(status, position));
                } else {
                    setVisibilityIfExist(view, R.id.fix_button, 4);
                }
                setIconIfExist(view, R.id.icon, getIconResForStatus(status, position));
                if (view.findViewById(R.id.fix_button) != null) {
                    bindFixActionForStatus(status, view.findViewById(R.id.fix_button), position);
                }
            }
        }

        protected void setIconIfExist(View parent, int id, int iconRes) {
            if (iconRes > 0) {
                View view = parent.findViewById(id);
                if (view != null && (view instanceof ImageView)) {
                    ((ImageView) view).setImageResource(iconRes);
                }
            }
        }

        protected void setTextIfExist(View parent, int id, String text) {
            View view = parent.findViewById(id);
            if (view == null) {
                return;
            }
            if (view instanceof TextView) {
                ((TextView) view).setText(text);
            } else if (view instanceof Button) {
                ((Button) view).setText(text);
            }
        }

        protected void setVisibilityIfExist(View parent, int id, int visibility) {
            View view = parent.findViewById(id);
            if (view != null) {
                view.setVisibility(visibility);
            }
        }

        public View getLoadingView(View convertView, int status, InfoViewPosition position) {
            if (position == InfoViewPosition.FULL_SCREEN) {
                return convertView;
            }
            return getLoadingItemView(convertView);
        }

        public View bindLoadingView(View convertView, int status, InfoViewPosition position) {
            if (SearchConstants.isErrorStatus(status)) {
                setIconIfExist(convertView, R.id.icon, getIconResForStatus(status, position));
                if (convertView.findViewById(R.id.icon) != null) {
                    convertView.findViewById(R.id.icon).setVisibility(0);
                }
                if (convertView.findViewById(R.id.progress) != null) {
                    convertView.findViewById(R.id.progress).setVisibility(8);
                }
            } else {
                if (convertView.findViewById(R.id.icon) != null) {
                    convertView.findViewById(R.id.icon).setVisibility(8);
                }
                if (convertView.findViewById(R.id.progress) != null) {
                    convertView.findViewById(R.id.progress).setVisibility(0);
                }
            }
            return convertView;
        }

        public InfoViewPosition positionForBaseStatus(int status) {
            if (SearchConstants.isErrorStatus(status)) {
                return InfoViewPosition.HEADER;
            }
            return InfoViewPosition.NONE;
        }

        public InfoViewPosition positionForResultStatus(int status) {
            if (SearchConstants.isErrorStatus(status)) {
                return InfoViewPosition.FOOTER;
            }
            return InfoViewPosition.NONE;
        }

        protected void bindFixActionForStatus(int status, View clickView, InfoViewPosition position) {
            String action;
            switch (status) {
                case 1:
                    action = "android.settings.SETTINGS";
                    break;
                case 3:
                    clickView.setOnClickListener(new OnClickListener() {
                        public void onClick(View v) {
                            Bundle bundle = new Bundle();
                            bundle.putSerializable("cloud_guide_source", CloudGuideSource.SEARCH);
                            IntentUtil.guideToLoginXiaomiAccount(AbstractErrorViewAdapter.this.mContext, bundle);
                        }
                    });
                    return;
                case 4:
                    action = "com.miui.gallery.cloud.provider.SYNC_SETTINGS";
                    break;
                case 5:
                    action = "android.settings.WIFI_SETTINGS";
                    break;
                case 10:
                    clickView.setVisibility(4);
                    return;
                case 12:
                    clickView.setOnClickListener(new OnClickListener() {
                        public void onClick(View v) {
                            AIAlbumStatusHelper.setLocalSearchStatus(AbstractErrorViewAdapter.this.mContext, true);
                            AbstractErrorViewAdapter.this.requestRetry();
                            BaseSamplingStatHelper.recordCountEvent(Search.DIRECTORY, "search_open_switch");
                        }
                    });
                    return;
                case 13:
                case 14:
                    clickView.setOnClickListener(null);
                    return;
                default:
                    clickView.setOnClickListener(new OnClickListener() {
                        public void onClick(View v) {
                            AbstractErrorViewAdapter.this.requestRetry();
                        }
                    });
                    return;
            }
            final String intentAction = action;
            clickView.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    AbstractErrorViewAdapter.this.mContext.startActivity(new Intent(intentAction));
                }
            });
        }

        protected View getInfoItemView(View convertView, int status, InfoViewPosition position) {
            switch (status) {
                case 3:
                case 4:
                    return this.mInflater.inflate(R.layout.search_set_cloud_back_up_item, null);
                default:
                    return this.mInflater.inflate(R.layout.search_item_error_layout, null);
            }
        }

        protected View getLoadingItemView(View convertView) {
            return this.mInflater.inflate(R.layout.search_item_loading_layout, null);
        }

        protected String getInfoTitleForStatus(int status, InfoViewPosition position) {
            int resId;
            boolean fullScreen = position == InfoViewPosition.FULL_SCREEN;
            switch (status) {
                case 1:
                    if (!fullScreen) {
                        resId = R.string.search_connection_error_and_set;
                        break;
                    }
                    resId = R.string.search_connection_error;
                    break;
                case 3:
                    if (!fullScreen) {
                        resId = R.string.search_login_title;
                        break;
                    }
                    resId = R.string.search_login_title_full_screen;
                    break;
                case 4:
                    if (!fullScreen) {
                        resId = R.string.search_backup_title;
                        break;
                    }
                    resId = R.string.search_backup_full_screen;
                    break;
                case 5:
                    resId = R.string.search_net_error;
                    break;
                case 10:
                    resId = R.string.search_syncing;
                    break;
                case 12:
                    resId = R.string.search_empty_title;
                    break;
                case 13:
                case 14:
                    resId = R.string.ai_album_requesting_title;
                    break;
                default:
                    if (!fullScreen) {
                        resId = R.string.search_error_and_retry;
                        break;
                    }
                    resId = R.string.search_error;
                    break;
            }
            return this.mContext.getString(resId);
        }

        protected int getIconResForStatus(int status, InfoViewPosition position) {
            if (position == InfoViewPosition.FULL_SCREEN) {
                switch (status) {
                    case 3:
                    case 4:
                        return R.drawable.search_error_cloud;
                    default:
                        return R.drawable.search_error_common;
                }
            } else if (position == InfoViewPosition.FOOTER) {
                return R.drawable.search_connection_error_icon;
            } else {
                return 0;
            }
        }

        protected boolean shouldShowFixButtonForStatus(int status, InfoViewPosition position) {
            switch (status) {
                case 13:
                case 14:
                    return false;
                default:
                    return true;
            }
        }

        protected String getFixButtonTextForStatus(int status, InfoViewPosition position) {
            int resId;
            switch (status) {
                case 1:
                    resId = R.string.search_set_network_connection;
                    break;
                case 3:
                    resId = R.string.search_login_now;
                    break;
                case 4:
                    resId = R.string.search_backup_now;
                    break;
                case 5:
                    resId = R.string.search_select_network;
                    break;
                case 12:
                    resId = R.string.ai_album_open_switch_button_title;
                    break;
                default:
                    resId = R.string.search_retry;
                    break;
            }
            return this.mContext.getString(resId);
        }

        private String getInfoSubTitleForStatus(int status) {
            int resId;
            switch (status) {
                case 3:
                    resId = R.string.search_login_sub_title;
                    break;
                case 4:
                    resId = R.string.search_backup_sub_title;
                    break;
                default:
                    return null;
            }
            return this.mContext.getString(resId);
        }
    }

    public enum InfoViewPosition {
        NONE,
        FULL_SCREEN,
        HEADER,
        FOOTER
    }

    public void init(View dataView, View fullScreenInfoView, View fullScreenLoadingView, View fullScreenEmptyView, ErrorViewAdapter errorViewAdapter) {
        if (errorViewAdapter == null) {
            throw new IllegalArgumentException("The ErrorViewAdapter cannot be null!");
        }
        this.mErrorViewAdapter = errorViewAdapter;
        this.mFullScreenViews = new View[]{dataView, fullScreenLoadingView, fullScreenEmptyView, fullScreenInfoView};
        this.mInitiated = true;
    }

    public void updateBaseStatus(int newStatus) {
        if (this.mInitiated && this.mBaseStatus != newStatus) {
            int oldStatus = this.mBaseStatus;
            this.mBaseStatus = newStatus;
            if (SearchConstants.isErrorStatus(oldStatus) && !SearchConstants.isErrorStatus(this.mBaseStatus)) {
                this.mErrorViewAdapter.requestRetry();
            }
            refreshInfoViews();
        }
    }

    public int getResultStatus() {
        return this.mResultStatus;
    }

    public void updateResultStatus(int newStatus) {
        this.mResultStatus = newStatus;
        refreshInfoViews();
    }

    public void refreshInfoViews() {
        if (!this.mInitiated) {
            return;
        }
        if (!this.mErrorViewAdapter.isEmptyDataView()) {
            setOnlyVisibleView(0);
            View oldHeader = this.mInfoHeaderView;
            View oldFooter = this.mInfoFooterView;
            if (this.mInfoHeaderView != null) {
                this.mErrorViewAdapter.removeHeaderView(this.mInfoHeaderView);
                this.mInfoHeaderView = null;
            }
            if (this.mInfoFooterView != null) {
                this.mErrorViewAdapter.removeFooterView(this.mInfoFooterView);
                this.mInfoFooterView = null;
            }
            int headerStatus = this.mErrorViewAdapter.positionForResultStatus(this.mResultStatus) == InfoViewPosition.HEADER ? this.mResultStatus : this.mErrorViewAdapter.positionForBaseStatus(this.mBaseStatus) == InfoViewPosition.HEADER ? this.mBaseStatus : -1;
            this.mInfoHeaderView = this.mErrorViewAdapter.getInfoView(oldHeader, headerStatus, InfoViewPosition.HEADER);
            if (this.mInfoHeaderView != null) {
                this.mErrorViewAdapter.bindInfoView(this.mInfoHeaderView, headerStatus, InfoViewPosition.HEADER);
                this.mErrorViewAdapter.addHeaderView(this.mInfoHeaderView);
            }
            if (this.mErrorViewAdapter.isLoading()) {
                this.mInfoFooterView = this.mErrorViewAdapter.getLoadingView(oldFooter, this.mResultStatus, InfoViewPosition.FOOTER);
                if (this.mInfoFooterView != null) {
                    this.mErrorViewAdapter.addFooterView(this.mInfoFooterView);
                    return;
                }
                return;
            }
            int footerStatus = this.mErrorViewAdapter.positionForResultStatus(this.mResultStatus) == InfoViewPosition.FOOTER ? this.mResultStatus : this.mErrorViewAdapter.positionForBaseStatus(this.mBaseStatus) == InfoViewPosition.FOOTER ? this.mBaseStatus : -1;
            this.mInfoFooterView = this.mErrorViewAdapter.getInfoView(oldFooter, footerStatus, InfoViewPosition.FOOTER);
            if (this.mInfoFooterView != null) {
                this.mErrorViewAdapter.bindInfoView(this.mInfoFooterView, footerStatus, InfoViewPosition.FOOTER);
                this.mErrorViewAdapter.addFooterView(this.mInfoFooterView);
            }
        } else if (this.mErrorViewAdapter.isLoading()) {
            this.mFullScreenViews[1] = this.mErrorViewAdapter.getLoadingView(this.mFullScreenViews[1], this.mResultStatus, InfoViewPosition.FULL_SCREEN);
            setOnlyVisibleView(1);
            this.mErrorViewAdapter.bindLoadingView(this.mFullScreenViews[1], this.mResultStatus, InfoViewPosition.FULL_SCREEN);
        } else if (SearchConstants.isErrorStatus(this.mResultStatus)) {
            this.mFullScreenViews[3] = this.mErrorViewAdapter.getInfoView(this.mFullScreenViews[3], this.mResultStatus, InfoViewPosition.FULL_SCREEN);
            setOnlyVisibleView(3);
            this.mErrorViewAdapter.bindInfoView(this.mFullScreenViews[3], this.mResultStatus, InfoViewPosition.FULL_SCREEN);
        } else if (SearchConstants.isErrorStatus(this.mBaseStatus)) {
            this.mFullScreenViews[3] = this.mErrorViewAdapter.getInfoView(this.mFullScreenViews[3], this.mBaseStatus, InfoViewPosition.FULL_SCREEN);
            setOnlyVisibleView(3);
            this.mErrorViewAdapter.bindInfoView(this.mFullScreenViews[3], this.mBaseStatus, InfoViewPosition.FULL_SCREEN);
        } else {
            setOnlyVisibleView(2);
        }
    }

    private void setVisibility(int viewId, int visibility) {
        View view = this.mFullScreenViews[viewId];
        boolean isViewStub = view instanceof ViewStub;
        if (visibility != 8) {
            if (isViewStub) {
                view = ((ViewStub) view).inflate();
                this.mFullScreenViews[viewId] = view;
            }
            view.setVisibility(visibility);
        } else if (!isViewStub) {
            view.setVisibility(visibility);
        }
    }

    private void setOnlyVisibleView(int viewId) {
        int i = 0;
        while (i < this.mFullScreenViews.length) {
            setVisibility(i, i == viewId ? 0 : 8);
            i++;
        }
        if (this.mTopVisibleView != viewId) {
            this.mTopVisibleView = viewId;
        }
    }
}

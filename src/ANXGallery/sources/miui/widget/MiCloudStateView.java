package miui.widget;

import android.accounts.Account;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SyncStatusObserver;
import android.content.res.TypedArray;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.miui.system.internal.R;
import java.lang.ref.WeakReference;
import miui.accounts.ExtraAccountManager;

public class MiCloudStateView extends FrameLayout {
    private static final int SYNC_OBSERVER_MASK = 13;
    private static final int SYNC_OBSERVER_TYPE_STATUS = 8;
    private int mCloudCountNormalTextAppearance;
    private int mCloudStatusDisabledTextAppearance;
    private int mCloudStatusHighlightTextAppearance;
    private int mCloudStatusNormalTextAppearance;
    private Context mContext;
    private UpdateStateTask mCurrentUpdateTask;
    private String mDisabledStatusText;
    private Handler mHandler;
    private ILayoutUpdateListener mLayoutUpdateListener;
    private TextView mMiCloudCountText;
    private TextView mMiCloudStatusText;
    private boolean mPendingUpdate;
    private Object mSyncChangeHandle;
    private ISyncInfoProvider mSyncInfoProvider;
    private boolean mSyncing;

    public interface ILayoutUpdateListener {
        void onLayoutUpdate(boolean z, boolean z2, int[] iArr);
    }

    public interface ISyncInfoProvider {
        String getAuthority();

        int[] getUnsyncedCount(Context context);

        String getUnsyncedCountText(Context context, int[] iArr);
    }

    private static class SyncObserver implements SyncStatusObserver {
        WeakReference<MiCloudStateView> mView;

        SyncObserver(MiCloudStateView view) {
            this.mView = new WeakReference(view);
        }

        public void onStatusChanged(int which) {
            MiCloudStateView view = (MiCloudStateView) this.mView.get();
            if (view != null) {
                view.updateState(true);
            }
        }
    }

    private class UpdateStateTask extends AsyncTask<Void, Void, Void> {
        boolean enabled;
        boolean syncing;
        int[] unsyncedCounts;

        private UpdateStateTask() {
        }

        /* synthetic */ UpdateStateTask(MiCloudStateView x0, AnonymousClass1 x1) {
            this();
        }

        protected Void doInBackground(Void... voids) {
            Account account = ExtraAccountManager.getXiaomiAccount(MiCloudStateView.this.getContext());
            if (account == null) {
                this.enabled = false;
                this.syncing = false;
            } else {
                String authority = MiCloudStateView.this.mSyncInfoProvider.getAuthority();
                if (TextUtils.isEmpty(authority)) {
                    this.enabled = false;
                    this.syncing = false;
                } else {
                    this.enabled = ContentResolver.getSyncAutomatically(account, authority);
                    this.syncing = ContentResolver.isSyncActive(account, authority);
                }
            }
            MiCloudStateView.this.mSyncing = this.syncing;
            if (this.enabled && !this.syncing) {
                this.unsyncedCounts = MiCloudStateView.this.mSyncInfoProvider.getUnsyncedCount(MiCloudStateView.this.getContext());
            }
            return null;
        }

        protected void onPostExecute(Void aVoid) {
            super.onPostExecute(aVoid);
            MiCloudStateView.this.mCurrentUpdateTask = null;
            if (MiCloudStateView.this.isAttachedToWindow()) {
                MiCloudStateView.this.updateLayout(this.enabled, this.syncing, this.unsyncedCounts);
                if (MiCloudStateView.this.mPendingUpdate) {
                    MiCloudStateView.this.mPendingUpdate = false;
                    MiCloudStateView.this.updateState(true);
                }
            }
        }
    }

    public MiCloudStateView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public MiCloudStateView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mSyncing = false;
        initialize(context, attrs, defStyle);
    }

    private void initialize(Context context, AttributeSet attrs, int defStyle) {
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.MiCloudStateView, R.attr.cloudStateViewStyle, miui.system.R.style.Widget_MiCloudStateView_Light);
        this.mCloudCountNormalTextAppearance = a.getResourceId(R.styleable.MiCloudStateView_cloudCountNormalTextAppearance, 0);
        this.mCloudStatusNormalTextAppearance = a.getResourceId(R.styleable.MiCloudStateView_cloudStatusNormalTextAppearance, 0);
        this.mCloudStatusHighlightTextAppearance = a.getResourceId(R.styleable.MiCloudStateView_cloudStatusHighlightTextAppearance, 0);
        this.mCloudStatusDisabledTextAppearance = a.getResourceId(R.styleable.MiCloudStateView_cloudStatusDisabledTextAppearance, 0);
        a.recycle();
        this.mDisabledStatusText = getResources().getString(R.string.cloud_state_disabled);
        this.mContext = context;
        this.mHandler = new Handler();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mMiCloudCountText = (TextView) findViewById(R.id.cloud_count);
        this.mMiCloudStatusText = (TextView) findViewById(R.id.cloud_status);
        Context context = getContext();
        this.mMiCloudCountText.setTextAppearance(context, this.mCloudCountNormalTextAppearance);
        this.mMiCloudStatusText.setTextAppearance(context, this.mCloudStatusNormalTextAppearance);
    }

    public void setTotalCountText(String countText) {
        this.mMiCloudCountText.setText(countText);
    }

    public void setDisabledStatusText(String disabledStatusText) {
        if (!TextUtils.isEmpty(disabledStatusText)) {
            this.mDisabledStatusText = disabledStatusText;
        }
    }

    public void setSyncInfoProvider(ISyncInfoProvider provider) {
        this.mSyncInfoProvider = provider;
    }

    public void setLayoutUpdateListener(ILayoutUpdateListener listener) {
        this.mLayoutUpdateListener = listener;
    }

    public void registerObserver() {
        if (this.mSyncChangeHandle == null) {
            this.mSyncChangeHandle = ContentResolver.addStatusChangeListener(13, new SyncObserver(this));
        }
    }

    public void unregisterObserver() {
        if (this.mSyncChangeHandle != null) {
            ContentResolver.removeStatusChangeListener(this.mSyncChangeHandle);
            this.mSyncChangeHandle = null;
        }
    }

    public void updateState() {
        updateState(false);
    }

    public void updateState(final boolean force) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            this.mHandler.post(new Runnable() {
                public void run() {
                    MiCloudStateView.this.updateState(force);
                }
            });
        } else if (!isAttachedToWindow()) {
            if (force) {
                this.mPendingUpdate = true;
            }
        } else if (!force && this.mSyncing) {
        } else {
            if (this.mSyncInfoProvider != null) {
                if (this.mCurrentUpdateTask == null) {
                    this.mCurrentUpdateTask = new UpdateStateTask(this, null);
                    this.mCurrentUpdateTask.execute(new Void[0]);
                } else {
                    this.mPendingUpdate = true;
                }
                return;
            }
            throw new IllegalStateException("mSyncInfoProvider can't be null");
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mPendingUpdate) {
            this.mPendingUpdate = false;
            updateState(true);
        }
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int verticalCenter = (top + bottom) / 2;
        int childStatusLeft = ((left + right) / 2) - (this.mMiCloudStatusText.getMeasuredWidth() / 2);
        int childStatusRight = this.mMiCloudStatusText.getMeasuredWidth() + childStatusLeft;
        int childTop;
        if (this.mMiCloudCountText.getVisibility() == 0) {
            childTop = verticalCenter - ((this.mMiCloudCountText.getMeasuredHeight() + this.mMiCloudStatusText.getMeasuredHeight()) / 2);
            int childBottom = this.mMiCloudCountText.getMeasuredHeight() + childTop;
            this.mMiCloudCountText.layout(getPaddingStart() + left, childTop, right - getPaddingEnd(), childBottom);
            this.mMiCloudStatusText.layout(childStatusLeft, childBottom, childStatusRight, childBottom + this.mMiCloudStatusText.getMeasuredHeight());
            return;
        }
        childTop = verticalCenter - (this.mMiCloudStatusText.getMeasuredHeight() / 2);
        this.mMiCloudStatusText.layout(childStatusLeft, childTop, childStatusRight, this.mMiCloudStatusText.getMeasuredHeight() + childTop);
    }

    private void updateLayout(boolean enabled, boolean syncing, int[] unsyncedCounts) {
        int totalUnsyncedCount = getTotalCount(unsyncedCounts);
        if (!enabled) {
            setBackground(getResources().getDrawable(R.drawable.cloud_state_disabled_bg));
            this.mMiCloudCountText.setVisibility(8);
            this.mMiCloudStatusText.setText(this.mDisabledStatusText);
            this.mMiCloudStatusText.setCompoundDrawablesRelativeWithIntrinsicBounds(null, null, getResources().getDrawable(R.drawable.cloud_btn), null);
        } else if (syncing) {
            setBackground(getResources().getDrawable(R.drawable.cloud_state_enabled_bg));
            this.mMiCloudCountText.setVisibility(0);
            this.mMiCloudStatusText.setCompoundDrawablesRelativeWithIntrinsicBounds(null, null, null, null);
            this.mMiCloudStatusText.setText(R.string.cloud_state_syncing);
        } else {
            setBackground(getResources().getDrawable(R.drawable.cloud_state_enabled_bg));
            this.mMiCloudCountText.setVisibility(0);
            this.mMiCloudStatusText.setCompoundDrawablesRelativeWithIntrinsicBounds(null, null, null, null);
            if (totalUnsyncedCount > 0) {
                this.mMiCloudStatusText.setText(this.mSyncInfoProvider.getUnsyncedCountText(this.mContext, unsyncedCounts));
            } else {
                this.mMiCloudStatusText.setText(R.string.cloud_state_finished);
            }
        }
        Context context = getContext();
        if (!syncing && totalUnsyncedCount > 0) {
            this.mMiCloudStatusText.setTextAppearance(context, this.mCloudStatusHighlightTextAppearance);
        } else if (enabled) {
            this.mMiCloudStatusText.setTextAppearance(context, this.mCloudStatusNormalTextAppearance);
        } else {
            this.mMiCloudStatusText.setTextAppearance(context, this.mCloudStatusDisabledTextAppearance);
        }
        if (this.mLayoutUpdateListener != null) {
            this.mLayoutUpdateListener.onLayoutUpdate(enabled, syncing, unsyncedCounts);
        }
        requestLayout();
    }

    private int getTotalCount(int[] counts) {
        int totalCount = 0;
        if (counts != null && counts.length > 0) {
            for (int cnt : counts) {
                totalCount += cnt;
            }
        }
        return totalCount;
    }
}

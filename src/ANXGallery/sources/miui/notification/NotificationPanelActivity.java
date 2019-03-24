package miui.notification;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.system.internal.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class NotificationPanelActivity extends Activity {
    private static final int STATUS_BAR_TRANSIENT = 67108864;
    public static final String TAG = NotificationPanelActivity.class.getSimpleName();
    TextView mAppInfo;
    String mAppTitle;
    ImageView mClearButton;
    private OnClickListener mClearButtonListener = new OnClickListener() {
        public void onClick(View v) {
            NotificationPanelActivity.this.clearAllNotification(NotificationPanelActivity.this.mScrollView, NotificationPanelActivity.this.mNotificationList);
        }
    };
    boolean mClosing;
    List<NotificationItem> mData;
    protected Handler mHandler;
    protected LayoutInflater mInflater;
    TextView mNoNotificationTips;
    int mNotificationHeight;
    NotificationRowLayout mNotificationList;
    Runnable mOpenAnimation = new Runnable() {
        public void run() {
            AnimatorSet set = new AnimatorSet();
            set.setDuration((long) NotificationPanelActivity.this.getResources().getInteger(17694722));
            r1 = new Animator[3];
            r1[1] = ObjectAnimator.ofFloat(NotificationPanelActivity.this.mAppInfo, "translationY", new float[]{(float) ((NotificationPanelActivity.this.mNotificationHeight * NotificationPanelActivity.this.mData.size()) / 2), 0.0f});
            r1[2] = ObjectAnimator.ofFloat(this, "alpha", new float[]{0.0f, 1.0f});
            set.playTogether(r1);
            set.setInterpolator(new DecelerateInterpolator());
            set.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animation) {
                    NotificationPanelActivity.this.startClearButtonAnimation(NotificationPanelActivity.this.mNotificationList.getChildCount() > 0);
                }
            });
            set.start();
        }
    };
    Runnable mPostCollapseCleanup = null;
    ScrollView mScrollView;

    class LoadDataTask extends AsyncTask<Void, Void, Void> {
        LoadDataTask() {
        }

        protected Void doInBackground(Void... params) {
            NotificationPanelActivity.this.mData = NotificationPanelActivity.this.getData();
            NotificationPanelActivity.this.mAppTitle = NotificationPanelActivity.this.getAppTitle();
            return null;
        }

        protected void onPostExecute(Void params) {
            NotificationPanelActivity.this.mAppInfo.setText(NotificationPanelActivity.this.mAppTitle);
            if (NotificationPanelActivity.this.mData == null || NotificationPanelActivity.this.mData.size() <= 0) {
                NotificationPanelActivity.this.mNoNotificationTips.setVisibility(0);
                NotificationPanelActivity.this.mNotificationList.setVisibility(8);
            } else {
                for (NotificationItem item : NotificationPanelActivity.this.mData) {
                    NotificationPanelActivity.this.mNotificationList.addView(NotificationPanelActivity.this.inflateNotificationView(item));
                }
            }
            NotificationPanelActivity.this.mHandler.post(NotificationPanelActivity.this.mOpenAnimation);
        }
    }

    private class NotificationActionClicker implements OnClickListener {
        private PendingIntent mIntent;

        public NotificationActionClicker(PendingIntent intent) {
            this.mIntent = intent;
        }

        public void onClick(View v) {
            if (this.mIntent != null) {
                try {
                    Log.d(NotificationPanelActivity.TAG, "NotificationClicker ActionClick ");
                    this.mIntent.send();
                } catch (CanceledException e) {
                    String str = NotificationPanelActivity.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Sending contentIntent failed: ");
                    stringBuilder.append(e);
                    Log.w(str, stringBuilder.toString());
                }
            }
        }
    }

    private class NotificationClicker implements OnClickListener {
        private PendingIntent mIntent;

        public NotificationClicker(PendingIntent intent) {
            this.mIntent = intent;
        }

        public void onClick(View v) {
            if (this.mIntent != null) {
                try {
                    Log.d(NotificationPanelActivity.TAG, "NotificationClicker onClick ");
                    this.mIntent.send();
                    NotificationPanelActivity.this.removeNotificationView(v);
                } catch (CanceledException e) {
                    String str = NotificationPanelActivity.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Sending contentIntent failed: ");
                    stringBuilder.append(e);
                    Log.w(str, stringBuilder.toString());
                }
            }
        }
    }

    protected abstract String getAppTitle();

    protected abstract List<NotificationItem> getData();

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.notification_panel);
        getWindow().addFlags(STATUS_BAR_TRANSIENT);
        getWindow().addFlags(4);
        getWindow().setBackgroundDrawableResource(miui.system.R.color.blur_background_mask);
        overridePendingTransition(0, 0);
        this.mInflater = LayoutInflater.from(this);
        this.mAppInfo = (TextView) findViewById(R.id.app_info);
        this.mNotificationList = (NotificationRowLayout) findViewById(R.id.list);
        this.mNoNotificationTips = (TextView) findViewById(R.id.no_notification_tips);
        this.mScrollView = (ScrollView) findViewById(R.id.scroll);
        this.mScrollView.setVerticalScrollBarEnabled(false);
        this.mClearButton = (ImageView) findViewById(R.id.clear_button);
        this.mClearButton.setEnabled(false);
        this.mClearButton.setOnClickListener(this.mClearButtonListener);
        this.mNotificationHeight = getResources().getDimensionPixelSize(R.dimen.notification_row_height);
        this.mHandler = new Handler();
        new LoadDataTask().execute(new Void[0]);
    }

    protected void onPause() {
        super.onPause();
        closeAnimation();
    }

    private View inflateNotificationView(NotificationItem item) {
        View row = this.mInflater.inflate(R.layout.status_bar_notification, null);
        setRowValue(row, item);
        return row;
    }

    private void setRowValue(View row, NotificationItem item) {
        ImageView icon = (ImageView) row.findViewById(16908294);
        TextView title = (TextView) row.findViewById(R.id.title);
        TextView content = (TextView) row.findViewById(R.id.content);
        TextView action = (TextView) row.findViewById(R.id.action);
        if (item.getIcon() == null) {
            icon.setVisibility(8);
        } else {
            icon.setImageDrawable(item.getIcon());
        }
        title.setText(item.getTitle());
        content.setText(item.getContent());
        if (item.getAction() == null && item.getActionIcon() == null) {
            action.setVisibility(8);
        } else {
            action.setOnClickListener(new NotificationActionClicker(item.getClickActionIntent()));
            action.setText(item.getAction());
            if (item.getActionIcon() != null) {
                action.setBackground(item.getActionIcon());
            }
        }
        updateNotificationVetoButton(row, item.getClearIntent());
        row.setTag(item);
        row.setId(item.getId());
        row.setOnClickListener(new NotificationClicker(item.getClickIntent()));
    }

    protected void addNotification(NotificationItem item) {
        if (item != null) {
            if (this.mNotificationList.getChildCount() == 0) {
                this.mNoNotificationTips.setVisibility(8);
                this.mNotificationList.setVisibility(0);
                startClearButtonAnimation(true);
            }
            this.mNotificationList.addView(inflateNotificationView(item), 0);
        }
    }

    protected void updateNotification(int id, NotificationItem item) {
        if (item != null) {
            for (int i = 0; i < this.mNotificationList.getChildCount(); i++) {
                View row = this.mNotificationList.getChildAt(i);
                if (row.getId() == id) {
                    setRowValue(row, item);
                }
            }
        }
    }

    protected void removeNotification(int id) {
        for (int i = 0; i < this.mNotificationList.getChildCount(); i++) {
            if (this.mNotificationList.getChildAt(i).getId() == id) {
                removeNotificationView(this.mNotificationList.getChildAt(i));
            }
        }
    }

    private void updateNotificationVetoButton(View row, final PendingIntent clearIntent) {
        row.findViewById(R.id.veto).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (clearIntent != null) {
                    try {
                        Log.d(NotificationPanelActivity.TAG, "NotificationClicker clear ");
                        clearIntent.send();
                    } catch (CanceledException e) {
                        e.printStackTrace();
                    }
                }
                NotificationPanelActivity.this.removeNotificationView((View) v.getParent());
            }
        });
    }

    private void removeNotificationView(View view) {
        this.mNotificationList.removeView(view);
        if (this.mNotificationList.getChildCount() == 0) {
            closeAnimation();
        }
    }

    private void startClearButtonAnimation(boolean show) {
        if (this.mClearButton.isEnabled() != show) {
            ImageView imageView = this.mClearButton;
            String str = "alpha";
            float[] fArr = new float[1];
            fArr[0] = show ? 1.0f : 0.0f;
            ObjectAnimator.ofFloat(imageView, str, fArr).setDuration((long) getResources().getInteger(17694720)).start();
            this.mClearButton.setEnabled(show);
        }
    }

    private void closeAnimation() {
        if (!this.mClosing) {
            this.mClosing = true;
            AnimatorSet set = new AnimatorSet();
            set.setDuration((long) getResources().getInteger(17694720));
            r2 = new Animator[3];
            r2[1] = ObjectAnimator.ofFloat(this.mAppInfo, "translationY", new float[]{(float) (this.mScrollView.getHeight() / 2)});
            r2[2] = ObjectAnimator.ofFloat(this.mClearButton, "alpha", new float[]{0.0f});
            set.playTogether(r2);
            set.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animation) {
                    NotificationPanelActivity.this.startClearButtonAnimation(false);
                    NotificationPanelActivity.this.mAppInfo.setTranslationY(0.0f);
                    NotificationPanelActivity.this.mAppInfo.setText(null);
                    NotificationPanelActivity.this.mNotificationList.removeAllViews();
                    if (NotificationPanelActivity.this.mPostCollapseCleanup != null) {
                        NotificationPanelActivity.this.mPostCollapseCleanup.run();
                        NotificationPanelActivity.this.mPostCollapseCleanup = null;
                    }
                    NotificationPanelActivity.this.mClosing = false;
                    NotificationPanelActivity.this.finish();
                }
            });
            set.start();
        }
    }

    public boolean onTouchEvent(MotionEvent event) {
        if (event.getAction() != 0) {
            return super.onTouchEvent(event);
        }
        closeAnimation();
        return true;
    }

    public void onBackPressed() {
        closeAnimation();
    }

    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    public void clearAllNotification(ScrollView scrollView, final NotificationRowLayout list) {
        int numChildren = list.getChildCount();
        int scrollTop = scrollView.getScrollY();
        int scrollBottom = scrollView.getHeight() + scrollTop;
        final ArrayList<View> snapshot = new ArrayList(numChildren);
        final ArrayList<View> clearableViews = new ArrayList(numChildren);
        for (int i = 0; i < numChildren; i++) {
            View child = list.getChildAt(i);
            if (list.canChildBeDismissed(child) && child.getBottom() > scrollTop && child.getTop() < scrollBottom) {
                snapshot.add(child);
            }
            if (list.canChildBeDismissed(child)) {
                clearableViews.add(child);
            }
        }
        new Thread(new Runnable() {
            public void run() {
                int currentDelay = BaiduSceneResult.CARTOON;
                int totalDelay = 0;
                list.setViewRemoval(false);
                NotificationPanelActivity.this.mPostCollapseCleanup = new Runnable() {
                    public void run() {
                        try {
                            list.setViewRemoval(true);
                            Iterator it = clearableViews.iterator();
                            while (it.hasNext()) {
                                ((View) it.next()).findViewById(R.id.veto).performClick();
                            }
                        } catch (Exception e) {
                        }
                    }
                };
                final int velocity = ((View) snapshot.get(0)).getWidth() * 8;
                Iterator it = snapshot.iterator();
                while (it.hasNext()) {
                    final View _v = (View) it.next();
                    NotificationPanelActivity.this.mHandler.postDelayed(new Runnable() {
                        public void run() {
                            list.dismissRowAnimated(_v, velocity);
                        }
                    }, (long) totalDelay);
                    currentDelay = Math.max(50, currentDelay - 10);
                    totalDelay += currentDelay;
                }
                NotificationPanelActivity.this.mHandler.postDelayed(new Runnable() {
                    public void run() {
                        NotificationPanelActivity.this.closeAnimation();
                    }
                }, (long) (totalDelay + 225));
            }
        }).start();
    }
}

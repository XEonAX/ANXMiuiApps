package com.miui.gallery.ui;

import android.app.Activity;
import android.content.Context;
import com.miui.gallery.model.DiscoveryMessage;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.AppFocusedCheckHelper.OnAppFocusedListener;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.widget.PanelBar;
import com.miui.gallery.widget.PanelItem;
import com.miui.gallery.widget.PanelManager;
import com.miui.gallery.widget.TwoStageDrawer;
import com.miui.gallery.widget.TwoStageDrawer.DrawerAnimEndListener;
import com.miui.gallery.widget.TwoStageDrawer.DrawerListener;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.PriorityQueue;

public class HomePageTopBarController implements OnAppFocusedListener, DrawerListener {
    private Activity mActivity;
    private Runnable mDelayShowBarRunnable;
    private DiscoveryBar mDiscoveryBar;
    private TwoStageDrawer mDrawer;
    private PanelItemManager mItemManager;
    private SyncBar mSyncBar;

    public static abstract class HomePageBar implements PanelItem {
        protected final Context mContext;
        protected final PanelManager mPanelManager;
        protected boolean mPermanent;
        protected int mPriority;

        public HomePageBar(Context context, int priority, PanelManager manager) {
            this.mContext = context;
            this.mPanelManager = manager;
            this.mPriority = priority;
        }

        public Context getContext() {
            return this.mContext;
        }

        public int getPriority() {
            return this.mPriority;
        }

        public void setPermanent(boolean permanent) {
            this.mPermanent = permanent;
        }

        public boolean isPermanent() {
            return this.mPermanent;
        }
    }

    private class PanelItemManager implements PanelManager {
        private Comparator<PanelItem> mComparator;
        private PanelItem mCurrentItem;
        private boolean mIsItemEnable = true;
        private PanelBar mPanelBar;
        private PriorityQueue<PanelItem> mWaitingItems;

        public PanelItemManager(PanelBar panelBar) {
            this.mPanelBar = panelBar;
            this.mComparator = new Comparator<PanelItem>(HomePageTopBarController.this) {
                public int compare(PanelItem lhs, PanelItem rhs) {
                    if (lhs == null && rhs == null) {
                        return 0;
                    }
                    if (lhs == null) {
                        return -1;
                    }
                    if (rhs == null) {
                        return 1;
                    }
                    return lhs.getPriority() - rhs.getPriority();
                }
            };
            this.mWaitingItems = new PriorityQueue(10, this.mComparator);
        }

        public void setItemEnable(boolean enable) {
            if (enable != this.mIsItemEnable) {
                this.mIsItemEnable = enable;
                if (!(this.mCurrentItem == null || this.mCurrentItem.getView() == null)) {
                    this.mCurrentItem.getView().setEnabled(enable);
                    this.mCurrentItem.getView().setClickable(enable);
                }
                if (BaseMiscUtil.isValid(this.mWaitingItems)) {
                    Iterator it = this.mWaitingItems.iterator();
                    while (it.hasNext()) {
                        PanelItem waitingItem = (PanelItem) it.next();
                        if (waitingItem.getView() != null) {
                            waitingItem.getView().setEnabled(enable);
                            waitingItem.getView().setClickable(enable);
                        }
                    }
                }
            }
        }

        public boolean addItem(PanelItem item, boolean autoShow) {
            if (!(item == null || item.getView() == null)) {
                item.getView().setClickable(this.mIsItemEnable);
                item.getView().setEnabled(this.mIsItemEnable);
            }
            PanelItem oldItem = this.mCurrentItem;
            if (this.mCurrentItem == null) {
                this.mCurrentItem = item;
            } else if (this.mCurrentItem != item) {
                if (this.mComparator.compare(this.mCurrentItem, item) < 0) {
                    if (!this.mWaitingItems.contains(this.mCurrentItem)) {
                        this.mWaitingItems.offer(this.mCurrentItem);
                    }
                    this.mCurrentItem = item;
                } else if (this.mWaitingItems.contains(item)) {
                    return false;
                } else {
                    this.mWaitingItems.offer(item);
                    return false;
                }
            }
            if (autoShow) {
                if (oldItem == null || oldItem == this.mCurrentItem || !HomePageTopBarController.this.isPanelBarOpened() || HomePageTopBarController.this.isPanelBarAniming()) {
                    if (oldItem != this.mCurrentItem) {
                        this.mPanelBar.replaceItem(this.mCurrentItem, HomePageTopBarController.this.isPanelBarAniming());
                    }
                    HomePageTopBarController.this.delayShowPanelBar(oldItem == null ? 600 : 300);
                } else {
                    HomePageTopBarController.this.closePanelBar(true, new DrawerAnimEndListener() {
                        public void onDrawerAnimEnd(boolean opened) {
                            PanelItemManager.this.mPanelBar.replaceItem(PanelItemManager.this.mCurrentItem, false);
                            HomePageTopBarController.this.showPanelBar(true, null);
                        }
                    });
                }
            } else if (oldItem != this.mCurrentItem) {
                this.mPanelBar.replaceItem(this.mCurrentItem, false);
            }
            return true;
        }

        public boolean removeItem(PanelItem item, boolean autoHide) {
            final PanelItem oldItem = this.mCurrentItem;
            if (this.mCurrentItem != item) {
                return this.mWaitingItems.remove(item);
            }
            this.mCurrentItem = (PanelItem) this.mWaitingItems.poll();
            if (this.mCurrentItem != null) {
                this.mPanelBar.replaceItem(this.mCurrentItem, false);
            } else {
                this.mPanelBar.removeItem(false);
            }
            if (autoHide) {
                HomePageTopBarController.this.closePanelBar(true, new DrawerAnimEndListener() {
                    public void onDrawerAnimEnd(boolean opened) {
                        if (PanelItemManager.this.mCurrentItem != null && oldItem != PanelItemManager.this.mCurrentItem) {
                            HomePageTopBarController.this.showPanelBar(true, null);
                        }
                    }
                });
            } else {
                HomePageTopBarController.this.closePanelBar(false, null);
            }
            return true;
        }

        public boolean hasItem() {
            return this.mCurrentItem != null;
        }
    }

    public HomePageTopBarController(Activity activity, TwoStageDrawer drawer, int panelId) {
        this.mActivity = activity;
        this.mDrawer = drawer;
        this.mDrawer.setDrawerListener(this);
        this.mItemManager = new PanelItemManager((PanelBar) this.mDrawer.findViewById(panelId));
        this.mDrawer.post(new Runnable() {
            public void run() {
                HomePageTopBarController.this.mDrawer.halfOpenDrawer();
            }
        });
        this.mSyncBar = new SyncBar(activity, 0, this.mItemManager);
        this.mDiscoveryBar = new DiscoveryBar(activity, 1, this.mItemManager);
    }

    public void setDiscoveryMessage(ArrayList<DiscoveryMessage> messages) {
        this.mDiscoveryBar.setMessage(messages);
    }

    public void onResume() {
        this.mSyncBar.onResume();
        this.mDiscoveryBar.onResume();
    }

    public void onPause() {
        this.mSyncBar.onPause();
        this.mDiscoveryBar.onPause();
        removeShowPanelBarMessage();
    }

    public void setPermanent(boolean permanent) {
        this.mSyncBar.setPermanent(permanent);
        this.mDiscoveryBar.setPermanent(permanent);
        if (permanent && this.mItemManager.hasItem()) {
            showPanelBar(false, null);
        }
    }

    public void onAppFocused() {
        this.mSyncBar.onAppFocused();
    }

    public void onDestroy() {
        this.mSyncBar.onDestroy();
        this.mDiscoveryBar.onDestroy();
    }

    public void setEnable(boolean enable) {
        this.mItemManager.setItemEnable(enable);
    }

    private void showPanelBar(boolean anim, DrawerAnimEndListener listener) {
        removeShowPanelBarMessage();
        this.mDrawer.openDrawer(anim, listener);
    }

    private void closePanelBar(boolean anim, DrawerAnimEndListener listener) {
        removeShowPanelBarMessage();
        if (this.mDrawer.isDrawerOpen()) {
            this.mDrawer.halfCloseDrawer(anim, listener);
        }
    }

    private boolean isPanelBarOpened() {
        return this.mDrawer.isDrawerOpen();
    }

    private boolean isPanelBarAniming() {
        return this.mDrawer.isAnimating();
    }

    private void delayShowPanelBar(int delayInterval) {
        if (this.mDelayShowBarRunnable == null) {
            this.mDelayShowBarRunnable = new Runnable() {
                public void run() {
                    HomePageTopBarController.this.showPanelBar(true, null);
                }
            };
        }
        removeShowPanelBarMessage();
        ThreadManager.getMainHandler().postDelayed(this.mDelayShowBarRunnable, (long) delayInterval);
    }

    private void removeShowPanelBarMessage() {
        ThreadManager.getMainHandler().removeCallbacks(this.mDelayShowBarRunnable);
    }

    public void onDrawerSlide(TwoStageDrawer drawer, float slideOffset) {
    }

    public void onDrawerOpen(TwoStageDrawer drawer) {
    }

    public void onDrawerHalfOpen(TwoStageDrawer drawer) {
    }

    public void onDrawerClose(TwoStageDrawer drawer) {
    }
}

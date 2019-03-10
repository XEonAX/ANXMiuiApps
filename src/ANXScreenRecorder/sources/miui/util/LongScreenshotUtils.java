package miui.util;

import android.app.Activity;
import android.app.ActivityThread;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Canvas;
import android.graphics.Canvas.EdgeType;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.provider.MiuiSettings.Global;
import android.util.ArrayMap;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.MotionEvent.PointerCoords;
import android.view.MotionEvent.PointerProperties;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.AbsoluteLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import miui.os.Build;

public class LongScreenshotUtils {
    public static final String ACTION_LONG_SCREENSHOT = "com.miui.util.LongScreenshotUtils.LongScreenshot";
    static final int DELAY_FOR_BROADCAST_CALLBACK = 200;
    static final int DELAY_FOR_FINISH = 500;
    public static final String EXTRA_BOTTOM_LOC = "BottomLoc";
    public static final String EXTRA_IS_END = "IsEnd";
    public static final String EXTRA_IS_LONG_SCREENSHOT = "IsLongScreenshot";
    public static final String EXTRA_IS_SCREENSHOT = "IsScreenshot";
    public static final String EXTRA_TOP_LOC = "TopLoc";
    public static final String EXTRA_VIEW_BOTTOM = "ViewBottom";
    public static final String EXTRA_VIEW_TOP = "ViewTop";
    public static final int LONG_SCREENSHOT_CMD_DETECT = 1;
    public static final int LONG_SCREENSHOT_CMD_FINISH = 4;
    public static final int LONG_SCREENSHOT_CMD_START = 2;
    public static final int LONG_SCREENSHOT_CMD_TAKED = 3;
    static final int MAX_HEIGHT_FOR_SCREEN_COUNT = 8;
    private static final String TAG = "LongScreenshotUtils";

    public static class ContentPort {
        private H mHandler = new H();
        private boolean mIsFakeTouchForScroll;
        private boolean mIsFirstMove;
        private int mLastCaptureBottom;
        private View mMainScrollView;
        private int mMainScrollViewTop;
        private int mNavBarHeight;
        private boolean mNeedUseMultiTouch;
        private int mPrevScrolledY;
        private View mPrevScrolledYChildView;
        private Rect mScreenRect = new Rect();
        private int[] mTempLoc = new int[2];
        private PointerCoords[] mTmpPointerCoords = new PointerCoords[2];
        private PointerProperties[] mTmpPointerProperties = new PointerProperties[2];
        private int mTotalScrollDistance;
        private int mTouchY;
        private int mVerticalEdge;
        private boolean mVerticalScrollBarEnabled;

        public class H extends Handler {
            public static final int MSG_BROADCAST_CALLBACK = 3;
            public static final int MSG_FINISH = 4;
            public static final int MSG_SCROLL = 2;
            public static final int MSG_START = 1;

            public H() {
                super(Looper.getMainLooper());
            }

            public void handleMessage(Message msg) {
                switch (msg.what) {
                    case 1:
                        ContentPort.this.start();
                        return;
                    case 2:
                        if (ContentPort.this.mMainScrollView != null) {
                            ContentPort.this.scrollView();
                            sendEmptyMessageDelayed(3, 200);
                            return;
                        }
                        return;
                    case 3:
                        if (ContentPort.this.mMainScrollView != null) {
                            ContentPort.this.broadcastCallback();
                            return;
                        }
                        return;
                    case 4:
                        ContentPort.this.finish();
                        return;
                    default:
                        return;
                }
            }
        }

        public ContentPort() {
            for (int i = 0; i < 2; i++) {
                this.mTmpPointerProperties[i] = new PointerProperties();
                this.mTmpPointerProperties[i].id = i;
                this.mTmpPointerCoords[i] = new PointerCoords();
                this.mTmpPointerCoords[i].pressure = 1.0f;
                this.mTmpPointerCoords[i].size = 1.0f;
            }
        }

        public boolean longScreenshot(int cmd, int navBarHeight) {
            switch (cmd) {
                case 1:
                case 2:
                    this.mNavBarHeight = navBarHeight;
                    View mainScrollView = null;
                    try {
                        mainScrollView = findMainScrollView();
                    } catch (Exception ex) {
                        String str = LongScreenshotUtils.TAG;
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("findMainScrollView exception : ");
                        stringBuilder.append(ex);
                        Log.e(str, stringBuilder.toString());
                    }
                    if (mainScrollView != null) {
                        if (cmd != 1) {
                            this.mMainScrollView = mainScrollView;
                            this.mHandler.sendEmptyMessage(1);
                            break;
                        }
                        return true;
                    }
                    return false;
                case 3:
                    this.mHandler.sendEmptyMessage(2);
                    break;
                case 4:
                    this.mHandler.sendEmptyMessage(4);
                    break;
            }
            return true;
        }

        private void start() {
            this.mTotalScrollDistance = 0;
            this.mVerticalEdge = getScrollViewVisibleHeight() / 5;
            this.mVerticalScrollBarEnabled = this.mMainScrollView.isVerticalScrollBarEnabled();
            this.mIsFakeTouchForScroll = checkNeedFakeTouchForScroll();
            if (this.mIsFakeTouchForScroll) {
                boolean z = !(this.mMainScrollView instanceof AbsListView) && isTencentApp();
                this.mNeedUseMultiTouch = z;
                this.mTouchY = getScrollViewVisibleHeight() - this.mVerticalEdge;
                dispatchFakeTouchEvent(0);
                this.mIsFirstMove = true;
            }
            this.mMainScrollView.setVerticalScrollBarEnabled(false);
            this.mHandler.sendEmptyMessage(2);
        }

        private void finish() {
            if (this.mMainScrollView != null) {
                this.mHandler.removeMessages(2);
                this.mMainScrollView.setVerticalScrollBarEnabled(this.mVerticalScrollBarEnabled);
                if (this.mIsFakeTouchForScroll) {
                    dispatchFakeTouchEvent(1);
                }
                this.mMainScrollView = null;
                this.mPrevScrolledYChildView = null;
                this.mLastCaptureBottom = 0;
            }
        }

        private void dispatchFakeTouchEvent(int action) {
            this.mTmpPointerProperties[0].id = 0;
            this.mTmpPointerCoords[0].x = (float) (this.mMainScrollView.getWidth() / 2);
            this.mTmpPointerCoords[0].y = (float) this.mTouchY;
            MotionEvent event = MotionEvent.obtain(System.currentTimeMillis(), System.currentTimeMillis(), action, 1, this.mTmpPointerProperties, this.mTmpPointerCoords, 0, 0, 1.0f, 1.0f, 0, 0, 0, 0);
            this.mMainScrollView.dispatchTouchEvent(event);
            event.recycle();
        }

        private void dispatchMoveAndReset(int distance) {
            if (this.mIsFirstMove) {
                this.mTouchY -= distance;
                dispatchFakeTouchEvent(2);
                this.mIsFirstMove = false;
                return;
            }
            dispatchFakeTouchEvent(1);
            this.mTouchY = getScrollViewVisibleHeight() - this.mVerticalEdge;
            dispatchFakeTouchEvent(0);
            this.mTouchY -= distance;
            dispatchFakeTouchEvent(2);
        }

        private void broadcastCallback() {
            int scrolledY;
            int moveRectBottomLocBottom;
            int moveRectBottomLocTop;
            boolean isEnd = !this.mMainScrollView.canScrollVertically(1) || this.mTotalScrollDistance >= this.mScreenRect.height() * 8;
            if (this.mPrevScrolledYChildView != null) {
                this.mMainScrollView.getLocationOnScreen(this.mTempLoc);
                scrolledY = (this.mPrevScrolledY - this.mPrevScrolledYChildView.getTop()) - this.mTempLoc[1];
            } else {
                this.mMainScrollView.getLocationOnScreen(this.mTempLoc);
                scrolledY = (this.mMainScrollView.getScrollY() - this.mTempLoc[1]) - this.mPrevScrolledY;
            }
            int scrolledY2 = scrolledY;
            this.mTotalScrollDistance += scrolledY2;
            calculateScrollViewTop();
            scrolledY = this.mMainScrollViewTop + getScrollViewVisibleHeight();
            if (this.mLastCaptureBottom == 0) {
                moveRectBottomLocBottom = scrolledY - this.mVerticalEdge;
                moveRectBottomLocTop = moveRectBottomLocBottom - scrolledY2;
                this.mLastCaptureBottom = moveRectBottomLocBottom;
            } else {
                moveRectBottomLocTop = this.mLastCaptureBottom - scrolledY2;
                moveRectBottomLocBottom = scrolledY - this.mVerticalEdge;
                if (moveRectBottomLocBottom <= moveRectBottomLocTop) {
                    moveRectBottomLocBottom = scrolledY;
                }
                this.mLastCaptureBottom = moveRectBottomLocBottom;
            }
            Intent intent = new Intent(LongScreenshotUtils.ACTION_LONG_SCREENSHOT);
            intent.putExtra(LongScreenshotUtils.EXTRA_IS_END, isEnd);
            intent.putExtra(LongScreenshotUtils.EXTRA_TOP_LOC, moveRectBottomLocTop);
            intent.putExtra(LongScreenshotUtils.EXTRA_BOTTOM_LOC, moveRectBottomLocBottom);
            intent.putExtra(LongScreenshotUtils.EXTRA_VIEW_TOP, this.mMainScrollViewTop);
            intent.putExtra(LongScreenshotUtils.EXTRA_VIEW_BOTTOM, this.mMainScrollViewTop + getScrollViewVisibleHeight());
            this.mMainScrollView.getContext().sendBroadcast(intent);
            if (isEnd) {
                this.mHandler.sendEmptyMessageDelayed(4, 500);
            }
        }

        private boolean checkIsMayHasBg() {
            String pkgName = this.mMainScrollView.getContext().getPackageName();
            String mainClsName = this.mMainScrollView.getClass().getName();
            return ("com.miui.notes".equalsIgnoreCase(pkgName) && mainClsName.equals("com.miui.notes.editor.RichEditView$RichEditScrollView")) || (("com.tencent.mobileqq".equalsIgnoreCase(pkgName) && mainClsName.equals("com.tencent.mobileqq.bubble.ChatXListView")) || ("com.tencent.mm".equalsIgnoreCase(pkgName) && (this.mMainScrollView instanceof ListView)));
        }

        private boolean checkNeedFakeTouchForScroll() {
            if ((this.mMainScrollView instanceof ScrollView) || isRecyclerView(this.mMainScrollView.getClass()) || isNestedScrollView(this.mMainScrollView.getClass())) {
                return false;
            }
            if ((this.mMainScrollView instanceof AbsoluteLayout) && (VERSION.SDK_INT <= 19 || "com.ucmobile".equalsIgnoreCase(this.mMainScrollView.getContext().getPackageName()) || "com.eg.android.AlipayGphone".equalsIgnoreCase(this.mMainScrollView.getContext().getPackageName()))) {
                return false;
            }
            return true;
        }

        private static Activity getTopActivity() {
            ActivityThread activityThread = ActivityThread.currentActivityThread();
            try {
                Field field = ActivityThread.class.getDeclaredField("mActivities");
                field.setAccessible(true);
                ArrayMap map = (ArrayMap) field.get(activityThread);
                for (int i = 0; i < map.size(); i++) {
                    Object activityClientRecord = map.valueAt(i);
                    Field activityField = activityClientRecord.getClass().getDeclaredField("activity");
                    activityField.setAccessible(true);
                    Activity activity = (Activity) activityField.get(activityClientRecord);
                    if (activity.isResumed()) {
                        return activity;
                    }
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            return null;
        }

        private View findMainScrollView() {
            Activity activity = getTopActivity();
            if (activity != null) {
                boolean forceImmersive = Global.getBoolean(activity.getContentResolver(), "force_fsg_nav_bar");
                WindowManager wm = (WindowManager) activity.getSystemService("window");
                DisplayMetrics dm = new DisplayMetrics();
                Display display = wm.getDefaultDisplay();
                display.getRealMetrics(dm);
                boolean isPortrait = false;
                if (forceImmersive) {
                    this.mScreenRect.set(0, 0, dm.widthPixels, dm.heightPixels);
                } else {
                    this.mScreenRect.set(0, 0, dm.widthPixels, dm.heightPixels);
                    int degree = display.getRotation();
                    if (degree == 0 || degree == 2) {
                        isPortrait = true;
                    }
                    Rect rect;
                    if (Build.IS_TABLET) {
                        rect = this.mScreenRect;
                        rect.bottom -= this.mNavBarHeight;
                    } else if (isPortrait) {
                        rect = this.mScreenRect;
                        rect.bottom -= this.mNavBarHeight;
                    } else {
                        rect = this.mScreenRect;
                        rect.right -= this.mNavBarHeight;
                    }
                }
                View scrollView = findScrollView(activity.getWindow().getDecorView());
                if (scrollView != null && scrollView.canScrollVertically(1)) {
                    return scrollView;
                }
                return null;
            }
            String str = LongScreenshotUtils.TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Get top activity in ");
            stringBuilder.append(Process.myPid());
            stringBuilder.append(" failed.");
            Log.w(str, stringBuilder.toString());
            return null;
        }

        private View findScrollView(View currView) {
            if (currView == null || currView.getVisibility() != 0) {
                return null;
            }
            if (currView instanceof ViewGroup) {
                ViewGroup group = (ViewGroup) currView;
                for (int i = group.getChildCount() - 1; i >= 0; i--) {
                    View result = findScrollView(group.getChildAt(i));
                    if (result != null) {
                        return result;
                    }
                }
            }
            if (checkIsMainScrollView(currView)) {
                return currView;
            }
            return null;
        }

        private boolean isKnownScrollableView(View view) {
            if ((view instanceof AbsListView) || (view instanceof ListView) || (view instanceof ScrollView) || isRecyclerView(view.getClass()) || isNestedScrollView(view.getClass())) {
                return true;
            }
            return false;
        }

        private boolean checkIsMainScrollView(View currView) {
            try {
                if (!isKnownScrollableView(currView) && !currView.canScrollVertically(1)) {
                    return false;
                }
                int minWidth = this.mScreenRect.width() / 3;
                int halfScreenHeight = this.mScreenRect.height() / 2;
                if (currView.getWidth() < minWidth || currView.getHeight() < halfScreenHeight) {
                    return false;
                }
                currView.getLocationOnScreen(this.mTempLoc);
                Rect rect = new Rect(this.mScreenRect);
                if (!rect.intersect(this.mTempLoc[0], this.mTempLoc[1], this.mTempLoc[0] + currView.getWidth(), this.mTempLoc[1] + currView.getHeight()) || rect.width() < minWidth || rect.height() < halfScreenHeight) {
                    return false;
                }
                this.mMainScrollViewTop = this.mTempLoc[1];
                this.mMainScrollViewTop = findVisibleTop(currView, this.mMainScrollViewTop);
                return true;
            } catch (Exception ex) {
                Log.w(LongScreenshotUtils.TAG, "", ex);
                return false;
            }
        }

        private static int findVisibleTop(View view, int absTop) {
            View view2 = view;
            int offset = 0;
            while (true) {
                offset += view2.getTop();
                if (!(view2.getParent() instanceof View)) {
                    break;
                }
                view2 = (View) view2.getParent();
            }
            if (offset < 0) {
                absTop -= offset;
            }
            return Math.max(absTop, 0);
        }

        private void scrollView() {
            if (this.mMainScrollView.canScrollVertically(1)) {
                scrollY(this.mMainScrollView, getExpectScrollDistance());
            }
        }

        private int getExpectScrollDistance() {
            return (getScrollViewVisibleHeight() - (this.mVerticalEdge * 2)) / 2;
        }

        private boolean isTencentApp() {
            return this.mMainScrollView.getContext().getPackageName().startsWith("com.tencent.");
        }

        private boolean isNestedScrollView(Class cls) {
            if ("android.support.v4.widget.NestedScrollView".equals(cls.getName())) {
                return true;
            }
            if (cls.equals(Object.class)) {
                return false;
            }
            return isNestedScrollView(cls.getSuperclass());
        }

        private boolean isRecyclerView(Class cls) {
            if ("android.support.v7.widget.RecyclerView".equals(cls.getName())) {
                return true;
            }
            if (cls.equals(Object.class)) {
                return false;
            }
            return isRecyclerView(cls.getSuperclass());
        }

        private void scrollY(View view, int distance) {
            if (!(view instanceof ViewGroup) || (view instanceof ScrollView) || isNestedScrollView(view.getClass()) || (view instanceof WebView) || (view instanceof AbsoluteLayout) || ((ViewGroup) view).getChildCount() <= 0) {
                this.mPrevScrolledYChildView = null;
                view.getLocationOnScreen(this.mTempLoc);
                this.mPrevScrolledY = view.getScrollY() - this.mTempLoc[1];
            } else {
                view.getLocationOnScreen(this.mTempLoc);
                ViewGroup viewGroup = (ViewGroup) view;
                this.mPrevScrolledYChildView = viewGroup.getChildAt(viewGroup.getChildCount() - 1);
                this.mPrevScrolledY = this.mPrevScrolledYChildView.getTop() + this.mTempLoc[1];
            }
            if (this.mIsFakeTouchForScroll) {
                if (this.mNeedUseMultiTouch) {
                    dispatchMoveAndReset(distance);
                    return;
                }
                this.mTouchY -= distance;
                dispatchFakeTouchEvent(2);
            } else if (view instanceof AbsListView) {
                ((AbsListView) view).scrollListBy(distance);
            } else {
                view.scrollBy(0, distance);
            }
        }

        private int getScrollViewVisibleHeight() {
            int height = this.mMainScrollView.getHeight();
            if (this.mMainScrollViewTop + height <= this.mScreenRect.height()) {
                return height;
            }
            return this.mScreenRect.height() - this.mMainScrollViewTop;
        }

        private void calculateScrollViewTop() {
            this.mMainScrollView.getLocationOnScreen(this.mTempLoc);
            this.mMainScrollViewTop = this.mTempLoc[1];
            this.mMainScrollViewTop = findVisibleTop(this.mMainScrollView, this.mMainScrollViewTop);
        }
    }

    public static class LongBitmapDrawable extends Drawable {
        static final int MAX_PART_HEIGHT = 1024;
        private Bitmap[] mBitmaps;
        private Paint mPaint;

        public LongBitmapDrawable(String file) {
            this.mBitmaps = new Bitmap[0];
            this.mPaint = new Paint(3);
            ArrayList<Bitmap> list = new ArrayList();
            try {
                BitmapRegionDecoder decoder = BitmapRegionDecoder.newInstance(file, false);
                Rect rect = new Rect(0, 0, decoder.getWidth(), Math.min(decoder.getHeight(), 1024));
                int restHeight = decoder.getHeight();
                while (restHeight > 0) {
                    list.add(decoder.decodeRegion(rect, null));
                    rect.offset(0, rect.height());
                    restHeight -= rect.height();
                    if (restHeight < 0) {
                        rect.set(rect.left, rect.top, rect.right, rect.bottom + restHeight);
                    }
                }
                decoder.recycle();
                this.mBitmaps = (Bitmap[]) list.toArray(new Bitmap[list.size()]);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        public LongBitmapDrawable(Bitmap longBitmap) {
            this.mBitmaps = new Bitmap[0];
            this.mPaint = new Paint(3);
            if (longBitmap != null) {
                ArrayList<Bitmap> list = new ArrayList();
                int width = longBitmap.getWidth();
                int restHeight = longBitmap.getHeight();
                Paint paint = new Paint(4);
                while (restHeight > 0) {
                    int currY = longBitmap.getHeight() - restHeight;
                    int currBmpHeight = Math.min(restHeight, 1024);
                    Bitmap currBmp = Bitmap.createBitmap(width, currBmpHeight, longBitmap.getConfig());
                    new Canvas(currBmp).drawBitmap(longBitmap, 0.0f, (float) (-currY), paint);
                    list.add(currBmp);
                    restHeight -= currBmpHeight;
                }
                this.mBitmaps = (Bitmap[]) list.toArray(new Bitmap[list.size()]);
            }
        }

        public LongBitmapDrawable(Bitmap[] bitmaps) {
            this.mBitmaps = new Bitmap[0];
            this.mPaint = new Paint(3);
            this.mBitmaps = bitmaps;
        }

        public void draw(Canvas canvas) {
            canvas.save();
            Rect bounds = getBounds();
            if (bounds != null) {
                canvas.translate((float) bounds.left, (float) bounds.top);
            }
            for (Bitmap bmp : this.mBitmaps) {
                if (!canvas.quickReject(0.0f, 0.0f, (float) bmp.getWidth(), (float) bmp.getHeight(), EdgeType.BW)) {
                    canvas.drawBitmap(bmp, 0.0f, 0.0f, this.mPaint);
                }
                canvas.translate(0.0f, (float) bmp.getHeight());
            }
            canvas.restore();
        }

        public int getIntrinsicWidth() {
            if (this.mBitmaps == null || this.mBitmaps.length == 0) {
                return 0;
            }
            return this.mBitmaps[0].getWidth();
        }

        public int getIntrinsicHeight() {
            int i = 0;
            if (this.mBitmaps == null || this.mBitmaps.length == 0) {
                return 0;
            }
            int totalHeight = 0;
            while (i < this.mBitmaps.length) {
                totalHeight += this.mBitmaps[i].getHeight();
                i++;
            }
            return totalHeight;
        }

        public void setAlpha(int alpha) {
            this.mPaint.setAlpha(alpha);
        }

        public void setColorFilter(ColorFilter colorFilter) {
        }

        public int getOpacity() {
            return 0;
        }

        public Bitmap[] getBitmaps() {
            return this.mBitmaps;
        }
    }
}

package com.miui.gallery.ui;

import android.app.Fragment;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.cloudcontrol.strategies.ComponentsStrategy.Priority;
import com.miui.gallery.threadpool.PriorityThreadFactory;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.Numbers;
import com.miui.gallery.util.ShareComponentSorter;
import com.miui.gallery.util.ShareComponentSorter.OnInitializedListener;
import com.miui.gallery.widget.CircleImageView;
import com.miui.gallery.widget.PagerAdapter;
import com.miui.gallery.widget.ViewPager;
import com.miui.gallery.widget.ViewPager.OnPageChangeListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import miui.cloud.backup.data.KeyStringSettingItem;

public class ChooserFragment extends Fragment implements OnPageChangeListener {
    private ResolverAdapter mAdapter;
    private OnIntentSelectedListener mListener;
    private PagerPoint mPoint;
    private OnInitializedListener mSorterInitializedListener;
    private ViewPager mViewPager;

    public interface OnIntentSelectedListener {
        void onIntentSelected(Intent intent);
    }

    private static class Component {
        String mClassName;
        int mHashCode;
        String mPackageName;

        Component(ResolveInfo info) {
            init(info.activityInfo.packageName, info.activityInfo.name);
        }

        Component wrap(ResolveInfo info) {
            init(info.activityInfo.packageName, info.activityInfo.name);
            return this;
        }

        private void init(String packageName, String className) {
            this.mPackageName = packageName;
            this.mClassName = className;
            this.mHashCode = (this.mPackageName + this.mClassName).hashCode();
        }

        public int hashCode() {
            return this.mHashCode;
        }

        public boolean equals(Object o) {
            return (o instanceof Component) && this.mPackageName.equals(((Component) o).mPackageName) && this.mClassName.equals(((Component) o).mClassName);
        }
    }

    private static class PagerPoint {
        private Drawable mActiveDrawable;
        private int mActivePoint = 0;
        private Drawable mNormalDrawable;
        private LinearLayout mPointLayout;
        private int mPointMargin;

        PagerPoint(LinearLayout layout, Drawable normal, Drawable active) {
            this.mPointLayout = layout;
            this.mPointMargin = layout.getContext().getResources().getDimensionPixelOffset(R.dimen.pager_point_margin);
            this.mNormalDrawable = normal;
            this.mActiveDrawable = active;
        }

        public void notifyPointCountChanged(int count, int current) {
            this.mPointLayout.removeAllViews();
            int i = 0;
            while (i < count) {
                ImageView point = generatorPoint();
                setImageDrawable(point, current == i ? this.mActiveDrawable : this.mNormalDrawable);
                this.mPointLayout.addView(point, i);
                i++;
            }
            this.mActivePoint = current;
        }

        public void notifyActivePointChanged(int activePoint) {
            int childCount = this.mPointLayout.getChildCount();
            if (activePoint > -1 && activePoint < childCount) {
                setImageDrawable((ImageView) this.mPointLayout.getChildAt(this.mActivePoint), this.mNormalDrawable);
                setImageDrawable((ImageView) this.mPointLayout.getChildAt(activePoint), this.mActiveDrawable);
                this.mActivePoint = activePoint;
            }
        }

        private void setImageDrawable(ImageView image, Drawable drawable) {
            if (image != null) {
                image.setImageDrawable(drawable);
            }
        }

        private ImageView generatorPoint() {
            ImageView view = new ImageView(this.mPointLayout.getContext());
            LayoutParams lp = new LayoutParams(-2, -2);
            lp.leftMargin = this.mPointMargin;
            lp.rightMargin = this.mPointMargin;
            view.setLayoutParams(lp);
            return view;
        }
    }

    private static class PriorityComparator implements Comparator<ResolveInfo> {
        private Comparator<ResolveInfo> mNormal;
        private HashMap<Component, Integer> mPriority;
        private Component mTemp;

        private PriorityComparator() {
            this.mPriority = new HashMap();
            this.mTemp = new Component();
        }

        /* synthetic */ PriorityComparator(AnonymousClass1 x0) {
            this();
        }

        public int compare(ResolveInfo lhs, ResolveInfo rhs) {
            int raw = this.mNormal.compare(lhs, rhs);
            if (raw != 0) {
                return raw;
            }
            int lPriority = Numbers.unbox((Integer) this.mPriority.get(this.mTemp.wrap(lhs)), 0);
            int rPriority = Numbers.unbox((Integer) this.mPriority.get(this.mTemp.wrap(rhs)), 0);
            int i = lPriority < rPriority ? 1 : lPriority == rPriority ? 0 : -1;
            return i;
        }

        void build(List<Priority> priorityList, List<ResolveInfo> infoList) {
            Log.d("ChooserFragment", "build priority: %s", (Object) priorityList);
            for (ResolveInfo info : infoList) {
                this.mTemp.wrap(info);
                if (this.mPriority.get(this.mTemp) == null) {
                    int value = 0;
                    for (Priority priority : priorityList) {
                        if (priority.match(info.activityInfo.packageName, info.activityInfo.name, (info.activityInfo.applicationInfo.flags & 1) != 0)) {
                            value = priority.value;
                            break;
                        }
                    }
                    this.mPriority.put(new Component(info), Integer.valueOf(value));
                    Log.d("ChooserFragment", "assign priority of %s, %s by %d", this.mTemp.mPackageName, this.mTemp.mClassName, Integer.valueOf(value));
                }
            }
            Log.d("ChooserFragment", "build finish");
        }
    }

    private static class ResolverAdapter extends PagerAdapter {
        private LinkedList<WeakReference<View>> mCachedViews = new LinkedList();
        private Context mContext;
        private List<DisplayResolvedInfo> mData = new ArrayList();
        private boolean mIsCrop;
        private OnIntentSelectedListener mListener;
        private ResolveInfoLoader mLoader;
        private PackageManager mPm;
        private PriorityComparator mPriorityComparator = new PriorityComparator();
        private boolean mResumed = false;
        private Intent mTarIntent;
        private int mTheme;

        private class CellHolder implements OnClickListener {
            public ImageView mIcon;
            public DisplayResolvedInfo mInfo;
            public TextView mText;

            private CellHolder() {
            }

            /* synthetic */ CellHolder(ResolverAdapter x0, AnonymousClass1 x1) {
                this();
            }

            public void onClick(View v) {
                ShareComponentSorter.getInstance().touch(this.mInfo.mResolveInfo.activityInfo.packageName, this.mInfo.mResolveInfo.activityInfo.name);
                if (ResolverAdapter.this.mListener != null) {
                    ResolverAdapter.this.mListener.onIntentSelected(new Intent(this.mInfo.getResolvedIntent()));
                }
                ShareComponentSorter.getInstance().save();
            }

            public boolean needRefresh(DisplayResolvedInfo info) {
                return !info.equals(this.mInfo) || this.mIcon.getDrawable() == null;
            }
        }

        private class DisplayResolvedInfo {
            private ResolveInfo mResolveInfo;
            private Intent mResolvedIntent;

            public DisplayResolvedInfo(Intent originalIntent, ResolveInfo resolveInfo) {
                this.mResolveInfo = resolveInfo;
                this.mResolvedIntent = new Intent(originalIntent);
                ActivityInfo ai = this.mResolveInfo.activityInfo;
                this.mResolvedIntent.setComponent(new ComponentName(ai.applicationInfo.packageName, ai.name));
            }

            public Intent getResolvedIntent() {
                return this.mResolvedIntent;
            }

            public ResolveInfo getResolveInfo() {
                return this.mResolveInfo;
            }

            public boolean equals(Object o) {
                if (o == null || !(o instanceof DisplayResolvedInfo)) {
                    return false;
                }
                return ResolverAdapter.isSameResolvedComponent(getResolveInfo(), ((DisplayResolvedInfo) o).getResolveInfo());
            }

            public int hashCode() {
                return (this.mResolveInfo.activityInfo.packageName + this.mResolveInfo.activityInfo.name).hashCode();
            }
        }

        private static class ResolveInfoLoader {
            private Map<Integer, String> mCacheKey = Collections.synchronizedMap(new HashMap());
            private Map<String, LoadResult> mCacheResult = new HashMap();
            private ThreadPoolExecutor mExecutor = new ThreadPoolExecutor(1, 2, 1, TimeUnit.SECONDS, new LinkedBlockingQueue(), new PriorityThreadFactory("thread-pool", 10));

            private class IconResult {
                final Drawable drawable;
                final boolean isCustomIcon;

                public IconResult(Drawable drawable, boolean isCustomIcon) {
                    this.drawable = drawable;
                    this.isCustomIcon = isCustomIcon;
                }
            }

            private static class LoadResult {
                final Drawable mIcon;
                final boolean mIsCustomIcon;
                final CharSequence mLabel;
                LoadingInfo mLoadingInfo;

                public LoadResult(Drawable icon, CharSequence label, boolean isCustomIcon) {
                    this.mIcon = icon;
                    this.mLabel = label;
                    this.mIsCustomIcon = isCustomIcon;
                }

                LoadResult setLoadingInfo(LoadingInfo info) {
                    this.mLoadingInfo = info;
                    return this;
                }
            }

            private class LoadTask extends AsyncTask<LoadingInfo, Void, LoadResult> {
                private WeakReference<Context> mContextRef;

                LoadTask(Context context) {
                    this.mContextRef = new WeakReference(context);
                }

                protected LoadResult doInBackground(LoadingInfo... params) {
                    LoadingInfo loadingInfo = params[0];
                    if (loadingInfo == null) {
                        return null;
                    }
                    IconResult icon = loadIcon(loadingInfo);
                    return new LoadResult(icon.drawable, loadLabel(loadingInfo.mResolve), icon.isCustomIcon).setLoadingInfo(loadingInfo);
                }

                protected void onPostExecute(LoadResult loadResult) {
                    ResolveInfoLoader.this.setResult(loadResult);
                }

                private IconResult loadIcon(LoadingInfo info) {
                    Drawable dr = null;
                    boolean isCustomIcon = true;
                    try {
                        ResolveInfo ri = info.mResolve;
                        Context context = (Context) this.mContextRef.get();
                        if (context != null) {
                            if (info.mUseCustomIcon) {
                                String className = ri.activityInfo.name;
                                String packageName = ri.activityInfo.packageName;
                                Resources resources = context.getResources();
                                if (TextUtils.equals(className, "com.tencent.mm.ui.tools.ShareImgUI")) {
                                    dr = resources.getDrawable(R.drawable.ic_share_wechat);
                                } else if (TextUtils.equals(className, "com.tencent.mm.ui.tools.ShareToTimeLineUI")) {
                                    dr = resources.getDrawable(R.drawable.ic_share_wechat_moments);
                                } else if (TextUtils.equals(className, "com.tencent.mobileqq.activity.JumpActivity") && TextUtils.equals(packageName, "com.tencent.mobileqq")) {
                                    dr = resources.getDrawable(R.drawable.ic_share_qq);
                                } else if (TextUtils.equals(className, "com.sina.weibo.composerinde.ComposerDispatchActivity")) {
                                    dr = resources.getDrawable(R.drawable.ic_share_weibo);
                                } else if (TextUtils.equals(packageName, "com.qzone")) {
                                    dr = resources.getDrawable(R.drawable.ic_share_qzone);
                                }
                            }
                            if (dr == null) {
                                isCustomIcon = false;
                                dr = ri.loadIcon(context.getPackageManager());
                            }
                        }
                    } catch (Throwable e) {
                        Log.e("ChooserFragment", e);
                    }
                    return new IconResult(dr, isCustomIcon);
                }

                private CharSequence loadLabel(ResolveInfo ri) {
                    Context context = (Context) this.mContextRef.get();
                    if (context == null) {
                        return null;
                    }
                    try {
                        Resources res = context.getResources();
                        int id = res.getIdentifier(ri.activityInfo.packageName + "_" + ri.activityInfo.name, KeyStringSettingItem.TYPE, context.getPackageName());
                        if (id != 0) {
                            return res.getString(id);
                        }
                    } catch (Exception e) {
                    }
                    return ri.loadLabel(context.getPackageManager());
                }
            }

            private static class LoadingInfo {
                final WeakReference<ImageView> mIcon;
                final WeakReference<TextView> mLabel;
                final ResolveInfo mResolve;
                final boolean mUseCustomIcon;

                public LoadingInfo(ImageView icon, TextView label, ResolveInfo info, boolean useCustomIcon) {
                    this.mIcon = new WeakReference(icon);
                    this.mLabel = new WeakReference(label);
                    this.mResolve = info;
                    this.mUseCustomIcon = useCustomIcon;
                }

                public int getViewId() {
                    ImageView icon = getIconView();
                    return icon != null ? icon.hashCode() : 0;
                }

                public ImageView getIconView() {
                    return this.mIcon != null ? (ImageView) this.mIcon.get() : null;
                }

                public TextView getLabelView() {
                    return this.mLabel != null ? (TextView) this.mLabel.get() : null;
                }
            }

            public void release() {
                try {
                    this.mCacheKey.clear();
                    this.mCacheResult.clear();
                    this.mExecutor.shutdownNow();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            public void loadInfo(Context context, ImageView icon, TextView label, ResolveInfo info, boolean useCustomIcon) {
                if (info != null) {
                    String key = generateKey(info);
                    LoadingInfo loadingInfo = new LoadingInfo(icon, label, info, useCustomIcon);
                    this.mCacheKey.put(Integer.valueOf(loadingInfo.getViewId()), key);
                    LoadResult result = (LoadResult) this.mCacheResult.get(key);
                    if (result != null) {
                        result.setLoadingInfo(loadingInfo);
                        setResult(result);
                        Log.d("ChooserFragment", "load from cache");
                        return;
                    }
                    Log.d("ChooserFragment", "load from file");
                    submit(context, loadingInfo);
                }
            }

            private void submit(Context context, LoadingInfo info) {
                new LoadTask(context).executeOnExecutor(this.mExecutor, new LoadingInfo[]{info});
            }

            private void setResult(LoadResult result) {
                if (needApplyResult(result)) {
                    ImageView iconView = result.mLoadingInfo.getIconView();
                    if (iconView != null) {
                        if (iconView instanceof CircleImageView) {
                            ((CircleImageView) iconView).setDrawableInset(result.mIsCustomIcon ? 0 : -10, false);
                        }
                        iconView.setImageDrawable(result.mIcon);
                    }
                    TextView labelView = result.mLoadingInfo.getLabelView();
                    if (labelView != null) {
                        labelView.setText(result.mLabel);
                    }
                    this.mCacheKey.remove(generateKey(result.mLoadingInfo.mResolve));
                }
            }

            private boolean needApplyResult(LoadResult result) {
                if (result == null || result.mLoadingInfo == null) {
                    return false;
                }
                this.mCacheResult.put(generateKey(result.mLoadingInfo.mResolve), result);
                return TextUtils.equals(generateKey(result.mLoadingInfo.mResolve), (CharSequence) this.mCacheKey.get(Integer.valueOf(result.mLoadingInfo.getViewId())));
            }

            private static String generateKey(ResolveInfo info) {
                StringBuilder builder = new StringBuilder();
                if (info != null) {
                    builder.append(info.activityInfo.packageName).append("#").append(info.activityInfo.name);
                }
                return builder.toString();
            }
        }

        ResolverAdapter(Context context, Intent tarIntent, int theme, boolean isCrop, boolean resumed) {
            this.mContext = context;
            this.mPm = context.getPackageManager();
            this.mTarIntent = tarIntent;
            this.mTheme = theme;
            this.mIsCrop = isCrop;
            this.mLoader = new ResolveInfoLoader();
            reBuildList();
            this.mResumed = resumed;
        }

        public void resume() {
            if (!this.mResumed) {
                this.mResumed = true;
                notifyDataSetChanged();
            }
        }

        public void pause() {
            this.mResumed = false;
        }

        public void release() {
            this.mLoader.release();
            this.mListener = null;
        }

        public void setOnIntentSelectedListener(OnIntentSelectedListener listener) {
            this.mListener = listener;
        }

        public boolean requery(Intent intent) {
            if (intent == null || intent.filterEquals(this.mTarIntent)) {
                return false;
            }
            this.mTarIntent = intent;
            reBuildList();
            notifyDataSetChanged();
            return true;
        }

        private void reBuildList() {
            this.mData.clear();
            long start = System.currentTimeMillis();
            List<ResolveInfo> infos = this.mPm.queryIntentActivities(this.mTarIntent, 65536);
            if (infos != null) {
                filterResolveInfoList(infos);
                List<ResolveInfo> currentResolveList = new LinkedList();
                addResolveListDedupe(currentResolveList, infos);
                int N = currentResolveList.size();
                if (N > 0) {
                    int i;
                    ResolveInfo r0 = (ResolveInfo) currentResolveList.get(0);
                    for (i = 1; i < N; i++) {
                        ResolveInfo ri = (ResolveInfo) currentResolveList.get(i);
                        if (r0.priority != ri.priority || r0.isDefault != ri.isDefault) {
                            while (i < N) {
                                currentResolveList.remove(i);
                                N--;
                            }
                        }
                    }
                    long start1 = System.currentTimeMillis();
                    Comparator<ResolveInfo> comparator = ShareComponentSorter.getInstance().createComparator();
                    this.mPriorityComparator.build(CloudControlStrategyHelper.getComponentPriority(), currentResolveList);
                    this.mPriorityComparator.mNormal = comparator;
                    Collections.sort(currentResolveList, this.mPriorityComparator);
                    sortResolveList(currentResolveList);
                    Log.i("ChooserFragment", "sortResolveList cost %d", Long.valueOf(System.currentTimeMillis() - start1));
                    for (i = 0; i < N; i++) {
                        this.mData.add(new DisplayResolvedInfo(this.mTarIntent, (ResolveInfo) currentResolveList.get(i)));
                    }
                }
            }
            Log.i("ChooserFragment", "reBuildList cost %d", Long.valueOf(System.currentTimeMillis() - start));
        }

        private void filterResolveInfoList(List<ResolveInfo> resolveInfoList) {
            if (resolveInfoList != null) {
                int i = 0;
                while (i < resolveInfoList.size()) {
                    ResolveInfo resolveInfo = (ResolveInfo) resolveInfoList.get(i);
                    if (resolveInfo.activityInfo.exported) {
                        String permission = resolveInfo.activityInfo.permission;
                        if (!(TextUtils.isEmpty(permission) || this.mContext.checkPermission(permission, Process.myPid(), Process.myUid()) == 0)) {
                            resolveInfoList.remove(i);
                            i--;
                        }
                    } else {
                        resolveInfoList.remove(i);
                        i--;
                    }
                    i++;
                }
            }
        }

        private void sortResolveList(List<ResolveInfo> list) {
            List<com.miui.gallery.cloudcontrol.strategies.ComponentsStrategy.Component> ordered = CloudControlStrategyHelper.getShareComponents();
            List<ResolveInfo> temp = new LinkedList();
            for (com.miui.gallery.cloudcontrol.strategies.ComponentsStrategy.Component component : ordered) {
                ResolveInfo info = contains(component, list);
                if (info != null) {
                    temp.add(info);
                    list.remove(info);
                }
            }
            temp.addAll(list);
            list.clear();
            list.addAll(temp);
        }

        private ResolveInfo contains(com.miui.gallery.cloudcontrol.strategies.ComponentsStrategy.Component item, List<ResolveInfo> list) {
            ResolveInfo mostClosely = null;
            ListIterator<ResolveInfo> iterator = list.listIterator();
            while (iterator.hasNext()) {
                ResolveInfo resolveInfo = (ResolveInfo) iterator.next();
                if (TextUtils.equals(resolveInfo.activityInfo.packageName, item.getPackageName())) {
                    mostClosely = resolveInfo;
                    if (TextUtils.equals(resolveInfo.activityInfo.name, item.getClassName())) {
                        return resolveInfo;
                    }
                }
            }
            return mostClosely;
        }

        private static boolean isSameResolvedComponent(ResolveInfo a, ResolveInfo b) {
            return TextUtils.equals(a.activityInfo.packageName, b.activityInfo.packageName) && TextUtils.equals(a.activityInfo.name, b.activityInfo.name);
        }

        private void addResolveListDedupe(List<ResolveInfo> into, List<ResolveInfo> from) {
            int fromCount = from.size();
            int intoCount = into.size();
            for (int i = 0; i < fromCount; i++) {
                ResolveInfo newInfo = (ResolveInfo) from.get(i);
                boolean found = false;
                for (int j = 0; j < intoCount; j++) {
                    if (isSameResolvedComponent(newInfo, (ResolveInfo) into.get(i))) {
                        found = true;
                        break;
                    }
                }
                if (!found) {
                    into.add(newInfo);
                }
            }
        }

        private View generatorChooserItem(ViewGroup container) {
            while (!this.mCachedViews.isEmpty()) {
                View view;
                WeakReference<View> ref = (WeakReference) this.mCachedViews.remove();
                if (ref != null) {
                    view = (View) ref.get();
                    continue;
                } else {
                    view = null;
                    continue;
                }
                if (view != null) {
                    return view;
                }
            }
            LayoutInflater inflater = LayoutInflater.from(container.getContext());
            View item = (ViewGroup) inflater.inflate(R.layout.chooser_item, container, false);
            for (int i = 0; i < 5; i++) {
                int imageRes;
                View cell = inflater.inflate(R.layout.chooser_item_cell, item, false);
                ViewGroup imageContainer = (ViewGroup) cell.findViewById(R.id.image_container);
                TextView textView = (TextView) cell.findViewById(R.id.chooser_text);
                if (this.mTheme == 0) {
                    if (this.mIsCrop) {
                        imageRes = R.layout.chooser_item_cell_imageview_crop_light;
                    } else {
                        imageRes = R.layout.chooser_item_cell_imageview;
                    }
                    textView.setTextAppearance(this.mContext, R.style.f61Gallery.TextAppearance.IconDesc.Light);
                } else {
                    if (this.mIsCrop) {
                        imageRes = R.layout.chooser_item_cell_imageview_crop_dark;
                    } else {
                        imageRes = R.layout.chooser_item_cell_imageview;
                    }
                    textView.setTextAppearance(this.mContext, R.style.f60Gallery.TextAppearance.IconDesc.Dark);
                }
                inflater.inflate(imageRes, imageContainer);
                item.addView(cell);
            }
            return item;
        }

        public Object instantiateItem(ViewGroup container, int position) {
            View item = generatorChooserItem(container);
            refreshItem(item, position);
            container.addView(item);
            return item;
        }

        private int conversePos(int itemPos, int cellIndex) {
            return (itemPos * 5) + cellIndex;
        }

        public void refreshItem(Object object, int position) {
            ViewGroup item = (ViewGroup) object;
            item.setTag(R.id.tag_item_position, Integer.valueOf(position));
            if (this.mResumed) {
                int cellCount = item.getChildCount();
                for (int i = 0; i < cellCount; i++) {
                    View cell = item.getChildAt(i);
                    CellHolder holder = (CellHolder) cell.getTag();
                    if (holder == null) {
                        holder = new CellHolder(this, null);
                        holder.mIcon = (ImageView) cell.findViewById(R.id.chooser_icon);
                        holder.mText = (TextView) cell.findViewById(R.id.chooser_text);
                        cell.setTag(holder);
                    }
                    int dataPos = conversePos(position, i);
                    if (dataPos < 0 || dataPos >= this.mData.size()) {
                        cell.setOnClickListener(null);
                        cell.setVisibility(4);
                    } else {
                        DisplayResolvedInfo info = (DisplayResolvedInfo) this.mData.get(dataPos);
                        if (holder.needRefresh(info)) {
                            holder.mInfo = info;
                            this.mLoader.loadInfo(item.getContext(), holder.mIcon, holder.mText, holder.mInfo.getResolveInfo(), this.mIsCrop);
                        } else {
                            holder.mInfo = info;
                        }
                        cell.setOnClickListener(holder);
                        cell.setVisibility(0);
                    }
                }
            }
        }

        public void destroyItem(ViewGroup container, int position, Object object) {
            View view = (View) object;
            container.removeView(view);
            this.mCachedViews.add(new WeakReference(view));
        }

        public int getCount() {
            int dataSize = this.mData.size();
            return dataSize % 5 == 0 ? dataSize / 5 : (dataSize / 5) + 1;
        }

        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }

        public int getItemPosition(Object object, int position) {
            if (position <= 0 || position >= getCount()) {
                return -2;
            }
            return -3;
        }
    }

    private class SortInitializeListener implements OnInitializedListener {
        private SortInitializeListener() {
        }

        /* synthetic */ SortInitializeListener(ChooserFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onInitialized() {
            Log.d("ChooserFragment", "sorter initialized, rebuild cells");
            if (ChooserFragment.this.mAdapter != null) {
                ChooserFragment.this.mAdapter.reBuildList();
                ChooserFragment.this.mAdapter.notifyDataSetChanged();
            }
        }
    }

    public static ChooserFragment newInstance(Intent intent, int theme, boolean initVisible) {
        ChooserFragment fragment = new ChooserFragment();
        Bundle argue = new Bundle();
        argue.putParcelable("key_target_intent", intent);
        argue.putInt("key_theme", theme);
        argue.putBoolean("init_visible", initVisible);
        fragment.setArguments(argue);
        return fragment;
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Bundle bundle = getArguments();
        if (bundle != null) {
            Intent tarIntent = (Intent) bundle.getParcelable("key_target_intent");
            if (tarIntent != null) {
                int theme = bundle.getInt("key_theme", 0);
                boolean isCropper = getResources().getBoolean(R.bool.theme_crop_share_icon);
                boolean visible = bundle.getBoolean("init_visible", true);
                View root = inflater.inflate(R.layout.chooser_layout, container, false);
                this.mViewPager = (ViewPager) root.findViewById(R.id.chooser_pager);
                this.mViewPager.setRightOffscreenPageLimit(1);
                this.mViewPager.setLeftOffscreenPageLimit(1);
                Resources resources = getResources();
                int i = (theme != 0 || MiscUtil.isNightMode(getActivity())) ? R.drawable.unselected_point_dark : R.drawable.unselected_point_light;
                this.mPoint = new PagerPoint((LinearLayout) root.findViewById(R.id.pager_point_layout), resources.getDrawable(i), getResources().getDrawable(R.drawable.selected_point));
                this.mAdapter = new ResolverAdapter(getActivity(), tarIntent, theme, isCropper, visible);
                this.mPoint.notifyPointCountChanged(this.mAdapter.getCount(), 0);
                this.mViewPager.setOnPageChangeListener(this);
                this.mViewPager.setAdapter(this.mAdapter);
                this.mAdapter.setOnIntentSelectedListener(new OnIntentSelectedListener() {
                    public void onIntentSelected(Intent i) {
                        if (ChooserFragment.this.mListener != null) {
                            ChooserFragment.this.mListener.onIntentSelected(i);
                        }
                    }
                });
                if (!ShareComponentSorter.getInstance().initialized()) {
                    Log.d("ChooserFragment", "sorter not initialized");
                    this.mSorterInitializedListener = new SortInitializeListener(this, null);
                    ShareComponentSorter.getInstance().registerOnInitializedListener(this.mSorterInitializedListener);
                    ShareComponentSorter.getInstance().initialize(getActivity().getApplicationContext());
                }
                return root;
            }
        }
        throw new IllegalArgumentException("target intent couldn't be null");
    }

    public void setOnIntentSelectedListener(OnIntentSelectedListener listener) {
        this.mListener = listener;
    }

    public void onVisibilityChanged(boolean visible) {
        if (this.mAdapter == null) {
            return;
        }
        if (visible) {
            this.mAdapter.resume();
        } else {
            this.mAdapter.pause();
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
        if (this.mSorterInitializedListener != null) {
            ShareComponentSorter.getInstance().removeOnInitializedListener(this.mSorterInitializedListener);
        }
    }

    public void onDestroy() {
        this.mListener = null;
        if (this.mAdapter != null) {
            this.mAdapter.release();
        }
        super.onDestroy();
    }

    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
    }

    public void onPageSelected(int position) {
        this.mPoint.notifyActivePointChanged(position);
    }

    public void onPageScrollStateChanged(int state) {
    }

    public void requery(Intent intent) {
        if (this.mAdapter.requery(intent)) {
            this.mViewPager.setCurrentItem(0);
            this.mPoint.notifyPointCountChanged(this.mAdapter.getCount(), this.mViewPager.getCurrentItem());
        }
    }
}

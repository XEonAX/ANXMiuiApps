package miui.app;

import android.app.ActionBar.Tab;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Context;
import android.os.Bundle;
import android.view.View;

public abstract class ActionBar extends android.app.ActionBar {

    public interface FragmentViewPagerChangeListener {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, boolean z, boolean z2);

        void onPageSelected(int i);
    }

    public interface OnScrollListener {
        boolean onContentScrolled();

        void onFling(float f, int i);

        void onScroll(int i, float f);

        void onStartScroll();

        void onStopScroll();
    }

    public abstract int addFragmentTab(String str, Tab tab, int i, Class<? extends Fragment> cls, Bundle bundle, boolean z);

    public abstract int addFragmentTab(String str, Tab tab, Class<? extends Fragment> cls, Bundle bundle, boolean z);

    public abstract void addOnFragmentViewPagerChangeListener(FragmentViewPagerChangeListener fragmentViewPagerChangeListener);

    public abstract Fragment getFragmentAt(int i);

    public abstract int getFragmentTabCount();

    public abstract int getViewPagerOffscreenPageLimit();

    public abstract boolean isFragmentViewPagerMode();

    public abstract void removeAllFragmentTab();

    public abstract void removeFragmentTab(Tab tab);

    public abstract void removeFragmentTab(Fragment fragment);

    public abstract void removeFragmentTab(String str);

    public abstract void removeFragmentTabAt(int i);

    public abstract void removeOnFragmentViewPagerChangeListener(FragmentViewPagerChangeListener fragmentViewPagerChangeListener);

    public abstract void setEndView(View view);

    public abstract void setFragmentActionMenuAt(int i, boolean z);

    public abstract void setFragmentViewPagerMode(Context context, FragmentManager fragmentManager);

    public abstract void setFragmentViewPagerMode(Context context, FragmentManager fragmentManager, boolean z);

    public abstract void setProgress(int i);

    public abstract void setProgressBarIndeterminate(boolean z);

    public abstract void setProgressBarIndeterminateVisibility(boolean z);

    public abstract void setProgressBarVisibility(boolean z);

    public abstract void setStartView(View view);

    public abstract void setTabBadgeVisibility(int i, boolean z);

    public abstract void setTabTextAppearance(int i, int i2);

    public abstract void setTabsMode(boolean z);

    public abstract void setViewPagerDecor(View view);

    public abstract void setViewPagerOffscreenPageLimit(int i);

    public abstract void showActionBarShadow(boolean z);

    public abstract void showSplitActionBar(boolean z, boolean z2);
}

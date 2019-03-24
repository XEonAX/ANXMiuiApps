package miui.view;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

public abstract class PagerAdapter {
    public static final int POSITION_NONE = -2;
    public static final int POSITION_UNCHANGED = -1;
    private DataSetObservable Mq = new DataSetObservable();

    public abstract int getCount();

    public abstract boolean hasActionMenu(int i);

    public abstract boolean isViewFromObject(View view, Object obj);

    public void startUpdate(ViewGroup viewGroup) {
        startUpdate((View) viewGroup);
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        return instantiateItem((View) viewGroup, i);
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        destroyItem((View) viewGroup, i, obj);
    }

    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        setPrimaryItem((View) viewGroup, i, obj);
    }

    public void finishUpdate(ViewGroup viewGroup) {
        finishUpdate((View) viewGroup);
    }

    public void startUpdate(View view) {
    }

    public Object instantiateItem(View view, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    public void destroyItem(View view, int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public void setPrimaryItem(View view, int i, Object obj) {
    }

    public void finishUpdate(View view) {
    }

    public Parcelable saveState() {
        return null;
    }

    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
    }

    public int getItemPosition(Object obj) {
        return -1;
    }

    public void notifyDataSetChanged() {
        this.Mq.notifyChanged();
    }

    void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.Mq.registerObserver(dataSetObserver);
    }

    void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.Mq.unregisterObserver(dataSetObserver);
    }

    public CharSequence getPageTitle(int i) {
        return null;
    }

    public float getPageWidth(int i) {
        return 1.0f;
    }
}

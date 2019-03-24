package com.miui.internal.widget;

import android.content.res.Resources;
import android.database.DataSetObserver;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.RecyclerListener;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.Checkable;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.WrapperListAdapter;
import java.util.ArrayList;
import java.util.List;
import miui.R;
import miui.reflect.Method;
import miui.util.ViewUtils;
import miui.view.ActionModeAnimationListener;
import miui.view.EditActionMode;
import miui.widget.EditableListView.ItemCheckFilter;
import miui.widget.EditableListView.MultiChoiceModeListener;

public class EditableListViewDelegate {
    private static final int tE = Integer.MAX_VALUE;
    private static final Method tF = Method.of(AbsListView.class, "setAdapter", "(Landroid/widget/ListAdapter;)V");
    private static final Method tG = Method.of(AbsListView.class, "clearChoices", "()V");
    private static final Method tH = Method.of(AbsListView.class, "setItemChecked", "(IZ)V");
    private static final Method tI = Method.of(AbsListView.class, "isItemChecked", "(I)Z");
    private static final Method tJ = Method.of(AbsListView.class, "getCheckedItemPositions", "()Landroid/util/SparseBooleanArray;");
    private static final Method tK = Method.of(AbsListView.class, "setMultiChoiceModeListener", "(Landroid/widget/AbsListView$MultiChoiceModeListener;)V");
    private ActionMode mActionMode;
    private AbsListView tL;
    private Class<? extends AbsListView> tM;
    private ListAdapterWrapper tN;
    private MultiChoiceModeListenerWrapper tO;
    private boolean tP;
    private boolean tQ;
    private int tR;
    private int tS;
    private List<CheckBox> tT = new ArrayList();
    private UpdateListener tU = new UpdateListener() {
        public void updateOnScreenCheckedView(View view, int i, long j) {
            EditableListViewDelegate.this.updateOnScreenCheckedView(view, i, j);
        }

        public void updateCheckStatus(ActionMode actionMode) {
            EditableListViewDelegate.this.updateCheckStatus(actionMode);
        }
    };
    private RecyclerListener tV = new RecyclerListener() {
        public void onMovedToScrapHeap(View view) {
            CheckBox a = EditableListViewDelegate.this.i(view);
            if (a != null) {
                a.setAlpha(1.0f);
                a.setTranslationX(0.0f);
            }
        }
    };
    private ItemCheckFilter tW;

    public interface UpdateListener {
        void updateCheckStatus(ActionMode actionMode);

        void updateOnScreenCheckedView(View view, int i, long j);
    }

    private class ListAdapterWrapper extends BaseAdapter implements WrapperListAdapter {
        private ListAdapter tY;

        public ListAdapterWrapper(ListAdapter listAdapter) {
            this.tY = listAdapter;
        }

        public ListAdapter getWrappedAdapter() {
            return this.tY;
        }

        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.tY.registerDataSetObserver(dataSetObserver);
        }

        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.tY.unregisterDataSetObserver(dataSetObserver);
        }

        public int getCount() {
            return this.tY.getCount();
        }

        public Object getItem(int i) {
            return this.tY.getItem(i);
        }

        public long getItemId(int i) {
            return this.tY.getItemId(i);
        }

        public boolean hasStableIds() {
            return this.tY.hasStableIds();
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            view = this.tY.getView(i, view, viewGroup);
            CheckBox a = EditableListViewDelegate.this.i(view);
            if (a != null) {
                int choiceMode = EditableListViewDelegate.this.tL.getChoiceMode();
                boolean isItemChecked = EditableListViewDelegate.this.isItemChecked(i);
                int i2 = 8;
                if (choiceMode == 3) {
                    if (EditableListViewDelegate.this.mActionMode != null) {
                        i2 = 0;
                    }
                    a.setVisibility(i2);
                } else if (choiceMode == 1) {
                    a.setVisibility(8);
                }
                if (a.getVisibility() == 0 && !(a.getTranslationX() == 0.0f && a.getAlpha() == 1.0f)) {
                    a.setTranslationX(0.0f);
                    a.setAlpha(1.0f);
                }
                a.setChecked(isItemChecked);
            }
            return view;
        }

        public int getItemViewType(int i) {
            return this.tY.getItemViewType(i);
        }

        public int getViewTypeCount() {
            return this.tY.getViewTypeCount();
        }

        public boolean isEmpty() {
            return this.tY.isEmpty();
        }

        public boolean areAllItemsEnabled() {
            return this.tY.areAllItemsEnabled();
        }

        public boolean isEnabled(int i) {
            return this.tY.isEnabled(i);
        }

        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            if (this.tY instanceof BaseAdapter) {
                return ((BaseAdapter) this.tY).getDropDownView(i, view, viewGroup);
            }
            return super.getDropDownView(i, view, viewGroup);
        }
    }

    private class MultiChoiceModeListenerWrapper implements MultiChoiceModeListener {
        private AbsListView.MultiChoiceModeListener tZ;
        private ActionModeAnimationListener ua = new ActionModeAnimationListener() {
            public void onStart(boolean z) {
                if (z) {
                    int i = ViewUtils.isLayoutRtl(EditableListViewDelegate.this.tL) ? -1 : 1;
                    for (CheckBox checkBox : EditableListViewDelegate.this.bI()) {
                        checkBox.setVisibility(0);
                        checkBox.setTranslationX((float) (checkBox.getWidth() * i));
                        checkBox.setAlpha(0.0f);
                    }
                }
            }

            public void onUpdate(boolean z, float f) {
                if (!z) {
                    f = 1.0f - f;
                }
                int i = ViewUtils.isLayoutRtl(EditableListViewDelegate.this.tL) ? -1 : 1;
                for (CheckBox checkBox : EditableListViewDelegate.this.bI()) {
                    checkBox.setAlpha(f);
                    checkBox.setTranslationX((((float) checkBox.getWidth()) * (1.0f - f)) * ((float) i));
                }
                if (z && f == 1.0f) {
                    int height = EditableListViewDelegate.this.tL.getHeight();
                    if (EditableListViewDelegate.this.tS > height) {
                        EditableListViewDelegate.this.tL.smoothScrollBy(EditableListViewDelegate.this.tS - height, 100);
                    }
                }
            }

            public void onStop(boolean z) {
                if (!z) {
                    EditableListViewDelegate.this.mActionMode = null;
                    for (CheckBox visibility : EditableListViewDelegate.this.bI()) {
                        visibility.setVisibility(8);
                    }
                }
            }
        };

        public void a(AbsListView.MultiChoiceModeListener multiChoiceModeListener) {
            this.tZ = multiChoiceModeListener;
        }

        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return this.tZ.onPrepareActionMode(actionMode, menu);
        }

        public void onDestroyActionMode(ActionMode actionMode) {
            EditableListViewDelegate.this.tR = 0;
            this.tZ.onDestroyActionMode(actionMode);
        }

        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            EditableListViewDelegate.this.tR = 0;
            actionMode.setTitle(R.string.select_item);
            if (!this.tZ.onCreateActionMode(actionMode, menu)) {
                return false;
            }
            EditableListViewDelegate.this.mActionMode = actionMode;
            ((EditActionMode) EditableListViewDelegate.this.mActionMode).addAnimationListener(this.ua);
            EditableListViewDelegate.this.tU.updateCheckStatus(actionMode);
            EditableListViewDelegate.this.tS = -1;
            return true;
        }

        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            if (menuItem.getItemId() == EditActionMode.BUTTON1) {
                actionMode.finish();
            } else if (menuItem.getItemId() == EditActionMode.BUTTON2) {
                EditableListViewDelegate.this.setAllItemsChecked(EditableListViewDelegate.this.isAllItemsChecked() ^ 1);
            }
            return this.tZ.onActionItemClicked(actionMode, menuItem);
        }

        public void onItemCheckedStateChanged(ActionMode actionMode, int i, long j, boolean z) {
            if (!EditableListViewDelegate.this.tP) {
                int headerViewsCount = EditableListViewDelegate.this.tQ ? ((ListView) EditableListViewDelegate.this.tL).getHeaderViewsCount() : 0;
                int count = EditableListViewDelegate.this.getAdapter().getCount();
                if (i >= headerViewsCount && i < count + headerViewsCount && i <= EditableListViewDelegate.this.tL.getLastVisiblePosition() && i >= EditableListViewDelegate.this.tL.getFirstVisiblePosition() && EditableListViewDelegate.this.isItemCheckable(i - headerViewsCount)) {
                    EditableListViewDelegate.d(EditableListViewDelegate.this, z ? 1 : -1);
                    View childAt = EditableListViewDelegate.this.tL.getChildAt(i - EditableListViewDelegate.this.tL.getFirstVisiblePosition());
                    EditableListViewDelegate.this.tU.updateOnScreenCheckedView(childAt, i, j);
                    EditableListViewDelegate.this.tU.updateCheckStatus(actionMode);
                    if (childAt != null) {
                        childAt.sendAccessibilityEvent(1);
                    }
                    this.tZ.onItemCheckedStateChanged(actionMode, i, j, z);
                    if (EditableListViewDelegate.this.tS == -1) {
                        EditableListViewDelegate.this.tS = EditableListViewDelegate.this.tL.getChildAt(i - EditableListViewDelegate.this.tL.getFirstVisiblePosition()).getBottom();
                    }
                }
            }
        }

        public void onAllItemCheckedStateChanged(ActionMode actionMode, boolean z) {
            AbsListView.MultiChoiceModeListener multiChoiceModeListener = this.tZ;
            if (multiChoiceModeListener instanceof MultiChoiceModeListener) {
                ((MultiChoiceModeListener) multiChoiceModeListener).onAllItemCheckedStateChanged(EditableListViewDelegate.this.mActionMode, z);
            }
        }
    }

    static /* synthetic */ int d(EditableListViewDelegate editableListViewDelegate, int i) {
        int i2 = editableListViewDelegate.tR + i;
        editableListViewDelegate.tR = i2;
        return i2;
    }

    private int getCheckableItemCount() {
        if (this.tW != null) {
            return this.tW.getCheckableItemCount();
        }
        return getAdapter() != null ? getAdapter().getCount() : 0;
    }

    private boolean isItemCheckable(int i) {
        return this.tW == null || this.tW.isItemCheckable(i);
    }

    public void initialize(AbsListView absListView, Class<? extends AbsListView> cls) {
        if (absListView != null) {
            this.tL = absListView;
            this.tM = cls;
            this.tL.setChoiceMode(3);
            this.tL.setRecyclerListener(this.tV);
            this.tQ = this.tL instanceof ListView;
            if (this.tL.getAdapter() != null) {
                ListAdapter listAdapter = (ListAdapter) this.tL.getAdapter();
                tF.invoke(this.tM, this.tL, (ListAdapter) null);
                setAdapter(listAdapter);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("absListView is null");
    }

    public AbsListView getListView() {
        return this.tL;
    }

    public void setUpdateListener(UpdateListener updateListener) {
        if (updateListener != null) {
            this.tU = updateListener;
        }
    }

    public boolean isAllItemsChecked() {
        return this.tR != 0 && getCheckableItemCount() == this.tR;
    }

    public void setAllItemsChecked(boolean z) {
        this.tP = true;
        int count = getAdapter().getCount();
        for (int i = 0; i < count; i++) {
            if (isItemCheckable(i)) {
                setItemChecked(i, z);
            }
        }
        this.tR = z ? getCheckableItemCount() : 0;
        this.tP = false;
        this.tU.updateCheckStatus(this.mActionMode);
        bH();
        if (this.tO != null) {
            this.tO.onAllItemCheckedStateChanged(this.mActionMode, z);
        }
    }

    public void clearChoices() {
        tG.invoke(this.tM, this.tL, new Object[0]);
        this.tR = 0;
        this.tU.updateCheckStatus(this.mActionMode);
        bH();
        this.tR = 0;
    }

    public void setItemChecked(int i, boolean z) {
        int headerViewsCount;
        if (this.tQ) {
            headerViewsCount = ((ListView) this.tL).getHeaderViewsCount();
        } else {
            headerViewsCount = 0;
        }
        tH.invoke(this.tM, this.tL, Integer.valueOf(i + headerViewsCount), Boolean.valueOf(z));
    }

    public boolean isItemChecked(int i) {
        int headerViewsCount;
        if (this.tQ) {
            headerViewsCount = ((ListView) this.tL).getHeaderViewsCount();
        } else {
            headerViewsCount = 0;
        }
        return tI.invokeBoolean(this.tM, this.tL, Integer.valueOf(i + headerViewsCount));
    }

    public boolean isItemIdChecked(long j) {
        for (long j2 : this.tL.getCheckedItemIds()) {
            if (j == j2) {
                return true;
            }
        }
        return false;
    }

    public SparseBooleanArray getCheckedItemPositions() {
        return ((SparseBooleanArray) tJ.invokeObject(this.tM, this.tL, new Object[0])).clone();
    }

    public ListAdapter getAdapter() {
        return this.tN != null ? this.tN.getWrappedAdapter() : null;
    }

    public void setItemCheckFilter(ItemCheckFilter itemCheckFilter) {
        this.tW = itemCheckFilter;
    }

    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter == getAdapter()) {
            return;
        }
        if (listAdapter == null) {
            this.tN = null;
            tF.invoke(this.tM, this.tL, (ListAdapter) null);
            return;
        }
        this.tN = new ListAdapterWrapper(listAdapter);
        tF.invoke(this.tM, this.tL, this.tN);
    }

    public void setMultiChoiceModeListener(AbsListView.MultiChoiceModeListener multiChoiceModeListener) {
        if (this.tO == null) {
            this.tO = new MultiChoiceModeListenerWrapper();
        }
        this.tO.a(multiChoiceModeListener);
        tK.invoke(this.tM, this.tL, this.tO);
    }

    public boolean isInActionMode() {
        return this.mActionMode != null;
    }

    private void bH() {
        int firstVisiblePosition = this.tL.getFirstVisiblePosition();
        int childCount = this.tL.getChildCount();
        for (int i = 0; i < childCount; i++) {
            int i2 = firstVisiblePosition + i;
            this.tU.updateOnScreenCheckedView(this.tL.getChildAt(i), i2, getAdapter().getItemId(i2));
        }
    }

    public void updateOnScreenCheckedView(View view, int i, long j) {
        if (view != null) {
            boolean z = ((SparseBooleanArray) tJ.invokeObject(this.tM, this.tL, new Object[0])).get(i);
            CheckBox i2 = i(view);
            if (i2 != null) {
                i2.setChecked(z);
            } else if (view instanceof Checkable) {
                ((Checkable) view).setChecked(z);
            }
        }
    }

    public void updateCheckStatus(ActionMode actionMode) {
        if (actionMode != null) {
            int i;
            int i2 = this.tR;
            Resources resources = this.tL.getResources();
            boolean z = true;
            if (i2 == 0) {
                actionMode.setTitle(resources.getString(R.string.select_item));
            } else {
                actionMode.setTitle(String.format(resources.getQuantityString(R.plurals.items_selected, i2), new Object[]{Integer.valueOf(i2)}));
            }
            EditActionMode editActionMode = (EditActionMode) actionMode;
            if (isAllItemsChecked()) {
                i = R.string.deselect_all;
            } else {
                i = R.string.select_all;
            }
            editActionMode.setButton((int) EditActionMode.BUTTON2, i);
            Menu menu = actionMode.getMenu();
            if (i2 == 0) {
                z = false;
            }
            menu.setGroupEnabled(0, z);
        }
    }

    private CheckBox i(View view) {
        CheckBox checkBox = (CheckBox) view.getTag(tE);
        if (checkBox == null) {
            checkBox = (CheckBox) view.findViewById(16908289);
            if (checkBox != null) {
                view.setTag(tE, checkBox);
            }
        }
        return checkBox;
    }

    private List<CheckBox> bI() {
        int childCount = this.tL.getChildCount();
        List<CheckBox> list = this.tT;
        this.tT.clear();
        for (int i = 0; i < childCount; i++) {
            CheckBox i2 = i(this.tL.getChildAt(i));
            if (i2 != null) {
                list.add(i2);
            }
        }
        return list;
    }
}

package miui.widget;

import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.MultiChoiceModeListener;
import android.widget.ListAdapter;
import com.miui.internal.widget.EditableListViewDelegate;
import com.miui.internal.widget.EditableListViewDelegate.UpdateListener;
import miui.widget.EditableListView.ItemCheckFilter;

public class EditableListViewWrapper {
    private final EditableListViewDelegate SU;

    public EditableListViewWrapper(AbsListView absListView) {
        if (absListView != null) {
            this.SU = new EditableListViewDelegate();
            this.SU.initialize(absListView, absListView.getClass());
            this.SU.setUpdateListener(new UpdateListener() {
                public void updateOnScreenCheckedView(View view, int i, long j) {
                    EditableListViewWrapper.this.updateOnScreenCheckedView(view, i, j);
                }

                public void updateCheckStatus(ActionMode actionMode) {
                    EditableListViewWrapper.this.updateCheckStatus(actionMode);
                }
            });
            return;
        }
        throw new IllegalArgumentException("absListView is null");
    }

    public boolean isAllItemsChecked() {
        return this.SU.isAllItemsChecked();
    }

    public void setAllItemsChecked(boolean z) {
        this.SU.setAllItemsChecked(z);
    }

    public void clearChoices() {
        this.SU.clearChoices();
    }

    public void setItemChecked(int i, boolean z) {
        this.SU.setItemChecked(i, z);
    }

    public int getCheckedItemCount() {
        return this.SU.getListView().getCheckedItemCount();
    }

    public boolean isItemChecked(int i) {
        return this.SU.isItemChecked(i);
    }

    public boolean isItemIdChecked(long j) {
        return this.SU.isItemIdChecked(j);
    }

    public int getCheckedItemPosition() {
        return this.SU.getListView().getCheckedItemPosition();
    }

    public SparseBooleanArray getCheckedItemPositions() {
        return this.SU.getCheckedItemPositions();
    }

    public long[] getCheckedItemIds() {
        return this.SU.getListView().getCheckedItemIds();
    }

    protected ListAdapter getAdapter() {
        return this.SU.getAdapter();
    }

    public void setAdapter(ListAdapter listAdapter) {
        this.SU.setAdapter(listAdapter);
    }

    public void setMultiChoiceModeListener(MultiChoiceModeListener multiChoiceModeListener) {
        this.SU.setMultiChoiceModeListener(multiChoiceModeListener);
    }

    public boolean isInActionMode() {
        return this.SU.isInActionMode();
    }

    protected void updateOnScreenCheckedView(View view, int i, long j) {
        this.SU.updateOnScreenCheckedView(view, i, j);
    }

    protected void updateCheckStatus(ActionMode actionMode) {
        this.SU.updateCheckStatus(actionMode);
    }

    public void setItemCheckFilter(ItemCheckFilter itemCheckFilter) {
        this.SU.setItemCheckFilter(itemCheckFilter);
    }
}

package miui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.miui.internal.widget.EditableListViewDelegate;
import com.miui.internal.widget.EditableListViewDelegate.UpdateListener;

public class EditableListView extends ListView {
    private EditableListViewDelegate SU;

    public interface MultiChoiceModeListener extends android.widget.AbsListView.MultiChoiceModeListener {
        void onAllItemCheckedStateChanged(ActionMode actionMode, boolean z);
    }

    public interface ItemCheckFilter {
        int getCheckableItemCount();

        boolean isItemCheckable(int i);
    }

    public EditableListView(Context context) {
        super(context);
        eP();
    }

    public EditableListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        eP();
    }

    public EditableListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        eP();
    }

    private EditableListViewDelegate eP() {
        if (this.SU == null) {
            this.SU = new EditableListViewDelegate();
            this.SU.initialize(this, ListView.class);
            this.SU.setUpdateListener(new UpdateListener() {
                public void updateOnScreenCheckedView(View view, int i, long j) {
                    EditableListView.this.updateOnScreenCheckedView(view, i, j);
                }

                public void updateCheckStatus(ActionMode actionMode) {
                    EditableListView.this.updateCheckStatus(actionMode);
                }
            });
        }
        return this.SU;
    }

    public void setAdapter(ListAdapter listAdapter) {
        eP().setAdapter(listAdapter);
    }

    public void setMultiChoiceModeListener(android.widget.AbsListView.MultiChoiceModeListener multiChoiceModeListener) {
        eP().setMultiChoiceModeListener(multiChoiceModeListener);
    }

    public boolean isAllItemsChecked() {
        return eP().isAllItemsChecked();
    }

    public void setAllItemsChecked(boolean z) {
        eP().setAllItemsChecked(z);
    }

    public void clearChoices() {
        eP().clearChoices();
    }

    public void setItemChecked(int i, boolean z) {
        eP().setItemChecked(i, z);
    }

    public boolean isItemChecked(int i) {
        return eP().isItemChecked(i);
    }

    public boolean isItemIdChecked(long j) {
        return eP().isItemIdChecked(j);
    }

    public SparseBooleanArray getCheckedItemPositions() {
        return eP().getCheckedItemPositions();
    }

    public boolean isInActionMode() {
        return eP().isInActionMode();
    }

    protected void updateOnScreenCheckedView(View view, int i, long j) {
        eP().updateOnScreenCheckedView(view, i, j);
    }

    protected void updateCheckStatus(ActionMode actionMode) {
        eP().updateCheckStatus(actionMode);
    }

    public void setItemCheckFilter(ItemCheckFilter itemCheckFilter) {
        eP().setItemCheckFilter(itemCheckFilter);
    }
}

package miui.widget;

import android.content.Context;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import com.miui.internal.R;
import java.util.Arrays;
import java.util.List;
import miui.widget.DropDownPopupWindow.Controller;
import miui.widget.DropDownPopupWindow.DefaultContainerController;
import miui.widget.DropDownPopupWindow.ListController;

public class DropDownSingleChoiceMenu implements Controller {
    private DropDownPopupWindow RA;
    private List<String> Rx;
    private int Ry;
    private OnMenuListener Rz;
    private Context mContext;
    private View oP;

    public interface OnMenuListener {
        void onDismiss();

        void onItemSelected(DropDownSingleChoiceMenu dropDownSingleChoiceMenu, int i);

        void onShow();
    }

    public DropDownSingleChoiceMenu(Context context) {
        this.mContext = context;
    }

    public void setItems(List<String> list) {
        this.Rx = list;
    }

    public void setItems(String[] strArr) {
        this.Rx = Arrays.asList(strArr);
    }

    public void setSelectedItem(int i) {
        this.Ry = i;
    }

    public int getSelectedItem() {
        return this.Ry;
    }

    public void setAnchorView(View view) {
        this.oP = view;
        m(view);
    }

    public List<String> getItems() {
        return this.Rx;
    }

    public void setOnMenuListener(OnMenuListener onMenuListener) {
        this.Rz = onMenuListener;
    }

    /* JADX WARNING: Missing block: B:8:0x005e, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void show() {
        if (!(this.Rx == null || this.oP == null || this.RA != null)) {
            this.RA = new DropDownPopupWindow(this.mContext, null, 0);
            this.RA.setContainerController(new DefaultContainerController() {
                public void onShow() {
                    if (DropDownSingleChoiceMenu.this.Rz != null) {
                        DropDownSingleChoiceMenu.this.Rz.onShow();
                    }
                }

                public void onDismiss() {
                    DropDownSingleChoiceMenu.this.eG();
                }
            });
            this.RA.setDropDownController(this);
            ListView listView = new ListController(this.RA).getListView();
            listView.setAdapter(new ArrayAdapter(this.mContext, R.layout.select_dropdown_popup_singlechoice, this.Rx));
            listView.setOnItemClickListener(new OnItemClickListener() {
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    DropDownSingleChoiceMenu.this.Ry = i;
                    if (DropDownSingleChoiceMenu.this.Rz != null) {
                        DropDownSingleChoiceMenu.this.Rz.onItemSelected(DropDownSingleChoiceMenu.this, i);
                    }
                    DropDownSingleChoiceMenu.this.dismiss();
                }
            });
            listView.setChoiceMode(1);
            listView.setItemChecked(this.Ry, true);
            this.RA.setAnchor(this.oP);
            this.RA.show();
        }
    }

    public void dismiss() {
        if (this.RA != null) {
            this.RA.dismiss();
        }
    }

    private void eG() {
        this.RA = null;
    }

    public void onShow() {
    }

    public void onDismiss() {
        if (this.Rz != null) {
            this.Rz.onDismiss();
        }
    }

    public void onAniamtionUpdate(View view, float f) {
    }

    private void m(View view) {
        view.setAccessibilityDelegate(new AccessibilityDelegate() {
            public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                accessibilityEvent.setClassName(Spinner.class.getName());
            }

            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.setClassName(Spinner.class.getName());
            }
        });
    }
}

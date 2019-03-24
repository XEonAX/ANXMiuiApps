package com.miui.internal.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.text.Layout;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.variable.AlertControllerWrapper.AlertParams.ActionItem;
import com.miui.internal.view.menu.MenuBuilder;
import com.miui.internal.view.menu.MenuBuilder.Callback;
import com.miui.internal.view.menu.MenuPresenter;
import com.miui.internal.widget.ActionBarContainer;
import com.miui.internal.widget.ActionBarContextView;
import com.miui.internal.widget.ActionBarView;
import com.miui.internal.widget.SingleCenterTextView;
import com.nexstreaming.nexeditorsdk.nexEngine;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import miui.app.ActionBar;
import miui.os.C0004SystemProperties;
import miui.reflect.Method;
import miui.reflect.NoSuchMethodException;
import miui.util.AttributeResolver;
import miui.util.Log;
import miui.view.EditActionMode;
import miui.widget.EditableListViewWrapper;
import miui.widget.ProgressBar;

public class AlertControllerImpl implements Callback {
    private static final String TAG = "AlertController";
    private static final int cl = 768;
    private static final Method cm = t();
    private static final int cn = 0;
    private ActionBar aR;
    private Button cA;
    private CharSequence cB;
    private Message cC;
    private Button cD;
    private CharSequence cE;
    private Message cF;
    private Button cG;
    private CharSequence cH;
    private Message cI;
    private ScrollView cJ;
    private DialogInterface cK;
    private OnClickListener cL = new OnClickListener() {
        public void onClick(View view) {
            Message obtain;
            if (view == AlertControllerImpl.this.cA && AlertControllerImpl.this.cC != null) {
                obtain = Message.obtain(AlertControllerImpl.this.cC);
            } else if (view == AlertControllerImpl.this.cD && AlertControllerImpl.this.cF != null) {
                obtain = Message.obtain(AlertControllerImpl.this.cF);
            } else if (view != AlertControllerImpl.this.cG || AlertControllerImpl.this.cI == null) {
                obtain = null;
            } else {
                obtain = Message.obtain(AlertControllerImpl.this.cI);
            }
            if (obtain != null) {
                obtain.sendToTarget();
            }
            AlertControllerImpl.this.mHandler.obtainMessage(1, AlertControllerImpl.this.cK).sendToTarget();
        }
    };
    private boolean cM;
    private MenuPresenter.Callback cN = new MenuPresenter.Callback() {
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }

        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            return false;
        }
    };
    private Window.Callback cO = new Window.Callback() {
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return false;
        }

        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return false;
        }

        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
            return false;
        }

        public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
            return false;
        }

        public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            return false;
        }

        public View onCreatePanelView(int i) {
            return null;
        }

        public boolean onCreatePanelMenu(int i, Menu menu) {
            return false;
        }

        public boolean onPreparePanel(int i, View view, Menu menu) {
            return false;
        }

        public boolean onMenuOpened(int i, Menu menu) {
            return false;
        }

        public boolean onMenuItemSelected(int i, MenuItem menuItem) {
            return false;
        }

        public void onWindowAttributesChanged(LayoutParams layoutParams) {
        }

        public void onContentChanged() {
        }

        public void onWindowFocusChanged(boolean z) {
        }

        public void onAttachedToWindow() {
        }

        public void onDetachedFromWindow() {
        }

        public void onPanelClosed(int i, Menu menu) {
        }

        public boolean onSearchRequested() {
            return false;
        }

        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return null;
        }

        public void onActionModeStarted(ActionMode actionMode) {
        }

        public void onActionModeFinished(ActionMode actionMode) {
        }
    };
    private final Runnable cj = new Runnable() {
        public void run() {
            MenuBuilder createMenu = AlertControllerImpl.this.createMenu();
            if (AlertControllerImpl.this.a(createMenu) && AlertControllerImpl.this.b(createMenu)) {
                AlertControllerImpl.this.setMenu(createMenu);
            } else {
                AlertControllerImpl.this.setMenu(null);
            }
        }
    };
    private final int co;
    private final int cp;
    private final int cq;
    private final int cr;
    private final int cs;
    private final Window ct;
    private ViewGroup cu;
    private ListView cv;
    private EditableListViewWrapper cw;
    private TextView cx;
    private TextView cy;
    private Button cz;
    private ActionBarView mActionBarView;
    private ArrayList<ActionItem> mActionItems;
    private ListAdapter mAdapter;
    private CharSequence mCheckBoxMessage;
    private int mCheckedItem = -1;
    private boolean[] mCheckedItems;
    private Context mContext;
    private View mCustomTitleView;
    private Handler mHandler;
    private Drawable mIcon;
    private int mIconId = 0;
    private boolean mIsChecked;
    private MenuBuilder mMenu;
    private CharSequence mMessage;
    private DialogInterface.OnClickListener mOnActionItemClickListener;
    private CharSequence mTitle;
    private View mView;

    private static final class ButtonHandler extends Handler {
        private static final int cS = 1;
        private WeakReference<DialogInterface> cT;

        public ButtonHandler(DialogInterface dialogInterface) {
            this.cT = new WeakReference(dialogInterface);
        }

        public void handleMessage(Message message) {
            DialogInterface dialogInterface;
            if (message.obj instanceof DialogInterface) {
                dialogInterface = (DialogInterface) message.obj;
            } else {
                dialogInterface = (DialogInterface) this.cT.get();
            }
            if (!(dialogInterface instanceof Dialog) || ((Dialog) dialogInterface).isShowing()) {
                int i = message.what;
                if (i != 1) {
                    switch (i) {
                        case -3:
                        case -2:
                        case -1:
                            ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.cT.get(), message.what);
                            break;
                    }
                }
                ((DialogInterface) message.obj).dismiss();
                return;
            }
            Log.w(AlertControllerImpl.TAG, "dialog has already been dismissed, disregard message process");
        }
    }

    private static Method t() {
        try {
            return Method.of(Window.class, "addExtraFlags", "(I)V");
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    public AlertControllerImpl(Context context, DialogInterface dialogInterface, Window window) {
        this.mContext = context;
        this.cK = dialogInterface;
        this.ct = window;
        this.ct.requestFeature(1);
        if (VERSION.SDK_INT < 28 && C0004SystemProperties.getInt("ro.miui.notch", 0) == 1 && cm != null) {
            cm.invoke(Window.class, this.ct, Integer.valueOf(cl));
        }
        this.mHandler = new ButtonHandler(dialogInterface);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.AlertDialog, 16842845, 0);
        this.cs = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_layout, R.layout.alert_dialog);
        this.co = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listLayout, R.layout.select_dialog);
        this.cp = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_multiChoiceItemLayout, R.layout.select_dialog_multichoice);
        this.cq = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_singleChoiceItemLayout, miui.R.layout.select_dialog_singlechoice);
        this.cr = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listItemLayout, R.layout.select_dialog_item);
        obtainStyledAttributes.recycle();
    }

    static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public void installContent() {
        if (this.mView == null || !a(this.mView)) {
            this.ct.setFlags(nexEngine.ExportHEVCHighTierLevel51, nexEngine.ExportHEVCHighTierLevel51);
        }
        u();
        this.cu = (ViewGroup) this.ct.findViewById(R.id.parentPanel);
        v();
    }

    private void u() {
        if (this.mActionItems != null) {
            View inflate = View.inflate(this.mContext, R.layout.screen_action_bar, null);
            this.mActionBarView = (ActionBarView) inflate.findViewById(R.id.action_bar);
            this.mActionBarView.setWindowCallback(this.cO);
            ActionBarContainer actionBarContainer = (ActionBarContainer) inflate.findViewById(R.id.split_action_bar);
            if (actionBarContainer != null) {
                this.mActionBarView.setSplitView(actionBarContainer);
                this.mActionBarView.setSplitActionBar(true);
                this.mActionBarView.setSplitWhenNarrow(true);
                ActionBarContextView actionBarContextView = (ActionBarContextView) inflate.findViewById(R.id.action_context_bar);
                actionBarContextView.setSplitView(actionBarContainer);
                actionBarContextView.setSplitActionBar(true);
                actionBarContextView.setSplitWhenNarrow(true);
            }
            View.inflate(this.mContext, this.cs, (ViewGroup) inflate.findViewById(16908290));
            this.ct.setContentView(inflate);
            this.ct.getDecorView().post(this.cj);
            this.aR = new ActionBarImpl((Dialog) this.cK);
            this.aR.setDisplayOptions(0);
            this.mActionBarView.setCollapsable(true);
            return;
        }
        this.ct.setContentView(this.cs);
        if (!DeviceHelper.IS_TABLET) {
            this.ct.setGravity(80);
            this.ct.setLayout(-1, -2);
        }
    }

    private void setMenu(MenuBuilder menuBuilder) {
        if (menuBuilder != this.mMenu) {
            this.mMenu = menuBuilder;
            if (this.mActionBarView != null) {
                this.mActionBarView.setMenu(menuBuilder, this.cN);
            }
        }
    }

    MenuBuilder createMenu() {
        MenuBuilder menuBuilder = new MenuBuilder(this.mContext);
        menuBuilder.setCallback(this);
        return menuBuilder;
    }

    private boolean a(MenuBuilder menuBuilder) {
        Iterator it = this.mActionItems.iterator();
        while (it.hasNext()) {
            ActionItem actionItem = (ActionItem) it.next();
            menuBuilder.add(0, actionItem.id, 0, actionItem.label).setIcon(actionItem.icon).setShowAsAction(2);
        }
        return true;
    }

    private boolean b(MenuBuilder menuBuilder) {
        return true;
    }

    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        if (this.mOnActionItemClickListener != null) {
            this.mOnActionItemClickListener.onClick(this.cK, menuItem.getItemId());
        }
        return true;
    }

    public void onMenuModeChange(MenuBuilder menuBuilder) {
    }

    public void setIcon(Drawable drawable) {
        this.mIcon = drawable;
        this.mIconId = 0;
    }

    public void setIcon(int i) {
        this.mIconId = i;
        this.mIcon = null;
    }

    public void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        if (this.cx != null) {
            this.cx.setText(charSequence);
        }
    }

    public void setCustomTitle(View view) {
        this.mCustomTitleView = view;
    }

    public void setMessage(CharSequence charSequence) {
        this.mMessage = charSequence;
        if (this.cy != null) {
            this.cy.setText(charSequence);
            a(this.cy, charSequence);
        }
    }

    /* JADX WARNING: Missing block: B:8:0x0014, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(TextView textView, CharSequence charSequence) {
        if (this.mView == null && this.mCheckBoxMessage == null && (textView instanceof SingleCenterTextView)) {
            ((SingleCenterTextView) textView).setEnableSingleCenter(true);
        }
    }

    public void setView(View view) {
        this.mView = view;
    }

    public void setCheckBox(boolean z, CharSequence charSequence) {
        this.mIsChecked = z;
        this.mCheckBoxMessage = charSequence;
    }

    public void setButton(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message) {
        if (message == null && onClickListener != null) {
            message = this.mHandler.obtainMessage(i, onClickListener);
        }
        switch (i) {
            case -3:
                this.cH = charSequence;
                this.cI = message;
                return;
            case -2:
                this.cE = charSequence;
                this.cF = message;
                return;
            case -1:
                this.cB = charSequence;
                this.cC = message;
                return;
            default:
                throw new IllegalStateException("Button does not exist");
        }
    }

    public void setActionItems(ArrayList<ActionItem> arrayList, DialogInterface.OnClickListener onClickListener) {
        this.mActionItems = arrayList;
        this.mOnActionItemClickListener = onClickListener;
    }

    public ListView getListView() {
        return this.cv;
    }

    public void setListView(ListView listView) {
        this.cv = listView;
    }

    public int getListLayout() {
        return this.co;
    }

    public int getListItemLayout() {
        return this.cr;
    }

    public int getSingleChoiceItemLayout() {
        return this.cq;
    }

    public int getMultiChoiceItemLayout() {
        return this.cp;
    }

    public TextView getMessageView() {
        return this.cy;
    }

    public void setCheckedItems(boolean[] zArr) {
        this.mCheckedItems = zArr;
    }

    public boolean[] getCheckedItems() {
        return this.mCheckedItems;
    }

    public boolean isChecked() {
        boolean isChecked = ((CheckBox) this.cu.findViewById(16908289)).isChecked();
        this.mIsChecked = isChecked;
        return isChecked;
    }

    public DialogInterface getDialogInterface() {
        return this.cK;
    }

    public Button getButton(int i) {
        switch (i) {
            case -3:
                return this.cG;
            case -2:
                return this.cD;
            case -1:
                return this.cA;
            default:
                return null;
        }
    }

    public ActionBar getActionBar() {
        return this.aR;
    }

    public void setAdapter(ListAdapter listAdapter) {
        this.mAdapter = listAdapter;
    }

    public void setCheckedItem(int i) {
        this.mCheckedItem = i;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.cJ != null && this.cJ.executeKeyEvent(keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.cJ != null && this.cJ.executeKeyEvent(keyEvent);
    }

    private void v() {
        ViewGroup viewGroup = (ViewGroup) this.cu.findViewById(R.id.topPanel);
        if (viewGroup != null) {
            a(viewGroup);
        }
        viewGroup = (ViewGroup) this.cu.findViewById(R.id.contentPanel);
        if (viewGroup != null) {
            b(viewGroup);
        }
        FrameLayout frameLayout = (FrameLayout) this.cu.findViewById(miui.R.id.customPanel);
        if (frameLayout != null) {
            a(frameLayout);
        }
        frameLayout = (FrameLayout) this.cu.findViewById(R.id.checkboxPanel);
        if (frameLayout != null) {
            b(frameLayout);
        }
        viewGroup = (ViewGroup) this.cu.findViewById(R.id.buttonPanel);
        if (viewGroup != null) {
            c(viewGroup);
        }
    }

    private void a(ViewGroup viewGroup) {
        if (this.mCustomTitleView != null) {
            int paddingLeft;
            viewGroup.addView(this.mCustomTitleView, 0, new LinearLayout.LayoutParams(-1, -2));
            int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.dialog_title_vertical_padding);
            if (this.mCustomTitleView.getPaddingTop() != 0) {
                dimensionPixelSize = this.mCustomTitleView.getPaddingTop();
            }
            int dimensionPixelSize2 = this.mContext.getResources().getDimensionPixelSize(R.dimen.dialog_title_horizontal_padding);
            if (this.mCustomTitleView.getPaddingLeft() != 0) {
                paddingLeft = this.mCustomTitleView.getPaddingLeft();
            } else {
                paddingLeft = dimensionPixelSize2;
            }
            if (this.mCustomTitleView.getPaddingRight() != 0) {
                dimensionPixelSize2 = this.mCustomTitleView.getPaddingRight();
            }
            this.mCustomTitleView.setPadding(paddingLeft, dimensionPixelSize, dimensionPixelSize2, 0);
            viewGroup.removeView(this.cu.findViewById(R.id.alertTitle));
        } else if ((TextUtils.isEmpty(this.mTitle) ^ 1) != 0) {
            this.cx = (TextView) viewGroup.findViewById(R.id.alertTitle);
            this.cx.setText(this.mTitle);
            if (this.mIcon != null) {
                this.cx.setCompoundDrawablesRelativeWithIntrinsicBounds(this.mIcon, null, null, null);
            }
            if (this.mIconId != 0) {
                this.cx.setCompoundDrawablesRelativeWithIntrinsicBounds(this.mIconId, 0, 0, 0);
            }
        } else {
            viewGroup.setVisibility(8);
        }
    }

    private void a(TextView textView, int i) {
        if (VERSION.SDK_INT >= 23) {
            try {
                Method.of(TextView.class, "setBreakStrategy", "(I)V").invoke(TextView.class, textView, Integer.valueOf(i));
            } catch (Exception e) {
            }
        }
    }

    private void b(ViewGroup viewGroup) {
        this.cJ = (ScrollView) this.cu.findViewById(R.id.scrollView);
        this.cJ.setFocusable(false);
        this.cy = (TextView) this.cu.findViewById(miui.R.id.message);
        if (this.cy != null) {
            if (this.mMessage != null) {
                a(this.cy, 0);
                this.cy.setText(this.mMessage);
                a(this.cy, this.mMessage);
                View findViewById = this.cu.findViewById(R.id.topPanel);
                if (findViewById != null && findViewById.getVisibility() == 8) {
                    viewGroup.setPadding(viewGroup.getPaddingLeft(), this.mContext.getResources().getDimensionPixelSize(R.dimen.dialog_message_without_title_vertical_padding), viewGroup.getRight(), viewGroup.getPaddingBottom());
                }
            } else {
                this.cy.setVisibility(8);
                this.cJ.removeView(this.cy);
                if (this.cv != null) {
                    w();
                    viewGroup.removeView(this.cJ);
                    viewGroup.addView(this.cv, new LinearLayout.LayoutParams(-1, -1));
                    viewGroup.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0f));
                    viewGroup.setPadding(0, 0, 0, 0);
                    x();
                    if (DeviceHelper.IS_TABLET && this.mCustomTitleView == null && this.cx != null) {
                        this.cx.setPadding(0, 0, 0, 0);
                        try {
                            this.cu.findViewById(R.id.topPanel).setBackground(AttributeResolver.resolveDrawable(this.mContext, R.attr.dialogTitleBackground));
                        } catch (NotFoundException e) {
                        }
                        viewGroup.setPadding(viewGroup.getPaddingLeft(), 0, viewGroup.getPaddingRight(), viewGroup.getPaddingBottom());
                    }
                    if (this.cx != null && this.cv.getChoiceMode() == 0) {
                        this.cx.setTextAppearance(this.mContext, R.style.TextAppearance_DialogTitle_SimpleList);
                    }
                } else {
                    viewGroup.setVisibility(8);
                }
            }
        }
    }

    private void w() {
        int choiceMode = this.cv.getChoiceMode();
        if (this.mAdapter != null) {
            if (choiceMode == 2) {
                Button button = (Button) this.cu.findViewById(R.id.cancel);
                if (button != null) {
                    button.setOnClickListener(new OnClickListener() {
                        public void onClick(View view) {
                            AlertControllerImpl.this.cK.dismiss();
                        }
                    });
                }
                button = (Button) this.cu.findViewById(R.id.select);
                if (button != null) {
                    this.cz = button;
                    button.setOnClickListener(new OnClickListener() {
                        public void onClick(View view) {
                            int i;
                            boolean isAllItemsChecked = AlertControllerImpl.this.cw.isAllItemsChecked();
                            AlertControllerImpl.this.cw.setAllItemsChecked(isAllItemsChecked ^ 1);
                            Button button = button;
                            if (isAllItemsChecked) {
                                i = miui.R.string.select_all;
                            } else {
                                i = miui.R.string.deselect_all;
                            }
                            button.setText(i);
                        }
                    });
                }
                if (this.cz != null) {
                    this.cw = new EditableListViewWrapper(this.cv);
                    this.cv.setChoiceMode(choiceMode);
                    this.cw.setAdapter(this.mAdapter);
                    final OnItemClickListener onItemClickListener = this.cv.getOnItemClickListener();
                    this.cv.setOnItemClickListener(new OnItemClickListener() {
                        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                            onItemClickListener.onItemClick(adapterView, view, i, j);
                            AlertControllerImpl.this.cz.setText(AlertControllerImpl.this.cw.isAllItemsChecked() ? miui.R.string.deselect_all : miui.R.string.select_all);
                        }
                    });
                    if (this.mCheckedItems != null) {
                        for (choiceMode = 0; choiceMode < this.mCheckedItems.length; choiceMode++) {
                            this.cw.setItemChecked(choiceMode, this.mCheckedItems[choiceMode]);
                        }
                    }
                    this.cz.setText(this.cw.isAllItemsChecked() ? miui.R.string.deselect_all : miui.R.string.select_all);
                } else {
                    this.cv.setAdapter(this.mAdapter);
                }
            } else {
                this.cv.setAdapter(this.mAdapter);
            }
        }
        if (this.mCheckedItem > -1) {
            this.cv.setItemChecked(this.mCheckedItem, true);
            this.cv.setSelection(this.mCheckedItem);
        }
    }

    private void a(FrameLayout frameLayout) {
        if (this.mView != null) {
            ((FrameLayout) this.cu.findViewById(16908331)).addView(this.mView, new ViewGroup.LayoutParams(-1, -1));
            if (this.cv != null) {
                ((LinearLayout.LayoutParams) frameLayout.getLayoutParams()).weight = 0.0f;
            }
            if (this.mView instanceof ViewGroup) {
                int paddingLeft;
                ViewGroup viewGroup = (ViewGroup) this.mView;
                int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.dialog_custom_vertical_padding);
                if (viewGroup.getPaddingTop() != 0) {
                    dimensionPixelSize = viewGroup.getPaddingTop();
                }
                this.cM = viewGroup.getPaddingBottom() != 0;
                int dimensionPixelSize2 = this.mContext.getResources().getDimensionPixelSize(R.dimen.dialog_custom_horizontal_padding);
                if (viewGroup.getPaddingLeft() != 0) {
                    paddingLeft = viewGroup.getPaddingLeft();
                } else {
                    paddingLeft = dimensionPixelSize2;
                }
                if (viewGroup.getPaddingRight() != 0) {
                    dimensionPixelSize2 = viewGroup.getPaddingRight();
                }
                View findViewById = viewGroup.findViewById(16908301);
                if (findViewById != null && !(findViewById instanceof ProgressBar)) {
                    frameLayout.setPadding(0, 0, 0, 0);
                    this.cM = true;
                    return;
                } else if (viewGroup.findViewById(R.id.datePicker) == null && viewGroup.findViewById(R.id.timePicker) == null && viewGroup.findViewById(R.id.dateTimePicker) == null) {
                    frameLayout.setPadding(paddingLeft, dimensionPixelSize, dimensionPixelSize2, viewGroup.getPaddingBottom());
                    viewGroup.setPadding(0, 0, 0, 0);
                    return;
                } else {
                    frameLayout.setPadding(0, 0, 0, 0);
                    x();
                    this.cM = true;
                    return;
                }
            }
            return;
        }
        frameLayout.setVisibility(8);
    }

    private void x() {
        if (this.cx != null) {
            int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.dialog_title_average_vertical_padding);
            this.cx.setPadding(this.cx.getPaddingLeft(), dimensionPixelSize, this.cx.getPaddingRight(), dimensionPixelSize);
        }
    }

    private void b(FrameLayout frameLayout) {
        if (this.mCheckBoxMessage != null) {
            frameLayout.setVisibility(0);
            CheckBox checkBox = (CheckBox) frameLayout.findViewById(16908289);
            checkBox.setChecked(this.mIsChecked);
            checkBox.setText(this.mCheckBoxMessage);
            return;
        }
        frameLayout.setVisibility(8);
    }

    /* JADX WARNING: Removed duplicated region for block: B:9:0x0055  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x008f  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x011f  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x00bc  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void c(ViewGroup viewGroup) {
        boolean a;
        int i;
        int i2;
        this.cA = (Button) viewGroup.findViewById(EditActionMode.BUTTON1);
        if (this.cA != null) {
            this.cA.setOnClickListener(this.cL);
            if (TextUtils.isEmpty(this.cB)) {
                this.cA.setVisibility(8);
            } else {
                this.cA.setText(this.cB);
                this.cA.setVisibility(0);
                a = a(this.cA);
                i = 1;
                i2 = i;
                this.cD = (Button) viewGroup.findViewById(EditActionMode.BUTTON2);
                if (this.cD != null) {
                    this.cD.setOnClickListener(this.cL);
                    if (TextUtils.isEmpty(this.cE)) {
                        this.cD.setVisibility(8);
                    } else {
                        this.cD.setText(this.cE);
                        this.cD.setVisibility(0);
                        a = a(this.cD);
                        i++;
                        i2 = 1;
                    }
                }
                this.cG = (Button) viewGroup.findViewById(16908315);
                if (this.cG != null) {
                    this.cG.setOnClickListener(this.cL);
                    if (TextUtils.isEmpty(this.cH)) {
                        this.cG.setVisibility(8);
                    } else {
                        this.cG.setText(this.cH);
                        this.cG.setVisibility(0);
                        a = a(this.cG);
                        i++;
                        i2 = 1;
                    }
                }
                if (i2 == 0) {
                    LinearLayout linearLayout = (LinearLayout) viewGroup.findViewById(R.id.buttonGroup);
                    if (a || r0 > 2) {
                        ViewGroup.LayoutParams layoutParams;
                        linearLayout.setOrientation(1);
                        linearLayout.removeAllViews();
                        if (this.cA != null) {
                            layoutParams = this.cA.getLayoutParams();
                            layoutParams.width = -1;
                            linearLayout.addView(this.cA, layoutParams);
                        }
                        if (this.cG != null) {
                            layoutParams = this.cG.getLayoutParams();
                            layoutParams.width = -1;
                            linearLayout.addView(this.cG, layoutParams);
                        }
                        if (this.cD != null) {
                            layoutParams = this.cD.getLayoutParams();
                            layoutParams.width = -1;
                            linearLayout.addView(this.cD, layoutParams);
                        }
                    }
                    if (this.cM || this.cv != null || this.mCheckBoxMessage != null) {
                        linearLayout.setPadding(linearLayout.getPaddingLeft(), 0, linearLayout.getPaddingRight(), linearLayout.getPaddingBottom());
                        return;
                    }
                    return;
                }
                viewGroup.setVisibility(8);
                return;
            }
        }
        i = 0;
        i2 = i;
        a = i2;
        this.cD = (Button) viewGroup.findViewById(EditActionMode.BUTTON2);
        if (this.cD != null) {
        }
        this.cG = (Button) viewGroup.findViewById(16908315);
        if (this.cG != null) {
        }
        if (i2 == 0) {
        }
    }

    private boolean a(TextView textView) {
        Layout layout = textView.getLayout();
        if (layout == null || layout.getLineCount() <= 0 || layout.getEllipsisCount(layout.getLineCount() - 1) <= 0) {
            return false;
        }
        return true;
    }
}

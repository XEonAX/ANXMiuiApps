package com.miui.gallery.agreement;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.agreement.core.OnAgreementInvokedListener;

public abstract class BaseAgreementDialog extends Dialog implements OnClickListener {
    private View mActionBtn;
    private OnAgreementInvokedListener mAgreementListener;
    private boolean mAllowQuit = true;
    private RecyclerView mListView;

    protected static class BaseDividerDecoration extends ItemDecoration {
        protected Drawable mDividerDrawable;
        protected int mDividerHeight;
        protected int mPaddingStart = -1;

        public void onDrawOver(Canvas c, RecyclerView parent, State state) {
            int childCount = parent.getChildCount();
            int parentLeft = parent.getPaddingStart();
            int parentRight = parent.getRight() - parent.getPaddingEnd();
            for (int i = 0; i < childCount; i++) {
                View child = parent.getChildAt(i);
                int position = parent.getChildAdapterPosition(child);
                if (position != -1) {
                    drawTop(c, child, position == 0 ? parentLeft : parentLeft + this.mPaddingStart, parentRight);
                    if (position == parent.getAdapter().getItemCount() - 1) {
                        drawBottom(c, child, parentLeft, parentRight);
                    }
                }
            }
        }

        protected void drawTop(Canvas c, View itemView, int left, int right) {
            int top = (int) ((((float) (itemView.getTop() - ((LayoutParams) itemView.getLayoutParams()).topMargin)) + itemView.getTranslationY()) - ((float) this.mDividerHeight));
            this.mDividerDrawable.setBounds(left, top, right, top + this.mDividerHeight);
            this.mDividerDrawable.draw(c);
        }

        protected void drawBottom(Canvas c, View itemView, int left, int right) {
            int top = (int) (((float) (itemView.getBottom() + ((LayoutParams) itemView.getLayoutParams()).bottomMargin)) + itemView.getTranslationY());
            this.mDividerDrawable.setBounds(left, top, right, top + this.mDividerHeight);
            this.mDividerDrawable.draw(c);
        }

        private void init(Context context) {
            if (this.mDividerDrawable == null) {
                this.mDividerDrawable = context.getResources().getDrawable(R.drawable.item_divider_bg);
                this.mDividerHeight = context.getResources().getDimensionPixelSize(R.dimen.divider_line_height);
                this.mPaddingStart = context.getResources().getDimensionPixelSize(R.dimen.agreement_item_padding_start);
            }
        }

        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, State state) {
            Adapter adapter = parent.getAdapter();
            if (adapter != null) {
                int position = parent.getChildAdapterPosition(view);
                if (position != -1) {
                    init(view.getContext());
                    int top = this.mDividerHeight;
                    int bottom = 0;
                    if (position == adapter.getItemCount() - 1) {
                        bottom = this.mDividerHeight;
                    }
                    outRect.set(0, top, 0, bottom);
                }
            }
        }
    }

    protected abstract Adapter getAdapter();

    protected abstract CharSequence getSummary();

    public BaseAgreementDialog(Context context, boolean allowQuit) {
        super(context);
        this.mAllowQuit = allowQuit;
        setCancelable(false);
    }

    public void setOnAgreementListener(OnAgreementInvokedListener listener) {
        this.mAgreementListener = listener;
    }

    protected ItemDecoration getDividerDecoration() {
        return new BaseDividerDecoration();
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.user_agreement);
        initView();
        Window window = getWindow();
        WindowManager.LayoutParams lp = window.getAttributes();
        lp.gravity = 80;
        lp.width = -1;
        lp.height = -2;
        window.setAttributes(lp);
    }

    private void initView() {
        View quitBtn = findViewById(R.id.quit);
        if (this.mAllowQuit) {
            quitBtn.setVisibility(0);
            quitBtn.setOnClickListener(this);
        } else {
            quitBtn.setVisibility(8);
        }
        ((TextView) findViewById(R.id.summary)).setText(getSummary());
        this.mListView = (RecyclerView) findViewById(R.id.list);
        this.mActionBtn = findViewById(R.id.action);
        this.mActionBtn.setOnClickListener(this);
        this.mListView.addItemDecoration(getDividerDecoration());
        this.mListView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.mListView.setAdapter(getAdapter());
        loadAppInfo();
    }

    private void loadAppInfo() {
        ((ImageView) findViewById(R.id.app_icon)).setImageDrawable(getContext().getApplicationInfo().loadIcon(getContext().getPackageManager()));
    }

    protected void setActionButtonEnabled(boolean enabled) {
        this.mActionBtn.setEnabled(enabled);
    }

    public void onClick(View v) {
        if (v.getId() == R.id.quit) {
            dismiss();
            if (this.mAgreementListener != null) {
                this.mAgreementListener.onAgreementInvoked(false);
            }
        }
        if (v.getId() == R.id.action && v.isEnabled()) {
            dismiss();
            if (this.mAgreementListener != null) {
                this.mAgreementListener.onAgreementInvoked(true);
            }
        }
    }
}

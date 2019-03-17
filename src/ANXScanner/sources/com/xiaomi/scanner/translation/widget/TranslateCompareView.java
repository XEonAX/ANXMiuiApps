package com.xiaomi.scanner.translation.widget;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.translation.bean.TranslateResult.LineInfo;
import com.xiaomi.scanner.util.AppUtil;
import com.xiaomi.scanner.util.AppUtil.AppUtilListener;
import com.xiaomi.scanner.util.ScannerThreadPool;
import com.xiaomi.scanner.util.ScannerThreadPool.ScanThreadCallback;
import com.xiaomi.scanner.util.ToastUtils;
import com.xiaomi.scanner.util.Util;
import java.util.Iterator;
import java.util.List;

public class TranslateCompareView extends RelativeLayout implements OnClickListener {
    private static final String NotesPackage = "com.miui.notes";
    private CompareAdapter compareAdapter;
    private AppUtilListener mAppUtilListener;

    private static class CompareAdapter extends BaseAdapter {
        private List<LineInfo> items;

        private static class Holder {
            TextView srcText;
            TextView translateText;

            private Holder() {
            }

            /* synthetic */ Holder(AnonymousClass1 x0) {
                this();
            }
        }

        private CompareAdapter() {
        }

        /* synthetic */ CompareAdapter(AnonymousClass1 x0) {
            this();
        }

        public String getTextString() {
            if (this.items == null) {
                return null;
            }
            StringBuilder builder = new StringBuilder();
            for (LineInfo lineInfo : this.items) {
                builder.append(lineInfo.getText()).append("\n").append(lineInfo.toText).append("\n");
            }
            return builder.toString();
        }

        public void setItems(List<LineInfo> items) {
            this.items = items;
            notifyDataSetChanged();
        }

        public int getCount() {
            return this.items == null ? 0 : this.items.size();
        }

        public LineInfo getItem(int position) {
            return this.items == null ? null : (LineInfo) this.items.get(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            Holder holder;
            if (convertView == null) {
                convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.layout_translate_compare_item, null);
                holder = new Holder();
                holder.srcText = (TextView) convertView.findViewById(R.id.src_text);
                holder.translateText = (TextView) convertView.findViewById(R.id.translate_text);
                convertView.setTag(holder);
            } else {
                holder = (Holder) convertView.getTag();
            }
            LineInfo lineInfo = getItem(position);
            if (lineInfo != null) {
                holder.srcText.setText(lineInfo.getText());
                holder.translateText.setText(lineInfo.toText);
            }
            return convertView;
        }
    }

    public TranslateCompareView(@NonNull Context context) {
        this(context, null, -1);
    }

    public TranslateCompareView(@NonNull Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public TranslateCompareView(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mAppUtilListener = new AppUtilListener() {
            public void packageInstalled(String packageName, boolean success, Object extra) {
                if (success && TextUtils.equals(packageName, TranslateCompareView.NotesPackage)) {
                    TranslateCompareView.this.startNoteActivity();
                }
            }
        };
        LayoutInflater.from(context).inflate(R.layout.layout_translate_compare, this);
        ListView compareList = (ListView) findViewById(R.id.compare_list);
        this.compareAdapter = new CompareAdapter();
        compareList.setAdapter(this.compareAdapter);
        findViewById(R.id.compare_copy).setOnClickListener(this);
        findViewById(R.id.compare_save).setOnClickListener(this);
        findViewById(R.id.compare_back).setOnClickListener(this);
        setBackgroundResource(R.color.black);
        LayoutParams bottomParams = (LayoutParams) findViewById(R.id.translate_bottom_container).getLayoutParams();
        int navigationBarHeight = (!Util.hasNativageBar || Utils.isFullScreenDevice()) ? 0 : Utils.getNavigationBarHeight();
        bottomParams.bottomMargin = navigationBarHeight;
    }

    public void setCompareList(List<LineInfo> infos) {
        if (this.compareAdapter != null && infos != null) {
            Iterator<LineInfo> infoIterator = infos.iterator();
            while (infoIterator.hasNext()) {
                LineInfo lineInfo = (LineInfo) infoIterator.next();
                if (lineInfo.getText() == null || TextUtils.isEmpty(lineInfo.getText().trim()) || lineInfo.toText == null || TextUtils.isEmpty(lineInfo.toText.trim())) {
                    infoIterator.remove();
                }
            }
            this.compareAdapter.setItems(infos);
        }
    }

    public boolean onBackPressed() {
        boolean canBack = getVisibility() == 0;
        setVisibility(8);
        return canBack;
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.compare_back /*2131558657*/:
                setVisibility(8);
                return;
            case R.id.compare_copy /*2131558658*/:
                copy();
                return;
            case R.id.compare_save /*2131558659*/:
                save();
                return;
            default:
                return;
        }
    }

    private void save() {
        ScannerThreadPool.poolExecute(new ScanThreadCallback<Boolean>() {
            public Boolean onBackground() {
                if (AppUtil.isPackageAvailable(TranslateCompareView.this.getContext().getApplicationContext(), TranslateCompareView.NotesPackage)) {
                    return Boolean.valueOf(true);
                }
                AppUtil.installPackage(TranslateCompareView.this.getContext().getApplicationContext(), TranslateCompareView.NotesPackage, TranslateCompareView.this.mAppUtilListener, null);
                return Boolean.valueOf(false);
            }

            public void onMainResult(Boolean result) {
                super.onMainResult(result);
                if (result.booleanValue()) {
                    TranslateCompareView.this.startNoteActivity();
                }
            }
        });
    }

    private void startNoteActivity() {
        if (this.compareAdapter == null) {
            Log.e("compare", "adapter null");
            return;
        }
        String text = this.compareAdapter.getTextString();
        if (text != null) {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.putExtra("android.intent.extra.TEXT", text);
            intent.setType("text/plain");
            intent.setPackage(NotesPackage);
            if (checkIntent(getContext(), intent)) {
                getContext().startActivity(Intent.createChooser(intent, null));
            } else {
                ToastUtils.showCenterToast((int) R.string.translate_save_fail);
            }
        }
    }

    private boolean checkIntent(Context context, Intent intent) {
        if (context.getPackageManager().queryIntentActivities(intent, 0).size() > 0) {
            return true;
        }
        return false;
    }

    private void copy() {
        if (this.compareAdapter != null) {
            String text = this.compareAdapter.getTextString();
            if (text != null) {
                ((ClipboardManager) getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, text));
                ToastUtils.showCenterToast((int) R.string.translate_copy_success);
            }
        }
    }

    public boolean onTouchEvent(MotionEvent event) {
        return true;
    }
}

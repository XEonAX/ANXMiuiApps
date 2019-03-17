package com.xiaomi.scanner.dialog;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.view.View;
import android.view.View.OnClickListener;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.dialog.TranslateSelectLangDialog.ConfirmClick;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter.TranslationPair;
import com.xiaomi.scanner.ui.WheelPicker;
import com.xiaomi.scanner.ui.WheelPicker.OnWheelChangeListener;
import java.util.ArrayList;
import java.util.List;

public class TranslateWordLangDialog extends AlertDialog {
    private ConfirmClick confirmClick;
    private TranslationAdapter mAdapter;
    private int mSelectPosition = 0;

    public static void showDialog(Activity activity, ConfirmClick confirmClick, TranslationAdapter adapter) {
        if (activity != null && !activity.isFinishing() && !activity.isDestroyed()) {
            TranslateWordLangDialog dialog = new TranslateWordLangDialog(activity, R.style.MyDialog);
            dialog.confirmClick = confirmClick;
            dialog.mAdapter = adapter;
            dialog.show();
        }
    }

    public TranslateWordLangDialog(@NonNull Context context, int themeResId) {
        super(context, themeResId);
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_translate_word_lang);
        setCanceledOnTouchOutside(true);
        findViewById(R.id.cancel).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                TranslateWordLangDialog.this.dismiss();
            }
        });
        findViewById(R.id.confirm).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (!(TranslateWordLangDialog.this.confirmClick == null || TranslateWordLangDialog.this.mAdapter == null)) {
                    TranslationPair pair = (TranslationPair) TranslateWordLangDialog.this.mAdapter.getAllTranslatePairs().get(TranslateWordLangDialog.this.mSelectPosition);
                    TranslateWordLangDialog.this.confirmClick.onConfirmClick(pair.mSourceEntry, pair.mDestEntry);
                }
                TranslateWordLangDialog.this.dismiss();
            }
        });
        final WheelPicker srcPicker = (WheelPicker) findViewById(R.id.src_wheel);
        final WheelPicker desPicker = (WheelPicker) findViewById(R.id.des_wheel);
        srcPicker.setOnWheelChangeListener(new OnWheelChangeListener() {
            public void onWheelScrolled(int offset) {
                desPicker.moveItemView(offset);
            }

            public void onWheelSelected(int position) {
                TranslateWordLangDialog.this.mSelectPosition = position;
            }

            public void onWheelScrollStateChanged(int state) {
            }
        });
        desPicker.setOnWheelChangeListener(new OnWheelChangeListener() {
            public void onWheelScrolled(int offset) {
                srcPicker.moveItemView(offset);
            }

            public void onWheelSelected(int position) {
                TranslateWordLangDialog.this.mSelectPosition = position;
            }

            public void onWheelScrollStateChanged(int state) {
            }
        });
        int selectPostion = this.mAdapter.getSelection(this.mAdapter.getSourceEntry(), this.mAdapter.getDestEntry());
        List<String> srcList = new ArrayList();
        List<String> desList = new ArrayList();
        for (TranslationPair pair : this.mAdapter.getAllTranslatePairs()) {
            srcList.add(pair.mSourceEntry);
            desList.add(pair.mDestEntry);
        }
        srcPicker.setData(srcList);
        desPicker.setData(desList);
        srcPicker.setSelectedItemPosition(selectPostion, false);
        desPicker.setSelectedItemPosition(selectPostion, false);
    }
}

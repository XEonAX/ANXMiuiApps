package com.xiaomi.scanner.dialog;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.view.View;
import android.view.View.OnClickListener;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.ui.WheelPicker;
import com.xiaomi.scanner.ui.WheelPicker.OnWheelChangeListener;
import java.util.List;

public class TranslateSelectLangDialog extends AlertDialog {
    private ConfirmClick confirmClick;
    private String desLang;
    private WheelPicker desPicker;
    private List<String> desWheelList;
    private int selectPosition;
    private String srcLang;
    private List<String> srcWheelList;

    public interface ConfirmClick {
        void onConfirmClick(String str, String str2);
    }

    public static void showDialog(Activity activity, ConfirmClick confirmClick, String srcLang, String desLang, List<String> srcWheelList, List<String> desWheelList) {
        if (activity != null && !activity.isDestroyed() && !activity.isFinishing()) {
            TranslateSelectLangDialog dialog = new TranslateSelectLangDialog(activity, R.style.MyDialog);
            dialog.confirmClick = confirmClick;
            dialog.srcLang = srcLang;
            dialog.desLang = desLang;
            dialog.srcWheelList = srcWheelList;
            dialog.desWheelList = desWheelList;
            dialog.show();
        }
    }

    public TranslateSelectLangDialog(@NonNull Context context, int themeResId) {
        super(context, themeResId);
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_translate_choose_lang);
        setCanceledOnTouchOutside(true);
        findViewById(R.id.cancel).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                TranslateSelectLangDialog.this.dismiss();
            }
        });
        findViewById(R.id.confirm).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (TranslateSelectLangDialog.this.confirmClick != null) {
                    TranslateSelectLangDialog.this.srcLang = (String) TranslateSelectLangDialog.this.srcWheelList.get(TranslateSelectLangDialog.this.selectPosition);
                    TranslateSelectLangDialog.this.desLang = (String) TranslateSelectLangDialog.this.desWheelList.get(TranslateSelectLangDialog.this.selectPosition);
                    TranslateSelectLangDialog.this.confirmClick.onConfirmClick(TranslateSelectLangDialog.this.srcLang, TranslateSelectLangDialog.this.desLang);
                }
                TranslateSelectLangDialog.this.dismiss();
            }
        });
        final WheelPicker srcPicker = (WheelPicker) findViewById(R.id.src_lang_wheel);
        this.desPicker = (WheelPicker) findViewById(R.id.des_lang_wheel);
        this.desPicker.setOnWheelChangeListener(new OnWheelChangeListener() {
            public void onWheelScrolled(int offset) {
                srcPicker.moveItemView(offset);
            }

            public void onWheelSelected(int position) {
                TranslateSelectLangDialog.this.selectPosition = position;
            }

            public void onWheelScrollStateChanged(int state) {
            }
        });
        srcPicker.setOnWheelChangeListener(new OnWheelChangeListener() {
            public void onWheelScrolled(int offset) {
                TranslateSelectLangDialog.this.desPicker.moveItemView(offset);
            }

            public void onWheelSelected(int position) {
                TranslateSelectLangDialog.this.selectPosition = position;
            }

            public void onWheelScrollStateChanged(int state) {
            }
        });
        this.selectPosition = this.desWheelList.indexOf(this.desLang);
        srcPicker.setData(this.srcWheelList);
        srcPicker.setSelectedItemPosition(this.selectPosition, false);
        this.desPicker.setData(this.desWheelList);
        this.desPicker.setSelectedItemPosition(this.selectPosition, false);
    }
}

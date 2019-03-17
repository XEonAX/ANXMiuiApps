package com.xiaomi.scanner.setting;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.Spinner;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.module.ModuleManager.ModuleBaseInfo;
import com.xiaomi.scanner.util.AppJumpUtils;
import com.xiaomi.scanner.util.Constants;
import com.xiaomi.scanner.util.DeviceUtil;
import com.xiaomi.scanner.util.ModuleBaseInfoManager;
import com.xiaomi.scanner.util.SPUtils;
import com.xiaomi.scanner.util.ScannerThreadPool;
import com.xiaomi.scanner.util.ScannerThreadPool.ScanThreadCallback;
import java.util.ArrayList;
import java.util.List;
import miui.app.Activity;

public class SettingActivity extends Activity implements OnClickListener {
    private Spinner functionText;
    private Spinner preferencePayText;

    public static void showSetting(Context context) {
        context.startActivity(new Intent(context, SettingActivity.class));
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_setting);
        this.functionText = (Spinner) findViewById(R.id.default_function_spinner);
        this.preferencePayText = (Spinner) findViewById(R.id.preference_pay_spinner);
        FrameLayout preferencePay = (FrameLayout) findViewById(R.id.setting_preference_pay);
        if (!DeviceUtil.isInternationalBuild()) {
            preferencePay.setVisibility(0);
        }
        findViewById(R.id.privacy_policy).setOnClickListener(this);
        findViewById(R.id.about).setOnClickListener(this);
        updateDefaultFunctionList();
        updatePreferencePay();
    }

    private void updateDefaultFunctionList() {
        ScannerThreadPool.poolExecute(new ScanThreadCallback<Integer>() {
            public Integer onBackground() {
                return SPUtils.getLocal(Constants.KEY_SAVE_DEFAULT_FUNCTION_SELECT, -1);
            }

            public void onMainResult(Integer selectModuleIndex) {
                super.onMainResult(selectModuleIndex);
                int defaultIndex = 0;
                final List<ModuleBaseInfo> moduleInfoList = new ArrayList(ModuleBaseInfoManager.getInstance().getModuleInfoListByWeight());
                if (!moduleInfoList.isEmpty()) {
                    int select = -1;
                    List<String> functionList = new ArrayList();
                    for (int i = 0; i < moduleInfoList.size(); i++) {
                        ModuleBaseInfo info = (ModuleBaseInfo) moduleInfoList.get(i);
                        if (info.getModuleId() == SettingActivity.this.getResources().getInteger(R.integer.default_mode_index)) {
                            defaultIndex = i;
                        }
                        if (selectModuleIndex.intValue() == info.getModuleId()) {
                            select = i;
                        }
                        functionList.add(SettingActivity.this.getResources().getString(info.getTitleResourceId()));
                    }
                    functionList.add(SettingActivity.this.getResources().getString(R.string.setting_use_last_choose));
                    ArrayAdapter<String> functionAdapter = new ArrayAdapter(SettingActivity.this, R.layout.spinner_text_view, functionList);
                    functionAdapter.setDropDownViewResource(17367049);
                    SettingActivity.this.functionText.setPromptId(R.string.setting_default_function);
                    SettingActivity.this.functionText.setAdapter(functionAdapter);
                    if (selectModuleIndex.intValue() == -100) {
                        select = functionList.size() - 1;
                    } else if (select == -1) {
                        select = defaultIndex;
                    } else if (select >= functionList.size()) {
                        select = 0;
                    }
                    SettingActivity.this.functionText.setSelection(select);
                    SettingActivity.this.functionText.setOnItemSelectedListener(new OnItemSelectedListener() {
                        public void onItemSelected(AdapterView<?> adapterView, View arg1, int positon, long arg3) {
                            SPUtils.saveToLocal(Constants.KEY_SAVE_DEFAULT_FUNCTION_SELECT, Integer.valueOf(positon < moduleInfoList.size() ? ((ModuleBaseInfo) moduleInfoList.get(positon)).getModuleId() : -100));
                        }

                        public void onNothingSelected(AdapterView<?> adapterView) {
                        }
                    });
                }
            }
        });
    }

    private void updatePreferencePay() {
        ScannerThreadPool.poolExecute(new ScanThreadCallback<Integer>() {
            public Integer onBackground() {
                return SPUtils.getLocal(Constants.KEY_PREFERENCE_PAY_SELECT, 2);
            }

            public void onMainResult(Integer result) {
                super.onMainResult(result);
                List<String> stringList = new ArrayList();
                for (int id : Constants.PREFERENCE_PAY_LIST) {
                    stringList.add(SettingActivity.this.getResources().getString(id));
                }
                ArrayAdapter<String> functionAdapter = new ArrayAdapter(SettingActivity.this, R.layout.spinner_text_view, stringList);
                functionAdapter.setDropDownViewResource(17367049);
                SettingActivity.this.preferencePayText.setPromptId(R.string.setting_preference_pay);
                SettingActivity.this.preferencePayText.setAdapter(functionAdapter);
                SettingActivity.this.preferencePayText.setSelection(result.intValue());
                SettingActivity.this.preferencePayText.setOnItemSelectedListener(new OnItemSelectedListener() {
                    public void onItemSelected(AdapterView<?> adapterView, View arg1, int positon, long arg3) {
                        SPUtils.saveToLocal(Constants.KEY_PREFERENCE_PAY_SELECT, Integer.valueOf(positon));
                    }

                    public void onNothingSelected(AdapterView<?> adapterView) {
                    }
                });
            }
        });
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.privacy_policy /*2131558550*/:
                AppJumpUtils.showPrivacy(this);
                return;
            case R.id.about /*2131558551*/:
                AboutActivity.showAbout(this);
                return;
            default:
                return;
        }
    }
}

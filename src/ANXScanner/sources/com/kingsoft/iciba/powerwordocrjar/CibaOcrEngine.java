package com.kingsoft.iciba.powerwordocrjar;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.ali.auth.third.login.LoginConstants;
import com.hanvon.ocrtranslate.CNTools;
import com.hanvon.ocrtranslate.Ocr;
import com.kingsoft.iciba.a.a;
import com.xiaomi.scanner.stats.UsageStatistics;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

public class CibaOcrEngine {
    a a = null;
    long b = 65682311;
    private String c;
    private IKSCibaQueryResultListener d;
    private IKSCibaQueryViewResultListener e;
    private n f;
    private Context g;
    private m h;
    private int i = 4;
    private BaseConfigureBean j;
    private int k;
    private int l;
    private com.kingsoft.iciba.a.a.a m = new a(this);
    private f n = new b(this);

    public CibaOcrEngine(Context context) {
        a(context);
    }

    private View a(BaseInfoBean baseInfoBean, Context context) {
        View linearLayout = new LinearLayout(context);
        linearLayout.setLayoutParams(new LayoutParams(-1, -2));
        linearLayout.setOrientation(1);
        List<TextView> arrayList = new ArrayList();
        int a = com.hanvon.ocrtranslate.a.a(context, 5.0f);
        Iterator it = baseInfoBean.shiyiBeans.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            ShiyiBean shiyiBean = (ShiyiBean) it.next();
            if (i >= 3) {
                break;
            }
            View linearLayout2 = new LinearLayout(context);
            linearLayout2.setPadding(0, a, 0, a);
            linearLayout2.setLayoutParams(new LayoutParams(-1, -2));
            linearLayout2.setOrientation(0);
            TextView textView = new TextView(context);
            b(textView);
            TextView textView2 = new TextView(context);
            b(textView2);
            linearLayout2.addView(textView);
            linearLayout2.addView(textView2);
            textView.setText(shiyiBean.cixing);
            if (TextUtils.isEmpty(textView.getText().toString())) {
                textView.setVisibility(4);
            } else {
                textView.setVisibility(0);
                arrayList.add(textView);
                float measureText = textView.getPaint().measureText(shiyiBean.cixing);
                if (measureText > ((float) i2)) {
                    i2 = (int) measureText;
                }
            }
            textView2.setText(shiyiBean.shiyi);
            linearLayout.addView(linearLayout2);
            i++;
        }
        for (TextView textView3 : arrayList) {
            ViewGroup.LayoutParams layoutParams = textView3.getLayoutParams();
            layoutParams.width = i2 + 10;
            textView3.setLayoutParams(layoutParams);
        }
        return linearLayout;
    }

    private View a(InfoBean infoBean, Context context) {
        View linearLayout = new LinearLayout(context);
        if (TextUtils.isEmpty(infoBean.word)) {
            return linearLayout;
        }
        int a = com.hanvon.ocrtranslate.a.a(context, 10.0f);
        linearLayout.setPadding(a, a, a, a * 2);
        ViewGroup.LayoutParams layoutParams = new LayoutParams(-1, -1);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(layoutParams);
        if (this.j == null || this.j.backgroundColor == -1) {
            linearLayout.setBackgroundColor(-1308622848);
        } else {
            linearLayout.setBackgroundColor(this.j.backgroundColor);
        }
        View textView = new TextView(context);
        if (this.j == null || this.j.wordSize == -1) {
            textView.setTextSize(20.0f);
        } else {
            textView.setTextSize((float) this.j.wordSize);
        }
        if (!(this.j == null || this.j.wordColor == -1)) {
            textView.setTextColor(this.j.wordColor);
        }
        textView.setText(infoBean.word);
        linearLayout.addView(textView);
        ViewGroup.LayoutParams layoutParams2;
        if (infoBean.status == 0 || infoBean.baseInfoBeans == null || infoBean.baseInfoBeans.size() == 0) {
            textView = new TextView(context);
            if (!(this.j == null || this.j.tipsSize == -1)) {
                textView.setTextSize((float) this.j.tipsSize);
            }
            if (!(this.j == null || this.j.tipsColor == -1)) {
                textView.setTextColor(this.j.tipsColor);
            }
            if (com.hanvon.ocrtranslate.a.b(context)) {
                textView.setText("不清晰?我再试试吧");
            } else {
                textView.setText("本地无释义，请打开网络进行查询");
            }
            layoutParams2 = new LayoutParams(-1, -1);
            textView.setPadding(0, a, 0, a);
            textView.setLayoutParams(layoutParams2);
            textView.setGravity(17);
            linearLayout.addView(textView);
        } else {
            BaseInfoBean baseInfoBean = (BaseInfoBean) infoBean.baseInfoBeans.get(0);
            if (!TextUtils.isEmpty(baseInfoBean.usSymbol) || TextUtils.isEmpty(baseInfoBean.ukSymbol) || TextUtils.isEmpty(baseInfoBean.chSymbol)) {
                LinearLayout linearLayout2 = (LinearLayout) b((BaseInfoBean) infoBean.baseInfoBeans.get(0), context);
                linearLayout2.measure(0, 0);
                if (linearLayout2.getMeasuredWidth() > this.k - (a * 2)) {
                    linearLayout2.setOrientation(1);
                } else {
                    linearLayout2.setOrientation(0);
                }
                linearLayout.addView(linearLayout2);
            }
            if (baseInfoBean.shiyiBeans != null && baseInfoBean.shiyiBeans.size() > 0) {
                linearLayout.addView(a((BaseInfoBean) infoBean.baseInfoBeans.get(0), context));
            }
            textView = new TextView(context);
            if (!(this.j == null || this.j.tipsSize == -1)) {
                textView.setTextSize((float) this.j.tipsSize);
            }
            if (!(this.j == null || this.j.tipsColor == -1)) {
                textView.setTextColor(this.j.tipsColor);
            }
            textView.setText("查看完整释义");
            layoutParams2 = new LayoutParams(-1, -1);
            textView.setPadding(0, a, 0, a);
            textView.setLayoutParams(layoutParams2);
            textView.setGravity(17);
            linearLayout.addView(textView);
            textView.setOnClickListener(new c(this, context, infoBean));
        }
        return linearLayout;
    }

    private InfoBean a(String str) {
        InfoBean infoBean = new InfoBean();
        ArrayList arrayList = new ArrayList();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt("status") == 1) {
                infoBean.status = 1;
                jSONObject = jSONObject.optJSONObject(LoginConstants.MESSAGE);
                infoBean.word = jSONObject.optString("word_name");
                jSONObject = jSONObject.optJSONObject("baseInfo");
                int optInt = jSONObject.optInt("translate_type");
                if (optInt == 1) {
                    JSONArray optJSONArray = jSONObject.optJSONArray("symbols");
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        BaseInfoBean baseInfoBean = new BaseInfoBean();
                        jSONObject = optJSONArray.optJSONObject(i);
                        baseInfoBean.usSymbol = jSONObject.optString("ph_am");
                        baseInfoBean.ukSymbol = jSONObject.optString("ph_en");
                        baseInfoBean.ttsSymbol = jSONObject.optString("ph_other");
                        baseInfoBean.chSymbol = jSONObject.optString("word_symbol");
                        JSONArray jSONArray = jSONObject.getJSONArray("parts");
                        for (optInt = 0; optInt < jSONArray.length(); optInt++) {
                            jSONObject = jSONArray.getJSONObject(optInt);
                            ShiyiBean shiyiBean = new ShiyiBean();
                            shiyiBean.cixing = jSONObject.getString("part");
                            JSONArray jSONArray2 = jSONObject.getJSONArray("means");
                            StringBuilder stringBuilder = new StringBuilder();
                            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                                stringBuilder.append(jSONArray2.getString(i2)).append(";");
                            }
                            shiyiBean.shiyi = stringBuilder.toString();
                            baseInfoBean.shiyiBeans.add(shiyiBean);
                        }
                        arrayList.add(baseInfoBean);
                    }
                } else if (optInt == 2) {
                    BaseInfoBean baseInfoBean2 = new BaseInfoBean();
                    ShiyiBean shiyiBean2 = new ShiyiBean();
                    shiyiBean2.shiyi = jSONObject.getString(UsageStatistics.KEY_TRANSLATE_RESULT);
                    baseInfoBean2.shiyiBeans.add(shiyiBean2);
                    arrayList.add(baseInfoBean2);
                }
            } else {
                infoBean.word = jSONObject.optJSONObject(LoginConstants.MESSAGE).optString("word_name");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        infoBean.baseInfoBeans = arrayList;
        return infoBean;
    }

    private String a(int i, byte[] bArr, int[] iArr) {
        String str = "";
        if (i >= 0) {
            try {
                return new String(bArr, 0, iArr[0], "ucs-2");
            } catch (Exception e) {
                e.fillInStackTrace();
            }
        }
        return str;
    }

    private String a(String str, int i, int i2, int i3, byte[] bArr, int[] iArr, int i4, int i5, int i6, int i7, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6) {
        this.l = 1;
        return Pattern.compile("[`~@#^&*+=|{}\\[\\]<>/~@#%……&*（）——+|{}【】]").matcher(a(Ocr.instantTransArea(this.c, str, i, i2, i3, bArr, iArr, i4, i5, i6, i7, iArr2, iArr3, iArr4, iArr5, iArr6), bArr, iArr).replace("\r\n", " ")).replaceAll("");
    }

    private void a(int i, String str) {
        if (str == null || str.equals("")) {
            InfoBean infoBean = new InfoBean();
            infoBean.word = str;
            if (this.e != null && this.l == 0) {
                this.e.iksCibaQueryViewResultListener(a(infoBean, this.g));
            }
            if (this.d != null) {
                this.d.iksCibaQueryResultListener(infoBean);
            }
        } else if (i == 1 || i == 101) {
            a(str, this.m);
        } else {
            int i2 = 0;
            switch (i) {
                case 3:
                    i2 = 6;
                    break;
                case 4:
                    i2 = 7;
                    break;
                case 103:
                    i2 = 5;
                    break;
                case 104:
                    i2 = 3;
                    break;
                case 105:
                    i2 = 4;
                    break;
            }
            a(str, i2);
        }
    }

    private void a(Context context) {
        this.g = context;
        this.a = new a(context);
        this.a.a(this.b);
        this.c = context.getFilesDir().getPath() + "/db/";
        File file = new File(this.c);
        if (!file.exists() || file.isFile()) {
            file.delete();
            file.mkdir();
        }
        try {
            if (file.list().length != context.getAssets().list("db").length) {
                com.hanvon.ocrtranslate.a.a(context, "db", this.c);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void a(TextView textView) {
        if (!(this.j == null || this.j.symbolColor == -1)) {
            textView.setTextColor(this.j.symbolColor);
        }
        if (this.j != null && this.j.symbolSize != -1) {
            textView.setTextSize((float) this.j.symbolSize);
        }
    }

    private void a(String str, int i) {
        if (this.f == null) {
            this.f = new n(this.g, this.n);
        }
        this.h = new m();
        this.h.a = str;
        this.h.b = i;
        this.h.d = 1;
        this.f.a(this.h);
    }

    private void a(String str, com.kingsoft.iciba.a.a.a aVar) {
        this.a.a(str.trim(), 0, aVar);
    }

    private View b(BaseInfoBean baseInfoBean, Context context) {
        TextView textView;
        int a = com.hanvon.ocrtranslate.a.a(context, 10.0f);
        int a2 = com.hanvon.ocrtranslate.a.a(context, 5.0f);
        View linearLayout = new LinearLayout(context);
        ViewGroup.LayoutParams layoutParams = new LayoutParams(-1, -2);
        layoutParams.setMargins(0, a, 0, a2);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(0);
        if (!TextUtils.isEmpty(baseInfoBean.ukSymbol)) {
            View linearLayout2 = new LinearLayout(context);
            linearLayout2.setPadding(0, 0, a, 0);
            textView = new TextView(context);
            a(textView);
            textView.setText("英");
            textView.setPadding(0, 0, 3, 0);
            linearLayout2.addView(textView);
            textView = new SymbolTextView(context);
            a(textView);
            textView.setText("[" + baseInfoBean.ukSymbol + "]");
            linearLayout2.addView(textView);
            linearLayout.addView(linearLayout2);
        }
        if (!TextUtils.isEmpty(baseInfoBean.usSymbol)) {
            View linearLayout3 = new LinearLayout(context);
            TextView textView2 = new TextView(context);
            a(textView2);
            textView2.setPadding(0, 0, 3, 0);
            textView2.setText("美");
            linearLayout3.addView(textView2);
            textView2 = new SymbolTextView(context);
            a(textView2);
            textView2.setText("[" + baseInfoBean.usSymbol + "]");
            linearLayout3.addView(textView2);
            linearLayout.addView(linearLayout3);
        }
        if (!TextUtils.isEmpty(baseInfoBean.chSymbol)) {
            textView = new SymbolTextView(context);
            a(textView);
            textView.setText("[" + baseInfoBean.chSymbol + "]");
            linearLayout.addView(textView);
        }
        return linearLayout;
    }

    private String b(String str, int i) {
        String str2;
        switch (i) {
            case 1:
                str2 = "[^一-龥]+";
                break;
            case 101:
                str2 = "[^A-Za-z]+";
                break;
            default:
                str2 = "[`~!@#$%^&*()+=|{}:;\\[\\].<>/?~！@#￥%……&*（）——+|{}【】；：”“。，、？]";
                break;
        }
        return Pattern.compile(str2).matcher(str).replaceAll("");
    }

    private void b(TextView textView) {
        if (!(this.j == null || this.j.meansColor == -1)) {
            textView.setTextColor(this.j.meansColor);
        }
        if (this.j != null && this.j.meansSize != -1) {
            textView.setTextSize((float) this.j.meansSize);
        }
    }

    public int getVersionCode() {
        return this.i;
    }

    public String instantRecogArea(String str, int i, int i2, int i3, byte[] bArr, int[] iArr, int i4, int i5, int i6, int i7, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6) {
        return a(str, i, i2, i3, bArr, iArr, i4, i5, i6, i7, iArr2, iArr3, iArr4, iArr5, iArr6);
    }

    public void instantTransArea(String str, int i, int i2, int i3, byte[] bArr, int[] iArr, int i4, int i5, int i6, int i7, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6) {
        a(i, a(str, i, i2, i3, bArr, iArr, i4, i5, i6, i7, iArr2, iArr3, iArr4, iArr5, iArr6));
    }

    public void instantTransPoint(String str, int i, int i2, int i3, byte[] bArr, int[] iArr, int i4, int i5, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6) {
        String nativeGetLongestSubstr;
        this.l = 0;
        String a = a(Ocr.instantTransPoint(this.c, str, i, i2, i3, bArr, iArr, i4, i5, iArr2, iArr3, iArr4, iArr5, iArr6), bArr, iArr);
        if (i == 1) {
            int length = a.split("\r\n")[0].length();
            Rect rect = new Rect();
            int i6 = 0;
            while (i6 < length) {
                rect.left = iArr3[i6];
                rect.top = iArr4[i6];
                rect.right = iArr5[i6];
                rect.bottom = iArr6[i6];
                if (i4 > rect.left && i4 < rect.right && i5 > rect.top && i5 < rect.bottom) {
                    break;
                }
                i6++;
            }
            i6 = 2;
            nativeGetLongestSubstr = CNTools.nativeGetLongestSubstr(a, i6);
        } else {
            nativeGetLongestSubstr = a;
        }
        a(i, b(nativeGetLongestSubstr, i));
    }

    public void setOnIKSCibaQueryResultListener(IKSCibaQueryResultListener iKSCibaQueryResultListener) {
        this.d = iKSCibaQueryResultListener;
    }

    public void setOnIKSCibaQueryViewResultListener(IKSCibaQueryViewResultListener iKSCibaQueryViewResultListener, int i) {
        this.e = iKSCibaQueryViewResultListener;
        this.k = i;
    }

    public void setViewConfigure(BaseConfigureBean baseConfigureBean) {
        this.j = baseConfigureBean;
    }

    public void showDetailMeaning(Context context, String str, boolean z, int i) {
        if (context != null && str != null) {
            a aVar;
            if (com.hanvon.ocrtranslate.a.a(context, "com.kingsoft")) {
                aVar = this.a;
                a.a(context, str, z);
            } else if (i == 0) {
                aVar = this.a;
                a.a(context, str, z);
            } else {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.setData(Uri.parse("http://www.iciba.com/" + str));
                context.startActivity(intent);
            }
        }
    }
}

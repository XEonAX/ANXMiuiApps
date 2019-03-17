package com.kingsoft.iciba.a;

import android.os.Environment;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import java.io.File;

public final class b {
    public static final String a = (d + File.separator + "iciba");
    public static final String[] b = new String[]{"word_ing", "word_pl", "word_past", "word_done", "word_third", "word_er", "word_est", "word_noun", "word_adv", "word_conn", "word_adj", "word_prep", "word_verb"};
    public static final long[] c = new long[]{82334488, 69425876, 65895566, 65893569, 65894897, 65896879, 65897643, 65892187, 65898657, 65689621, 65891439, 65681564, 65682311, 65683698, 65684865, 65685762, 65686935, 65687468, 65688322, 65689954};
    private static final String d = Environment.getExternalStorageDirectory().getAbsolutePath();

    static {
        String[] strArr = new String[]{"n.", "v.", "vt.", "vi.", "adj.", "adv.", "abbr.", "art.", "pron.", "prep.", "num.", "conj.", "interj.", "int.", "aux.", "na.", "link-v."};
        strArr = new String[]{"n", "v", LoginConstants.TIMESTAMP, "i", "j", "d", "b", "a", "o", "p", "m", "c", AppLinkConstants.E, "g", "x", "h", "f"};
    }
}

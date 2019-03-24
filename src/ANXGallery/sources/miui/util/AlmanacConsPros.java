package miui.util;

import android.text.TextUtils;
import android.util.Log;
import com.miui.internal.util.DirectIndexedFileExtractor;
import com.miui.internal.vip.VipConstants;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import miui.util.DirectIndexedFile.Reader;

public class AlmanacConsPros {
    private static final String Fr = "huangli.idf";
    private static AlmanacConsPros Hd = null;
    private static final Long He = Long.valueOf(new GregorianCalendar(1901, 0, 1).getTimeInMillis());
    private static final Long Hf = Long.valueOf(new GregorianCalendar(2100, 11, 31).getTimeInMillis());
    private static final String[] Hg = new String[]{"立碑", "祭祀", "起基", "移徙", "开仓", "破屋", "作厕", "合帐", "入学", "交易", "造仓", "挂匾", "破土", "合脊", "启攒", "斋醮", "教牛马", "捕捉", "安葬", "余事勿取", "安香", "安门", "上梁", "合寿木", "行丧", "订盟", "经络", "结网", "造桥", "安床", "取渔", "沐浴", "移柩", "造畜椆栖", "酬神", "进人口", "开生坟", "栽种", "作梁", "普渡", "掘井", "谢土", "立券", "割蜜", "乘船", "入宅", "分居", "架马", "归宁", "安碓磑", "雕刻", "塑绘", "祈福", "开光", "断蚁", "出火", "入殓", "造屋", "修饰垣墙", "造车器", "出行", "裁衣", "整手足甲", "平治道涂", "造船", "归岫", "纳婿", "问名", "雇庸", "冠笄", "开柱眼", "修门", "理发", "习艺", "纳畜", "开渠", "置产", "纳财", "安机械", "出货财", "拆卸", "纳采", "修坟", "扫舍", "求嗣", "放水", "补垣", "探病", "求医", "针灸", "竖柱", "成服", "开池", "伐木", "作灶", "词讼", "赴任", "坏垣", "塞穴", "筑堤", "会亲友", "牧养", "诸事不宜", "造庙", "解除", "除服", "畋猎", "治病", "定磉", "开市", "动土", "嫁娶", "修造"};
    private static final String TAG = "AlmanacConsPros";
    private Reader Gg;

    private AlmanacConsPros() {
        df();
    }

    private void df() {
        String directIndexedFilePath = DirectIndexedFileExtractor.getDirectIndexedFilePath(AppConstants.getCurrentApplication(), Fr);
        if (directIndexedFilePath != null && new File(directIndexedFilePath).exists()) {
            try {
                this.Gg = DirectIndexedFile.open(directIndexedFilePath);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (this.Gg == null) {
            try {
                this.Gg = DirectIndexedFile.open(AppConstants.getCurrentApplication().getResources().getAssets().open(Fr, 1));
            } catch (IOException e2) {
                Log.w(TAG, "Can't read huangli.idf, NO huangli supported!");
            }
        }
    }

    public String[] getConsPros(long j) {
        if (this.Gg == null || j < He.longValue() || j > Hf.longValue()) {
            return null;
        }
        String[] strArr = new String[2];
        String[] split = ((String) this.Gg.get(0, (int) ((j - He.longValue()) / VipConstants.DAY), 0)).split(",", -1);
        Iterable arrayList = new ArrayList();
        if (split.length == 2) {
            for (int i = 0; i < split.length; i++) {
                arrayList.clear();
                if (!TextUtils.isEmpty(split[i])) {
                    for (String parseInt : split[i].split("、")) {
                        int parseInt2 = Integer.parseInt(parseInt);
                        if (parseInt2 < Hg.length) {
                            arrayList.add(Hg[parseInt2]);
                        }
                    }
                }
                strArr[i] = TextUtils.join(" ", arrayList);
            }
        }
        return strArr;
    }

    public static synchronized AlmanacConsPros getInstance() {
        AlmanacConsPros almanacConsPros;
        synchronized (AlmanacConsPros.class) {
            if (Hd == null) {
                Hd = new AlmanacConsPros();
            }
            almanacConsPros = Hd;
        }
        return almanacConsPros;
    }

    protected void finalize() throws Throwable {
        if (this.Gg != null) {
            this.Gg.close();
        }
        super.finalize();
    }
}

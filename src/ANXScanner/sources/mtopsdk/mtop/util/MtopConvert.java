package mtopsdk.mtop.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.Feature;
import java.lang.reflect.Type;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.mtop.domain.BaseOutDo;
import mtopsdk.mtop.domain.IMTOPDataObject;
import mtopsdk.mtop.domain.MtopRequest;
import mtopsdk.mtop.domain.MtopResponse;

public class MtopConvert {
    private static final String TAG = "mtopsdk.MtopConvert";

    public static BaseOutDo jsonToOutputDO(byte[] bArr, Class<?> cls) {
        if (cls == null || bArr == null || bArr.length == 0) {
            TBSdkLog.e(TAG, "[jsonToOutputDO]outClass is null or jsondata is blank");
            return null;
        }
        try {
            return (BaseOutDo) JSON.parseObject(bArr, (Type) cls, new Feature[0]);
        } catch (Throwable th) {
            TBSdkLog.e(TAG, "[jsonToOutputDO]invoke JSON.parseObject error ---Class=" + cls.getName(), th);
            return null;
        }
    }

    public static BaseOutDo mtopResponseToOutputDO(MtopResponse mtopResponse, Class<?> cls) {
        if (cls != null && mtopResponse != null) {
            return jsonToOutputDO(mtopResponse.getBytedata(), cls);
        }
        TBSdkLog.e(TAG, "outClass is null or response is null");
        return null;
    }

    public static MtopRequest inputDoToMtopRequest(IMTOPDataObject iMTOPDataObject) {
        if (iMTOPDataObject == null) {
            return null;
        }
        return ReflectUtil.convertToMtopRequest(iMTOPDataObject);
    }

    public static MtopRequest inputDoToMtopRequest(Object obj) {
        if (obj == null) {
            return null;
        }
        return ReflectUtil.convertToMtopRequest(obj);
    }
}

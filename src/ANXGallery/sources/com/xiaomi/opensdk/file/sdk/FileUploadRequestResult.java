package com.xiaomi.opensdk.file.sdk;

import cn.kuaipan.android.exception.KscException;
import cn.kuaipan.android.kss.UploadRequestResult;
import cn.kuaipan.android.utils.ApiDataHelper;
import cn.kuaipan.android.utils.ApiDataHelper.IKscData;
import cn.kuaipan.android.utils.ApiDataHelper.IKscData.Parser;
import cn.kuaipan.android.utils.IObtainable;
import cn.kuaipan.android.utils.JsonUtils;
import java.io.IOException;
import java.io.StringReader;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class FileUploadRequestResult extends UploadRequestResult implements IKscData {
    public static final Parser<FileUploadRequestResult> PARSER = new Parser<FileUploadRequestResult>() {
    };
    public final String requestId;

    public FileUploadRequestResult(Map<String, Object> resultData) throws KscException {
        super(resultData);
        this.requestId = ApiDataHelper.asString(resultData, "requestId");
    }

    public static FileUploadRequestResult create(String kssStr) throws KscException {
        Map<String, Object> kssData = null;
        try {
            kssData = (Map) JsonUtils.parser(new StringReader(kssStr));
            FileUploadRequestResult fileUploadRequestResult = new FileUploadRequestResult(kssData);
            if (kssData != null && (kssData instanceof IObtainable)) {
                ((IObtainable) kssData).recycle();
            }
            return fileUploadRequestResult;
        } catch (IOException e) {
            throw new KscException(501004, "kss is null", e);
        } catch (JSONException e2) {
            throw new KscException(501001, "kss is not json", e2);
        } catch (Throwable th) {
            if (kssData != null && (kssData instanceof IObtainable)) {
                ((IObtainable) kssData).recycle();
            }
        }
    }

    public String toString() {
        String superString = super.toString();
        try {
            return new JSONObject(superString).put("requestId", this.requestId).toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return superString;
        }
    }
}

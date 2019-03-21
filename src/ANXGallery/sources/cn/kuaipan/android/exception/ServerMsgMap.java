package cn.kuaipan.android.exception;

import android.text.TextUtils;
import cn.kuaipan.android.utils.TwoKeyHashMap;

final class ServerMsgMap {
    private static TwoKeyHashMap<Integer, String, Integer> CODE_MAP = new TwoKeyHashMap();

    static {
        add2Map(202, 220201, "badEmailFormat");
        add2Map(202, 220202, "sameEmailRegisteredBefore");
        add2Map(202, 220203, "login fail");
        add2Map(202, 220204, "bad openid");
        add2Map(202, 220205, "wrong verification code");
        add2Map(202, 220206, "cannot create app folder");
        add2Map(202, 220215, "pickupCodeNotSupport");
        add2Map(202, 220216, "pickupCodeTooLong");
        add2Map(202, 220207, "file exist");
        add2Map(202, 220208, "file not exist");
        add2Map(202, 220209, "tooManyFiles");
        add2Map(202, 220210, "file too large");
        add2Map(202, 220211, "over space");
        add2Map(202, 220219, "fnameTooLong");
        add2Map(202, 220212, "commit fail");
        add2Map(202, 220213, "forbidden");
        add2Map(202, 220214, "account server error");
        add2Map(202, 220217, "shared");
        add2Map(202, 220218, "cannotBind");
        add2Map(400, 240001, "bad parameters");
        add2Map(400, 240002, "bad request");
        add2Map(400, 240003, "no such api implemented");
        add2Map(400, 240001, "clientBadParams");
        add2Map(400, 240004, "serverError");
        add2Map(400, 240005, "accountServerError");
        add2Map(400, 240006, "unknownError");
        add2Map(400, 240007, "requestFail");
        add2Map(400, 240008, "mobileExists");
        add2Map(400, 240009, "sendMsgError");
        add2Map(400, 240010, "tooManyRequests");
        add2Map(400, 240011, "tooOften");
        add2Map(400, 240012, "invalidCode");
        add2Map(400, 240013, "invalidMobile");
        add2Map(400, 240014, "emptyPassword");
        add2Map(400, 240015, "passwordTooLong");
        add2Map(400, 240016, "noSuchUser");
        add2Map(400, 240014, "needPassword");
        add2Map(400, 240017, "canNotSetPassword");
        add2Map(400, 240018, "verifyNotRequest");
        add2Map(400, 240020, "expiredCode");
        add2Map(400, 240019, "file not exist");
        add2Map(401, 240101, "bad signature");
        add2Map(401, 240102, "reused nonce");
        add2Map(401, 240103, "bad consumer key");
        add2Map(401, 240104, "request expired");
        add2Map(401, 240105, "not supported auth mode");
        add2Map(401, 240106, "authorization expired");
        add2Map(401, 240107, "api daily limit");
        add2Map(401, 240108, "no right to call this api");
        add2Map(401, 240109, "bad verifier");
        add2Map(401, 240110, "authorization failed");
        add2Map(401, 240111, "invalid token");
        add2Map(403, 240301, "file exist");
        add2Map(403, 240302, "forbidden");
        add2Map(404, 240401, "file not exist");
        add2Map(406, 240601, "too many files");
        add2Map(413, 241301, "file too large");
        add2Map(500, 250001, "server error");
        add2Map(507, 250701, "over space");
        add2Map(200, 220001, "file exist");
        add2Map(200, 220008, "commit fail");
        add2Map(200, 220050, "ERR_BAD_PARAMS");
        add2Map(200, 220051, "ERR_SERVER_EXCEPTION");
        add2Map(200, 220052, "ERR_INVALID_CUSTOMERID");
        add2Map(200, 220053, "ERR_INVALID_STOID");
        add2Map(200, 220054, "ERR_STORAGE_REQUEST_ERROR");
        add2Map(200, 220055, "ERR_STORAGE_REQUEST_FAILED");
        add2Map(200, 220056, "ERR_CHUNK_OUT_OF_RANGE");
        add2Map(200, 220057, "ERR_INVALID_UPLOAD_ID");
        add2Map(200, 220058, "ERR_INVALID_CHUNK_POS");
        add2Map(200, 220059, "ERR_INVALID_CHUNK_SIZE");
        add2Map(200, 220060, "ERR_CHUNK_CORRUPTED");
        add2Map(200, 220061, "ERR_BLOCK_CORRUPTED");
        add2Map(200, 220062, "ERR_TOO_MANY_CURRENT_BLOCKS");
        add2Map(200, 220063, "ERR_STORAGE_COMMIT_ERROR");
        add2Map(200, 220009, "forbidden");
        add2Map(200, 220010, "over space");
        add2Map(200, 220011, "targetNotExist");
        add2Map(200, 220012, "get stub fail");
        add2Map(200, 220013, "unsupportedCharRange");
        add2Map(200, 220014, "dataOperationFailed");
        add2Map(200, 220015, "file too large");
    }

    private static void add2Map(int statusCode, int errorCode, String msg) {
        CODE_MAP.put(Integer.valueOf(statusCode), msg == null ? null : msg.toLowerCase(), Integer.valueOf(errorCode));
    }

    public static int getErrorCode(int statusCode, String message) {
        if (TextUtils.isEmpty(message)) {
            message = null;
        } else {
            message = message.trim().toLowerCase();
        }
        Integer result = (Integer) CODE_MAP.get(Integer.valueOf(statusCode), message);
        return result == null ? 200000 : result.intValue();
    }
}

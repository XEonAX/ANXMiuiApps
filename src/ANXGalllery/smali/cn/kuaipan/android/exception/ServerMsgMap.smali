.class final Lcn/kuaipan/android/exception/ServerMsgMap;
.super Ljava/lang/Object;
.source "ServerMsgMap.java"


# static fields
.field private static CODE_MAP:Lcn/kuaipan/android/utils/TwoKeyHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/TwoKeyHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x193

    const/16 v5, 0x191

    const/16 v4, 0xca

    const/16 v2, 0x190

    const/16 v3, 0xc8

    .line 11
    new-instance v0, Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-direct {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;-><init>()V

    sput-object v0, Lcn/kuaipan/android/exception/ServerMsgMap;->CODE_MAP:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    .line 12
    const v0, 0x35c29

    const-string v1, "badEmailFormat"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 13
    const v0, 0x35c2a

    const-string v1, "sameEmailRegisteredBefore"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 15
    const v0, 0x35c2b

    const-string v1, "login fail"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 16
    const v0, 0x35c2c

    const-string v1, "bad openid"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 17
    const v0, 0x35c2d

    const-string/jumbo v1, "wrong verification code"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 18
    const v0, 0x35c2e

    const-string v1, "cannot create app folder"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 19
    const v0, 0x35c37

    const-string v1, "pickupCodeNotSupport"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 20
    const v0, 0x35c38

    const-string v1, "pickupCodeTooLong"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 22
    const v0, 0x35c2f

    const-string v1, "file exist"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 23
    const v0, 0x35c30

    const-string v1, "file not exist"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 24
    const v0, 0x35c31

    const-string/jumbo v1, "tooManyFiles"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 25
    const v0, 0x35c32

    const-string v1, "file too large"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 26
    const v0, 0x35c33

    const-string v1, "over space"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 27
    const v0, 0x35c3b

    const-string v1, "fnameTooLong"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 29
    const v0, 0x35c34

    const-string v1, "commit fail"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 30
    const v0, 0x35c35

    const-string v1, "forbidden"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 31
    const v0, 0x35c36

    const-string v1, "account server error"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 33
    const v0, 0x35c39

    const-string/jumbo v1, "shared"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 34
    const v0, 0x35c3a

    const-string v1, "cannotBind"

    invoke-static {v4, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 36
    const v0, 0x3a981

    const-string v1, "bad parameters"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 37
    const v0, 0x3a982

    const-string v1, "bad request"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 38
    const v0, 0x3a983

    const-string v1, "no such api implemented"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 39
    const v0, 0x3a981

    const-string v1, "clientBadParams"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 40
    const v0, 0x3a984

    const-string v1, "serverError"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 41
    const v0, 0x3a985

    const-string v1, "accountServerError"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 42
    const v0, 0x3a986

    const-string/jumbo v1, "unknownError"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 43
    const v0, 0x3a987

    const-string v1, "requestFail"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 44
    const v0, 0x3a988

    const-string v1, "mobileExists"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 45
    const v0, 0x3a989

    const-string v1, "sendMsgError"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 46
    const v0, 0x3a98a

    const-string/jumbo v1, "tooManyRequests"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 47
    const v0, 0x3a98b

    const-string/jumbo v1, "tooOften"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 48
    const v0, 0x3a98c

    const-string v1, "invalidCode"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 49
    const v0, 0x3a98d

    const-string v1, "invalidMobile"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 50
    const v0, 0x3a98e

    const-string v1, "emptyPassword"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 51
    const v0, 0x3a98f

    const-string v1, "passwordTooLong"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 52
    const v0, 0x3a990

    const-string v1, "noSuchUser"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 53
    const v0, 0x3a98e

    const-string v1, "needPassword"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 54
    const v0, 0x3a991

    const-string v1, "canNotSetPassword"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 55
    const v0, 0x3a992

    const-string/jumbo v1, "verifyNotRequest"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 56
    const v0, 0x3a994

    const-string v1, "expiredCode"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 57
    const v0, 0x3a993

    const-string v1, "file not exist"

    invoke-static {v2, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 59
    const v0, 0x3a9e5

    const-string v1, "bad signature"

    invoke-static {v5, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 60
    const v0, 0x3a9e6

    const-string v1, "reused nonce"

    invoke-static {v5, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 61
    const v0, 0x3a9e7

    const-string v1, "bad consumer key"

    invoke-static {v5, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 62
    const v0, 0x3a9e8

    const-string v1, "request expired"

    invoke-static {v5, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 63
    const v0, 0x3a9e9

    const-string v1, "not supported auth mode"

    invoke-static {v5, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 64
    const v0, 0x3a9ea

    const-string v1, "authorization expired"

    invoke-static {v5, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 65
    const v0, 0x3a9eb

    const-string v1, "api daily limit"

    invoke-static {v5, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 66
    const v0, 0x3a9ec

    const-string v1, "no right to call this api"

    invoke-static {v5, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 67
    const v0, 0x3a9ed

    const-string v1, "bad verifier"

    invoke-static {v5, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 68
    const v0, 0x3a9ee

    const-string v1, "authorization failed"

    invoke-static {v5, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 69
    const v0, 0x3a9ef

    const-string v1, "invalid token"

    invoke-static {v5, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 71
    const v0, 0x3aaad

    const-string v1, "file exist"

    invoke-static {v6, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 72
    const v0, 0x3aaae

    const-string v1, "forbidden"

    invoke-static {v6, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 74
    const/16 v0, 0x194

    const v1, 0x3ab11

    const-string v2, "file not exist"

    invoke-static {v0, v1, v2}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 75
    const/16 v0, 0x196

    const v1, 0x3abd9

    const-string/jumbo v2, "too many files"

    invoke-static {v0, v1, v2}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 76
    const/16 v0, 0x19d

    const v1, 0x3ae95

    const-string v2, "file too large"

    invoke-static {v0, v1, v2}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 77
    const/16 v0, 0x1f4

    const v1, 0x3d091

    const-string v2, "server error"

    invoke-static {v0, v1, v2}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 78
    const/16 v0, 0x1fb

    const v1, 0x3d34d

    const-string v2, "over space"

    invoke-static {v0, v1, v2}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 81
    const v0, 0x35b61

    const-string v1, "file exist"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 82
    const v0, 0x35b68

    const-string v1, "commit fail"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 83
    const v0, 0x35b92

    const-string v1, "ERR_BAD_PARAMS"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 84
    const v0, 0x35b93

    const-string v1, "ERR_SERVER_EXCEPTION"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 85
    const v0, 0x35b94

    const-string v1, "ERR_INVALID_CUSTOMERID"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 86
    const v0, 0x35b95

    const-string v1, "ERR_INVALID_STOID"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 87
    const v0, 0x35b96

    const-string v1, "ERR_STORAGE_REQUEST_ERROR"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 88
    const v0, 0x35b97

    const-string v1, "ERR_STORAGE_REQUEST_FAILED"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 89
    const v0, 0x35b98

    const-string v1, "ERR_CHUNK_OUT_OF_RANGE"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 90
    const v0, 0x35b99

    const-string v1, "ERR_INVALID_UPLOAD_ID"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 91
    const v0, 0x35b9a

    const-string v1, "ERR_INVALID_CHUNK_POS"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 92
    const v0, 0x35b9b

    const-string v1, "ERR_INVALID_CHUNK_SIZE"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 93
    const v0, 0x35b9c

    const-string v1, "ERR_CHUNK_CORRUPTED"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 94
    const v0, 0x35b9d

    const-string v1, "ERR_BLOCK_CORRUPTED"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 95
    const v0, 0x35b9e

    const-string v1, "ERR_TOO_MANY_CURRENT_BLOCKS"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 96
    const v0, 0x35b9f

    const-string v1, "ERR_STORAGE_COMMIT_ERROR"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 98
    const v0, 0x35b69

    const-string v1, "forbidden"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 99
    const v0, 0x35b6a

    const-string v1, "over space"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 100
    const v0, 0x35b6b

    const-string/jumbo v1, "targetNotExist"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 101
    const v0, 0x35b6c

    const-string v1, "get stub fail"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 102
    const v0, 0x35b6d

    const-string/jumbo v1, "unsupportedCharRange"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 103
    const v0, 0x35b6e

    const-string v1, "dataOperationFailed"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 104
    const v0, 0x35b6f

    const-string v1, "file too large"

    invoke-static {v3, v0, v1}, Lcn/kuaipan/android/exception/ServerMsgMap;->add2Map(IILjava/lang/String;)V

    .line 105
    return-void
.end method

.method private static add2Map(IILjava/lang/String;)V
    .locals 4
    .param p0, "statusCode"    # I
    .param p1, "errorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v1, Lcn/kuaipan/android/exception/ServerMsgMap;->CODE_MAP:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void

    .line 108
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getErrorCode(ILjava/lang/String;)I
    .locals 3
    .param p0, "statusCode"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const/4 p1, 0x0

    .line 117
    :goto_0
    sget-object v1, Lcn/kuaipan/android/exception/ServerMsgMap;->CODE_MAP:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 119
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_1

    const v1, 0x30d40

    :goto_1
    return v1

    .line 115
    .end local v0    # "result":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 119
    .restart local v0    # "result":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

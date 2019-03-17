.class final Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "FAIL_BIZ_PARAM_ERROR"

    const-string v1, "03"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FAIL_BIZ_SYSTEM_ERROR"

    const-string v1, "04"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token\u8fc7\u671f"

    const-string v1, "05"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FAIL_BIZ_TOKEN_NOAUTH"

    const-string v1, "06"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FAIL_BIZ_APPKEY_IN_BLACKLIST"

    const-string v1, "07"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FAIL_BIZ_TOKEN_CANNOT_DECODE"

    const-string v1, "08"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FAIL_BIZ_APPKEY_ILLEGAL"

    const-string v1, "09"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FAIL_BIZ_UID_ILLEGAL"

    const-string v1, "10"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FAIL_BIZ_DEVICEID_ILLEGAL"

    const-string v1, "11"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FAIL_BIZ_HINT_ILLEGAL"

    const-string v1, "12"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FAIL_BIZ_HINT_AND_TOKEN_ILLEGAL"

    const-string v1, "13"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FAIL_BIZ_TOKEN_ILLEGAL"

    const-string v1, "14"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FAIL_BIZ_API_ILLEGAL"

    const-string v1, "15"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

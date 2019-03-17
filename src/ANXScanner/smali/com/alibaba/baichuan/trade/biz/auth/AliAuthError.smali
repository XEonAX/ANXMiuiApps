.class public final enum Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;

.field public static final ERRNO_COMPONENT_AUTH_FAIL:Ljava/lang/String; = "2101"

.field public static final ERRNO_COMPONENT_HIT_LIST_ERROR:Ljava/lang/String; = "190101"

.field public static final enum HINTLIST_NULL:Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;

.field public static final MODEL_NAME_COMPONENT:Ljava/lang/String; = "BCPCSDK"

.field public static final MONITOR_POINT_HINT_LIST:Ljava/lang/String; = "Hint_List_Error"

.field public static final MONITOR_POINT_MTOP_AUTH:Ljava/lang/String; = "Mtop_Auth"

.field public static mMtopErrorCode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public code:Ljava/lang/String;

.field public msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;

    const-string v1, "HINTLIST_NULL"

    const-string v2, "\u6388\u6743\u5217\u8868\u4e3anull\uff08\u8bf7\u4f7f\u7528want\u7ec4\u4ef6\u8c03\u7528\u6388\u6743api\uff09"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->HINTLIST_NULL:Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;

    new-array v0, v4, [Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->HINTLIST_NULL:Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->$VALUES:[Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError$1;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError$1;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->mMtopErrorCode:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->code:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->msg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;
    .locals 1

    const-class v0, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->$VALUES:[Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;

    invoke-virtual {v0}, [Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;

    return-object v0
.end method

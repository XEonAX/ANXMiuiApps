.class public Lmtopsdk/mtop/util/MtopProxyConstant;
.super Ljava/lang/Object;
.source "MtopProxyConstant.java"


# static fields
.field public static final MTOP_BIZID:I = 0x1003

.field public static defaultEnvBaseUrls:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 14
    sput-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->defaultEnvBaseUrls:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "acs4baichuan.m.taobao.com/"

    aput-object v2, v0, v1

    .line 15
    sget-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->defaultEnvBaseUrls:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "api.wapa.taobao.com/"

    aput-object v2, v0, v1

    .line 16
    sget-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->defaultEnvBaseUrls:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "api.waptest.taobao.com/"

    aput-object v2, v0, v1

    .line 17
    sget-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->defaultEnvBaseUrls:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "acs.waptest2nd.taobao.com/"

    aput-object v2, v0, v1

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

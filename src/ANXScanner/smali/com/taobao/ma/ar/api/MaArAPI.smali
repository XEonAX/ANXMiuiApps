.class public Lcom/taobao/ma/ar/api/MaArAPI;
.super Ljava/lang/Object;
.source "MaArAPI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectGen3Markers(Lcom/taobao/ma/ar/ARInputParam;)Lcom/taobao/ma/ar/ARResult;
    .locals 1
    .param p0, "inputParam"    # Lcom/taobao/ma/ar/ARInputParam;

    .prologue
    .line 10
    invoke-static {p0}, Lcom/taobao/ma/decode/MaDecode;->detectGen3Markers(Lcom/taobao/ma/ar/ARInputParam;)Lcom/taobao/ma/ar/ARResult;

    move-result-object v0

    return-object v0
.end method

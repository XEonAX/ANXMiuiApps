.class public Lcom/taobao/ma/analyze/api/MaMemoryAPI;
.super Ljava/lang/Object;
.source "MaMemoryAPI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ReleaseCameraMemory()V
    .locals 0

    .prologue
    .line 10
    invoke-static {}, Lcom/taobao/ma/decode/MaDecode;->releaseStaticMemory()V

    .line 11
    return-void
.end method

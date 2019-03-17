.class public abstract Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;
.super Ljava/lang/Object;
.source "ScannerThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/util/ScannerThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ScanThreadCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    .local p0, "this":Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;, "Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public onMainResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;, "Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    return-void
.end method

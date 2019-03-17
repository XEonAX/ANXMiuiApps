.class public abstract Lcom/miui/gallery/cleaner/BaseScanner;
.super Ljava/lang/Object;
.source "BaseScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cleaner/BaseScanner$OnScanResultUpdateListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/miui/gallery/cleaner/BaseScanner$OnScanResultUpdateListener;

.field protected mType:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/miui/gallery/cleaner/BaseScanner;->mType:I

    .line 14
    return-void
.end method


# virtual methods
.method public onMediaItemDeleted(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 51
    return-void
.end method

.method protected abstract onReset()V
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/cleaner/BaseScanner;->mListener:Lcom/miui/gallery/cleaner/BaseScanner$OnScanResultUpdateListener;

    .line 43
    invoke-virtual {p0}, Lcom/miui/gallery/cleaner/BaseScanner;->onReset()V

    .line 44
    return-void
.end method

.method public abstract scan()Lcom/miui/gallery/cleaner/ScanResult;
.end method

.method public final setListener(Lcom/miui/gallery/cleaner/BaseScanner$OnScanResultUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/cleaner/BaseScanner$OnScanResultUpdateListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/gallery/cleaner/BaseScanner;->mListener:Lcom/miui/gallery/cleaner/BaseScanner$OnScanResultUpdateListener;

    .line 39
    return-void
.end method

.method protected final updateScanResult(JLcom/miui/gallery/cleaner/ScanResult;)V
    .locals 3
    .param p1, "deletedId"    # J
    .param p3, "scanResult"    # Lcom/miui/gallery/cleaner/ScanResult;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/cleaner/BaseScanner;->mListener:Lcom/miui/gallery/cleaner/BaseScanner$OnScanResultUpdateListener;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/cleaner/BaseScanner;->mListener:Lcom/miui/gallery/cleaner/BaseScanner$OnScanResultUpdateListener;

    iget v1, p0, Lcom/miui/gallery/cleaner/BaseScanner;->mType:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/miui/gallery/cleaner/BaseScanner$OnScanResultUpdateListener;->onUpdate(IJLcom/miui/gallery/cleaner/ScanResult;)V

    .line 35
    :cond_0
    return-void
.end method

.method protected final updateScanResult(Lcom/miui/gallery/cleaner/ScanResult;)V
    .locals 2
    .param p1, "scanResult"    # Lcom/miui/gallery/cleaner/ScanResult;

    .prologue
    .line 23
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/gallery/cleaner/BaseScanner;->updateScanResult(JLcom/miui/gallery/cleaner/ScanResult;)V

    .line 24
    return-void
.end method

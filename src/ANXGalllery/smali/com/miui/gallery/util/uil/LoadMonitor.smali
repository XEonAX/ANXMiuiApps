.class public Lcom/miui/gallery/util/uil/LoadMonitor;
.super Ljava/lang/Object;
.source "LoadMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;
    }
.end annotation


# static fields
.field private static final RECORDERS:[Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;

    sput-object v0, Lcom/miui/gallery/util/uil/LoadMonitor;->RECORDERS:[Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;

    .line 19
    sget-object v6, Lcom/miui/gallery/util/uil/LoadMonitor;->RECORDERS:[Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;

    new-instance v0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;

    const/4 v3, 0x4

    const v4, 0xc3500

    const v5, 0x16e360

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;-><init>(IZIII)V

    aput-object v0, v6, v1

    .line 20
    sget-object v0, Lcom/miui/gallery/util/uil/LoadMonitor;->RECORDERS:[Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;

    new-instance v2, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;

    const v6, 0x7a1200

    const v7, 0xf42400

    move v3, v8

    move v4, v1

    move v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;-><init>(IZIII)V

    aput-object v2, v0, v8

    .line 21
    return-void
.end method

.method public static isSyncLoadMicro()Z
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/miui/gallery/util/uil/LoadMonitor;->RECORDERS:[Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->isSync()Z

    move-result v0

    return v0
.end method

.method public static isSyncLoadThumb()Z
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/miui/gallery/util/uil/LoadMonitor;->RECORDERS:[Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->isSync()Z

    move-result v0

    return v0
.end method

.method public static record(IJ)V
    .locals 1
    .param p0, "loadType"    # I
    .param p1, "costNanos"    # J

    .prologue
    .line 32
    sget-object v0, Lcom/miui/gallery/util/uil/LoadMonitor;->RECORDERS:[Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->record(J)V

    .line 33
    return-void
.end method

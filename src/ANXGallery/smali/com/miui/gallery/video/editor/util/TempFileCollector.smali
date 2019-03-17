.class public Lcom/miui/gallery/video/editor/util/TempFileCollector;
.super Ljava/lang/Object;
.source "TempFileCollector.java"


# static fields
.field private static tempFilePaths:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/miui/gallery/video/editor/util/TempFileCollector;->tempFilePaths:Ljava/util/LinkedList;

    return-void
.end method

.method public static add(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 18
    const-string v0, "TempFileCollector"

    const-string v1, "add %s"

    invoke-static {v0, v1, p0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    sget-object v0, Lcom/miui/gallery/video/editor/util/TempFileCollector;->tempFilePaths:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public static deleteAllTempFile(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v1, Lcom/miui/gallery/video/editor/util/TempFileCollector;->tempFilePaths:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 25
    .local v2, "start":J
    sget-object v1, Lcom/miui/gallery/video/editor/util/TempFileCollector;->tempFilePaths:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 26
    .local v0, "paths":[Ljava/lang/String;
    sget-object v1, Lcom/miui/gallery/video/editor/util/TempFileCollector;->tempFilePaths:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 27
    sget-object v1, Lcom/miui/gallery/video/editor/util/TempFileCollector;->tempFilePaths:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 28
    const/16 v1, 0x38

    invoke-static {p0, v1, v0}, Lcom/miui/gallery/provider/CloudUtils;->deleteByPath(Landroid/content/Context;I[Ljava/lang/String;)[J

    .line 29
    const-string v1, "TempFileCollector"

    const-string v4, "deleteAllTempFile %s, cost %s"

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1, v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .end local v0    # "paths":[Ljava/lang/String;
    .end local v2    # "start":J
    :cond_0
    return-void
.end method

.class public Lcom/nexstreaming/app/common/util/b;
.super Ljava/lang/Object;
.source "CloseUtil.java"


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .locals 3

    .prologue
    .line 36
    if-eqz p0, :cond_0

    .line 38
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    const-string v1, "CloseUtil"

    const-string v2, "Error closing resource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.class public Lcom/xiaomi/micloudsdk/utils/MiCloudLog;
.super Ljava/lang/Object;
.source "MiCloudLog.java"


# direct methods
.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

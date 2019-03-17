.class public Lcom/android/internal/EnvironmentCompat;
.super Ljava/lang/Object;
.source "EnvironmentCompat.java"


# direct methods
.method public static final getLegacyExternalStorageDirectory()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 15
    .local v1, "file":Ljava/io/File;
    :goto_0
    if-nez v1, :cond_0

    .line 16
    const-string v2, "/sdcard"

    .line 18
    :goto_1
    return-object v2

    .line 12
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 13
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 18
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.class Lcom/android/internal/FilesUtilsV19;
.super Ljava/lang/Object;
.source "FilesUtilsV19.java"


# direct methods
.method public static setPermissions(Ljava/lang/String;III)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    .line 17
    invoke-static {p0, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

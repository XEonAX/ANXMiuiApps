.class public Lcom/ta/utdid2/b/a/c;
.super Ljava/lang/Object;
.source "Base64Helper.java"


# direct methods
.method public static encodeToString([BI)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B
    .param p1, "flags"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 16
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

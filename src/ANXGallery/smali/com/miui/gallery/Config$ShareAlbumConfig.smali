.class public Lcom/miui/gallery/Config$ShareAlbumConfig;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareAlbumConfig"
.end annotation


# direct methods
.method public static getSupportedSpecialTypeFlags(J)J
    .locals 2
    .param p0, "origin"    # J

    .prologue
    .line 332
    const-wide/16 v0, 0x0

    and-long/2addr v0, p0

    return-wide v0
.end method

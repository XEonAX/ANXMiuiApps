.class public Lmiui/mipub/MipubUtils;
.super Ljava/lang/Object;
.source "MipubUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MipubUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasFollowedMipubs(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 24
    const-string v0, "has_followed_mipub"

    .line 25
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 27
    .local v0, "followedInt":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    .line 29
    .local v1, "followed":Z
    :cond_0
    return v1
.end method

.method public static setHasFollowedMipubs(Landroid/content/ContentResolver;Z)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "followed"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    const-string v0, "has_followed_mipub"

    .line 35
    if-eqz p1, :cond_0

    .line 36
    const/4 v1, 0x1

    goto :goto_0

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 38
    return-void
.end method

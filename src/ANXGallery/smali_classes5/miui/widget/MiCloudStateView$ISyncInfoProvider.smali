.class public interface abstract Lmiui/widget/MiCloudStateView$ISyncInfoProvider;
.super Ljava/lang/Object;
.source "MiCloudStateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/MiCloudStateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISyncInfoProvider"
.end annotation


# virtual methods
.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public abstract getUnsyncedCount(Landroid/content/Context;)[I
.end method

.method public abstract getUnsyncedCountText(Landroid/content/Context;[I)Ljava/lang/String;
.end method

.class public Lcom/miui/gallery/cloud/HostManager$Search;
.super Ljava/lang/Object;
.source "HostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/HostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Search"
.end annotation


# direct methods
.method public static getSearchFeedbackUrlHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager;->access$300()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSearchUrlHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager;->access$200()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

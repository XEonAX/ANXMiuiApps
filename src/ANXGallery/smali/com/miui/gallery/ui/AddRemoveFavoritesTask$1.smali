.class Lcom/miui/gallery/ui/AddRemoveFavoritesTask$1;
.super Ljava/lang/Object;
.source "AddRemoveFavoritesTask.java"

# interfaces
.implements Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AddRemoveFavoritesTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/ui/ProcessTask$ProcessCallback",
        "<",
        "Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;",
        "[J>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doProcess([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    check-cast p1, [Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$1;->doProcess([Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;)[J

    move-result-object v0

    return-object v0
.end method

.method public doProcess([Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;)[J
    .locals 6
    .param p1, "params"    # [Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    aget-object v2, p1, v3

    invoke-static {v2}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->access$000(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;)I

    move-result v1

    .line 18
    .local v1, "operationType":I
    aget-object v2, p1, v3

    invoke-static {v2}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->access$100(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;)I

    move-result v0

    .line 19
    .local v0, "addRemoveBy":I
    if-ne v0, v4, :cond_1

    .line 20
    if-ne v1, v4, :cond_0

    .line 21
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->access$200(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/CloudUtils;->addToFavoritesBySha1(Landroid/content/Context;[Ljava/lang/String;)[J

    move-result-object v2

    .line 38
    :goto_0
    return-object v2

    .line 22
    :cond_0
    if-ne v1, v5, :cond_5

    .line 23
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->access$200(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/CloudUtils;->removeFromFavoritesBySha1(Landroid/content/Context;[Ljava/lang/String;)[J

    move-result-object v2

    goto :goto_0

    .line 25
    :cond_1
    if-ne v0, v5, :cond_3

    .line 26
    if-ne v1, v4, :cond_2

    .line 27
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->access$200(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/CloudUtils;->addToFavoritesByPath(Landroid/content/Context;[Ljava/lang/String;)[J

    move-result-object v2

    goto :goto_0

    .line 28
    :cond_2
    if-ne v1, v5, :cond_5

    .line 29
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->access$200(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/CloudUtils;->removeFromFavoritesByPath(Landroid/content/Context;[Ljava/lang/String;)[J

    move-result-object v2

    goto :goto_0

    .line 31
    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 32
    if-ne v1, v4, :cond_4

    .line 33
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->access$300(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;)[J

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/CloudUtils;->addToFavoritesById(Landroid/content/Context;[J)[J

    move-result-object v2

    goto :goto_0

    .line 34
    :cond_4
    if-ne v1, v5, :cond_5

    .line 35
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->access$300(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;)[J

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/CloudUtils;->removeFromFavoritesById(Landroid/content/Context;[J)[J

    move-result-object v2

    goto :goto_0

    .line 38
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

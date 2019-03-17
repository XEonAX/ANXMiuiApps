.class final Lcom/miui/gallery/util/UbiFocusUtils$3;
.super Ljava/lang/Object;
.source "UbiFocusUtils.java"

# interfaces
.implements Lcom/miui/gallery/util/GalleryUtils$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/UbiFocusUtils;->getSubUbiImages(ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/GalleryUtils$QueryHandler",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/miui/gallery/data/DBImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$isShare:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/miui/gallery/util/UbiFocusUtils$3;->val$isShare:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/UbiFocusUtils$3;->handle(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/data/DBImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/DBImage;>;"
    if-eqz p1, :cond_1

    .line 251
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 252
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    iget-boolean v1, p0, Lcom/miui/gallery/util/UbiFocusUtils$3;->val$isShare:Z

    if-eqz v1, :cond_0

    .line 254
    new-instance v1, Lcom/miui/gallery/data/DBShareSubUbiImage;

    invoke-direct {v1, p1}, Lcom/miui/gallery/data/DBShareSubUbiImage;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    :cond_0
    new-instance v1, Lcom/miui/gallery/data/DBOwnerSubUbiImage;

    invoke-direct {v1, p1}, Lcom/miui/gallery/data/DBOwnerSubUbiImage;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_1
    return-object v0
.end method

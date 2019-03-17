.class final Lcom/miui/gallery/util/UbiFocusUtils$1;
.super Ljava/lang/Object;
.source "UbiFocusUtils.java"

# interfaces
.implements Lcom/miui/gallery/util/GalleryUtils$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/UbiFocusUtils;->getSubUbiImage(ZLjava/lang/String;)Lcom/miui/gallery/data/DBImage;
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
        "Lcom/miui/gallery/data/DBImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$isShare:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/miui/gallery/util/UbiFocusUtils$1;->val$isShare:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBImage;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 174
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-boolean v0, p0, Lcom/miui/gallery/util/UbiFocusUtils$1;->val$isShare:Z

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Lcom/miui/gallery/data/DBShareSubUbiImage;

    invoke-direct {v0, p1}, Lcom/miui/gallery/data/DBShareSubUbiImage;-><init>(Landroid/database/Cursor;)V

    .line 181
    :goto_0
    return-object v0

    .line 178
    :cond_0
    new-instance v0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;

    invoke-direct {v0, p1}, Lcom/miui/gallery/data/DBOwnerSubUbiImage;-><init>(Landroid/database/Cursor;)V

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/UbiFocusUtils$1;->handle(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    return-object v0
.end method

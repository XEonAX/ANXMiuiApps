.class Lcom/miui/gallery/data/OldThumbnailTransferer$1;
.super Ljava/lang/Object;
.source "OldThumbnailTransferer.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/data/OldThumbnailTransferer;->transfer(Landroid/net/Uri;[ILjava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/OldThumbnailTransferer;

.field final synthetic val$maxTransferCount:[I

.field final synthetic val$thumbnailFolders:[Ljava/lang/String;

.field final synthetic val$transferedUbiIds:Ljava/util/List;

.field final synthetic val$transferedUbiServerIds:Ljava/util/List;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/miui/gallery/data/OldThumbnailTransferer;[ILandroid/net/Uri;[Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/data/OldThumbnailTransferer;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/miui/gallery/data/OldThumbnailTransferer$1;->this$0:Lcom/miui/gallery/data/OldThumbnailTransferer;

    iput-object p2, p0, Lcom/miui/gallery/data/OldThumbnailTransferer$1;->val$maxTransferCount:[I

    iput-object p3, p0, Lcom/miui/gallery/data/OldThumbnailTransferer$1;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/miui/gallery/data/OldThumbnailTransferer$1;->val$thumbnailFolders:[Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/gallery/data/OldThumbnailTransferer$1;->val$transferedUbiIds:Ljava/util/List;

    iput-object p6, p0, Lcom/miui/gallery/data/OldThumbnailTransferer$1;->val$transferedUbiServerIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/OldThumbnailTransferer$1;->handle(Landroid/database/Cursor;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/lang/Void;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 114
    if-eqz p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/data/OldThumbnailTransferer$1;->val$maxTransferCount:[I

    aget v1, v1, v3

    if-lez v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/miui/gallery/data/OldThumbnailTransferer$1;->val$uri:Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/miui/gallery/cloud/CloudUtils;->createDBImageByUri(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    .line 117
    .local v0, "dbImage":Lcom/miui/gallery/data/DBImage;
    iget-object v1, p0, Lcom/miui/gallery/data/OldThumbnailTransferer$1;->this$0:Lcom/miui/gallery/data/OldThumbnailTransferer;

    iget-object v2, p0, Lcom/miui/gallery/data/OldThumbnailTransferer$1;->val$thumbnailFolders:[Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/miui/gallery/data/OldThumbnailTransferer;->access$200(Lcom/miui/gallery/data/OldThumbnailTransferer;Lcom/miui/gallery/data/DBImage;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/miui/gallery/data/OldThumbnailTransferer$1;->val$maxTransferCount:[I

    aget v2, v1, v3

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v3

    .line 119
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/miui/gallery/data/OldThumbnailTransferer$1;->val$transferedUbiIds:Ljava/util/List;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p0, Lcom/miui/gallery/data/OldThumbnailTransferer$1;->val$transferedUbiServerIds:Ljava/util/List;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v0    # "dbImage":Lcom/miui/gallery/data/DBImage;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

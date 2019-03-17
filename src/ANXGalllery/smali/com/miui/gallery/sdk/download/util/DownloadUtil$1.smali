.class final Lcom/miui/gallery/sdk/download/util/DownloadUtil$1;
.super Ljava/lang/Object;
.source "DownloadUtil.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/sdk/download/util/DownloadUtil;->resumeInterrupted()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isShared:Z

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(ZLjava/util/List;)V
    .locals 0

    .prologue
    .line 448
    iput-boolean p1, p0, Lcom/miui/gallery/sdk/download/util/DownloadUtil$1;->val$isShared:Z

    iput-object p2, p0, Lcom/miui/gallery/sdk/download/util/DownloadUtil$1;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x0

    .line 451
    if-eqz p1, :cond_1

    .line 452
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 453
    iget-boolean v5, p0, Lcom/miui/gallery/sdk/download/util/DownloadUtil$1;->val$isShared:Z

    if-eqz v5, :cond_0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/ShareMediaManager;->convertToMediaId(J)J

    move-result-wide v0

    .line 454
    .local v0, "id":J
    :goto_1
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 455
    .local v3, "serverType":I
    sget-object v4, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 456
    .local v4, "type":Lcom/miui/gallery/sdk/download/DownloadType;
    new-instance v5, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    invoke-direct {v5}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setUri(Landroid/net/Uri;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setType(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->build()Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v2

    .line 457
    .local v2, "item":Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    iget-object v5, p0, Lcom/miui/gallery/sdk/download/util/DownloadUtil$1;->val$items:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 453
    .end local v0    # "id":J
    .end local v2    # "item":Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    .end local v3    # "serverType":I
    .end local v4    # "type":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_0
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_1

    .line 460
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method

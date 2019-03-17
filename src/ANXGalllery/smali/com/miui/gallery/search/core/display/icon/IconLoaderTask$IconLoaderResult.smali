.class public Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;
.super Ljava/lang/Object;
.source "IconLoaderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconLoaderResult"
.end annotation


# instance fields
.field public downloadUri:Landroid/net/Uri;

.field public facePositionRect:Landroid/graphics/RectF;

.field public iconUri:Landroid/net/Uri;

.field public localFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "iconUri"    # Landroid/net/Uri;
    .param p2, "localFilePath"    # Ljava/lang/String;
    .param p3, "downloadUri"    # Landroid/net/Uri;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->access$000()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;->facePositionRect:Landroid/graphics/RectF;

    .line 43
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;->iconUri:Landroid/net/Uri;

    .line 44
    iput-object p2, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;->localFilePath:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;->downloadUri:Landroid/net/Uri;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "iconUri"    # Landroid/net/Uri;
    .param p2, "localFilePath"    # Ljava/lang/String;
    .param p3, "downloadUri"    # Landroid/net/Uri;
    .param p4, "facePositionRect"    # Landroid/graphics/RectF;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    if-eqz p4, :cond_0

    .line 51
    iput-object p4, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;->facePositionRect:Landroid/graphics/RectF;

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;->localFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;->downloadUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

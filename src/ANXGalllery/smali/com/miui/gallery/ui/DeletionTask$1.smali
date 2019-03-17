.class Lcom/miui/gallery/ui/DeletionTask$1;
.super Ljava/lang/Object;
.source "DeletionTask.java"

# interfaces
.implements Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/DeletionTask;-><init>()V
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
        "Lcom/miui/gallery/ui/DeletionTask$Param;",
        "[J>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doProcess([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Lcom/miui/gallery/ui/DeletionTask$Param;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/DeletionTask$1;->doProcess([Lcom/miui/gallery/ui/DeletionTask$Param;)[J

    move-result-object v0

    return-object v0
.end method

.method public doProcess([Lcom/miui/gallery/ui/DeletionTask$Param;)[J
    .locals 7
    .param p1, "params"    # [Lcom/miui/gallery/ui/DeletionTask$Param;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 26
    new-array v1, v4, [J

    const-wide/16 v2, -0x70

    aput-wide v2, v1, v6

    .line 27
    .local v1, "result":[J
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/DocumentProviderUtils;->needRequestExternalSDCardPermission(Landroid/content/Context;)Z

    move-result v0

    .line 28
    .local v0, "needRequestExternalSDCardPermission":Z
    aget-object v2, p1, v6

    iget v2, v2, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteBy:I

    if-nez v2, :cond_2

    .line 29
    if-eqz v0, :cond_1

    .line 38
    .end local v1    # "result":[J
    :cond_0
    :goto_0
    return-object v1

    .line 30
    .restart local v1    # "result":[J
    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v6

    iget v3, v3, Lcom/miui/gallery/ui/DeletionTask$Param;->mDupType:I

    aget-object v4, p1, v6

    iget v4, v4, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteOptions:I

    aget-object v5, p1, v6

    iget v5, v5, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteReason:I

    aget-object v6, p1, v6

    iget-object v6, v6, Lcom/miui/gallery/ui/DeletionTask$Param;->mIds:[J

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/gallery/provider/CloudUtils;->deleteById(Landroid/content/Context;III[J)[J

    move-result-object v1

    goto :goto_0

    .line 31
    :cond_2
    aget-object v2, p1, v6

    iget v2, v2, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteBy:I

    if-ne v2, v4, :cond_3

    .line 32
    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v6

    iget v3, v3, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteOptions:I

    aget-object v4, p1, v6

    iget v4, v4, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteReason:I

    aget-object v5, p1, v6

    iget-object v5, v5, Lcom/miui/gallery/ui/DeletionTask$Param;->mPaths:[Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/provider/CloudUtils;->deleteByPath(Landroid/content/Context;II[Ljava/lang/String;)[J

    move-result-object v1

    goto :goto_0

    .line 34
    :cond_3
    aget-object v2, p1, v6

    iget v2, v2, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteBy:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 35
    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v6

    iget v3, v3, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteOptions:I

    aget-object v4, p1, v6

    iget v4, v4, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteReason:I

    aget-object v5, p1, v6

    iget-object v5, v5, Lcom/miui/gallery/ui/DeletionTask$Param;->mIds:[J

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/provider/CloudUtils;->deleteAlbum(Landroid/content/Context;II[J)[J

    move-result-object v1

    goto :goto_0

    .line 38
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

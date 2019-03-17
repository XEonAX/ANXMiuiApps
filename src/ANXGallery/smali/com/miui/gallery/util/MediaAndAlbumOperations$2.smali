.class final Lcom/miui/gallery/util/MediaAndAlbumOperations$2;
.super Ljava/lang/Object;
.source "MediaAndAlbumOperations.java"

# interfaces
.implements Lcom/miui/gallery/ui/ProduceCreationDialog$OnOperationSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/MediaAndAlbumOperations;->doProduceCreation(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$checkedItems:Ljava/util/List;

.field final synthetic val$listener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$2;->val$checkedItems:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$2;->val$listener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationSelected(I)Z
    .locals 3
    .param p1, "ops"    # I

    .prologue
    .line 64
    sget-object v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;->THUMBNAIL:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    .line 65
    .local v0, "imageType":Lcom/miui/gallery/picker/helper/Picker$ImageType;
    packed-switch p1, :pswitch_data_0

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$2;->val$checkedItems:Ljava/util/List;

    invoke-static {v1, p1, v2}, Lcom/miui/gallery/ui/ProduceCreationDialog;->checkCreationCondition(Landroid/content/Context;ILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$2;->val$checkedItems:Ljava/util/List;

    invoke-static {v1, p1, v2, v0}, Lcom/miui/gallery/util/IntentUtil;->doCreation(Landroid/app/Activity;ILjava/util/List;Lcom/miui/gallery/picker/helper/Picker$ImageType;)V

    .line 87
    iget-object v1, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$2;->val$listener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$2;->val$listener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;->onComplete([J)V

    .line 90
    :cond_0
    const/4 v1, 0x1

    .line 92
    :goto_1
    return v1

    .line 67
    :pswitch_0
    sget-object v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;->THUMBNAIL:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    .line 68
    const-string v1, "creation"

    const-string v2, "creation_click_collage"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_1
    sget-object v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;->THUMBNAIL:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    .line 73
    const-string v1, "creation"

    const-string v2, "creation_click_photomovie"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_2
    sget-object v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN_OR_DOWNLOAD_INFO:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    .line 78
    const-string v1, "creation"

    const-string v2, "creation_click_print"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

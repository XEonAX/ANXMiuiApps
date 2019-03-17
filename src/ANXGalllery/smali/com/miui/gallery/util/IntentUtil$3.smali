.class final Lcom/miui/gallery/util/IntentUtil$3;
.super Ljava/lang/Object;
.source "IntentUtil.java"

# interfaces
.implements Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/IntentUtil;->doCreation(Landroid/app/Activity;ILjava/util/List;Lcom/miui/gallery/picker/helper/Picker$ImageType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$creationOps:I


# direct methods
.method constructor <init>(ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 968
    iput p1, p0, Lcom/miui/gallery/util/IntentUtil$3;->val$creationOps:I

    iput-object p2, p0, Lcom/miui/gallery/util/IntentUtil$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 0

    .prologue
    .line 971
    invoke-static {}, Lcom/miui/gallery/util/IntentUtil;->access$000()V

    .line 972
    return-void
.end method

.method public onSuccess([Landroid/net/Uri;Ljava/util/List;)V
    .locals 4
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 976
    .local p2, "originInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;>;"
    iget v2, p0, Lcom/miui/gallery/util/IntentUtil$3;->val$creationOps:I

    packed-switch v2, :pswitch_data_0

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 978
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/gallery/util/IntentUtil$3;->val$activity:Landroid/app/Activity;

    const-class v3, Lcom/miui/gallery/collage/CollageActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 979
    .local v0, "intentCollage":Landroid/content/Intent;
    iget-object v2, p0, Lcom/miui/gallery/util/IntentUtil$3;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v0, p1}, Lcom/miui/gallery/util/IntentUtil;->access$100(Landroid/app/Activity;Landroid/content/Intent;[Landroid/net/Uri;)V

    goto :goto_0

    .line 982
    .end local v0    # "intentCollage":Landroid/content/Intent;
    :pswitch_1
    invoke-static {}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->getInstance()Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/util/IntentUtil$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->checkAbleOrDownload(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 983
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/gallery/util/IntentUtil$3;->val$activity:Landroid/app/Activity;

    const-class v3, Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 984
    .local v1, "intentPhotoMovie":Landroid/content/Intent;
    iget-object v2, p0, Lcom/miui/gallery/util/IntentUtil$3;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v1, p1}, Lcom/miui/gallery/util/IntentUtil;->access$100(Landroid/app/Activity;Landroid/content/Intent;[Landroid/net/Uri;)V

    goto :goto_0

    .line 988
    .end local v1    # "intentPhotoMovie":Landroid/content/Intent;
    :pswitch_2
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/util/IntentUtil$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, p1, p2}, Lcom/miui/gallery/util/PrintInstallHelper;->printPhotos(Landroid/app/Activity;[Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    .line 976
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

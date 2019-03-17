.class Lcom/miui/gallery/ui/PeoplePageFragment$2;
.super Lcom/miui/gallery/widget/AntiDoubleItemClickListener;
.source "PeoplePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PeoplePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PeoplePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-direct {p0}, Lcom/miui/gallery/widget/AntiDoubleItemClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAntiDoubleItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$600(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/adapter/PeoplePageAdapter;

    move-result-object v7

    .line 248
    invoke-virtual {v7, p3}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getPeopleIdOfItem(I)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "peopleId":Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$600(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/adapter/PeoplePageAdapter;

    move-result-object v7

    .line 250
    invoke-virtual {v7, p3}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getPeopleLocalIdOfItem(I)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "peopleLocalId":Ljava/lang/String;
    check-cast p2, Lcom/miui/gallery/ui/PeoplePageGridItem;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Lcom/miui/gallery/ui/PeoplePageGridItem;->getName()Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, "peopleName":Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$700(Lcom/miui/gallery/ui/PeoplePageFragment;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 253
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$800(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 254
    new-instance v6, Lcom/miui/gallery/ui/ProcessTask;

    new-instance v7, Lcom/miui/gallery/ui/PeoplePageFragment$2$1;

    invoke-direct {v7, p0, v4}, Lcom/miui/gallery/ui/PeoplePageFragment$2$1;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment$2;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/miui/gallery/ui/ProcessTask;-><init>(Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;)V

    .line 264
    .local v6, "processTask":Lcom/miui/gallery/ui/ProcessTask;, "Lcom/miui/gallery/ui/ProcessTask<Ljava/lang/Void;Ljava/lang/Boolean;>;"
    new-instance v7, Lcom/miui/gallery/ui/PeoplePageFragment$2$2;

    invoke-direct {v7, p0, v4, v3, v5}, Lcom/miui/gallery/ui/PeoplePageFragment$2$2;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/miui/gallery/ui/ProcessTask;->setCompleteListener(Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;)V

    .line 279
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v7, v7, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v8, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    const v9, 0x7f0c029e

    invoke-virtual {v8, v9}, Lcom/miui/gallery/ui/PeoplePageFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/miui/gallery/ui/ProcessTask;->showProgress(Landroid/app/Activity;Ljava/lang/String;)V

    .line 280
    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v7, v8}, Lcom/miui/gallery/ui/ProcessTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 313
    .end local v6    # "processTask":Lcom/miui/gallery/ui/ProcessTask;, "Lcom/miui/gallery/ui/ProcessTask<Ljava/lang/Void;Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$900(Lcom/miui/gallery/ui/PeoplePageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 282
    new-instance v1, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    .line 283
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    .line 284
    invoke-static {v7}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$900(Lcom/miui/gallery/ui/PeoplePageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v5

    :goto_1
    invoke-direct {v1, v8, v9, v3, v7}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v1, "faceMediaSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    new-instance v8, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iget-object v9, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v9, v9, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v10, Lcom/miui/gallery/ui/PeoplePageFragment$2$3;

    invoke-direct {v10, p0, v4, v3, v5}, Lcom/miui/gallery/ui/PeoplePageFragment$2$3;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v9, v1, v10}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;-><init>(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;)V

    invoke-static {v7, v8}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$1102(Lcom/miui/gallery/ui/PeoplePageFragment;Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;)Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .line 292
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$1100(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->show()V

    goto :goto_0

    .line 284
    .end local v1    # "faceMediaSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$900(Lcom/miui/gallery/ui/PeoplePageFragment;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 295
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 296
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 297
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "server_id_of_album"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v7, "local_id_of_album"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v7, "album_name"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v7, "relationType"

    iget-object v8, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    .line 304
    invoke-static {v8}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$600(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/adapter/PeoplePageAdapter;

    move-result-object v8

    .line 305
    invoke-virtual {v8, p3}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getRelationTypeOfItem(I)I

    move-result v8

    .line 303
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    const-string v7, "face_album_cover"

    iget-object v8, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    .line 307
    invoke-static {v8}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$600(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/adapter/PeoplePageAdapter;

    move-result-object v8

    invoke-virtual {v8, p3}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getThumbFilePath(I)Ljava/lang/String;

    move-result-object v8

    .line 306
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v7, "face_position_rect"

    iget-object v8, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v8}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$600(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/adapter/PeoplePageAdapter;

    move-result-object v8

    invoke-virtual {v8, p3}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getFaceRegionRectF(I)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 309
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 310
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v7, v7, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-class v8, Lcom/miui/gallery/activity/facebaby/FacePageActivity;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 311
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-virtual {v7, v2}, Lcom/miui/gallery/ui/PeoplePageFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

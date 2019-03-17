.class Lcom/miui/gallery/ui/FacePageFragment$19$2;
.super Ljava/lang/Object;
.source "FacePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/FacePageFragment$19;->onConfirm(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/FacePageFragment$19;

.field final synthetic val$newName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/FacePageFragment$19;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/FacePageFragment$19;

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$19$2;->this$1:Lcom/miui/gallery/ui/FacePageFragment$19;

    iput-object p2, p0, Lcom/miui/gallery/ui/FacePageFragment$19$2;->val$newName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1118
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/FacePageFragment$19$2;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 7
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 1121
    iget-object v5, p0, Lcom/miui/gallery/ui/FacePageFragment$19$2;->this$1:Lcom/miui/gallery/ui/FacePageFragment$19;

    iget-object v5, v5, Lcom/miui/gallery/ui/FacePageFragment$19;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v6, p0, Lcom/miui/gallery/ui/FacePageFragment$19$2;->val$newName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getGroupByPeopleName(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    move-result-object v4

    .line 1122
    .local v4, "newFace":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    if-eqz v4, :cond_0

    .line 1123
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/miui/gallery/ui/FacePageFragment$19$2;->this$1:Lcom/miui/gallery/ui/FacePageFragment$19;

    iget-object v5, v5, Lcom/miui/gallery/ui/FacePageFragment$19;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-class v6, Lcom/miui/gallery/activity/facebaby/FacePageActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1124
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1125
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "server_id_of_album"

    iget-object v6, v4, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v5, "local_id_of_album"

    invoke-virtual {v4}, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const-string v5, "album_name"

    iget-object v6, p0, Lcom/miui/gallery/ui/FacePageFragment$19$2;->val$newName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const-string v5, "relationType"

    iget v6, v4, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->relationType:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1129
    const/4 v5, 0x1

    new-array v2, v5, [Landroid/graphics/RectF;

    .line 1130
    .local v2, "faceRegion":[Landroid/graphics/RectF;
    iget-object v5, v4, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/miui/gallery/provider/FaceManager;->queryCoverImageOfOnePerson(Ljava/lang/String;[Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v1

    .line 1131
    .local v1, "coverPath":Ljava/lang/String;
    const-string v5, "face_album_cover"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const-string v5, "face_position_rect"

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1133
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1134
    iget-object v5, p0, Lcom/miui/gallery/ui/FacePageFragment$19$2;->this$1:Lcom/miui/gallery/ui/FacePageFragment$19;

    iget-object v5, v5, Lcom/miui/gallery/ui/FacePageFragment$19;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v5, v3}, Lcom/miui/gallery/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 1135
    iget-object v5, p0, Lcom/miui/gallery/ui/FacePageFragment$19$2;->this$1:Lcom/miui/gallery/ui/FacePageFragment$19;

    iget-object v5, v5, Lcom/miui/gallery/ui/FacePageFragment$19;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v5}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 1137
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "coverPath":Ljava/lang/String;
    .end local v2    # "faceRegion":[Landroid/graphics/RectF;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v5, 0x0

    return-object v5
.end method

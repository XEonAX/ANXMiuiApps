.class Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$1;
.super Ljava/lang/Object;
.source "OwnerBabyAlbumSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v1, v1, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mNickName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    const v3, 0x7f0c01e0

    .line 92
    invoke-virtual {v2, v3}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    const v3, 0x7f0c026a

    .line 94
    invoke-virtual {v2, v3}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 107
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    .line 99
    .local v0, "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v2, v2, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mPeopleId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->toBabyInfo(Ljava/lang/String;I)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v1, v1, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mNickName:Ljava/lang/String;

    new-instance v2, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    iget-object v3, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v3, v3, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mFaceAlbumLocalId:Ljava/lang/Long;

    .line 104
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v3, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v3, v3, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mPeopleId:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v6, v6, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mNickName:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v4, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    .line 106
    invoke-static {v4}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->access$000(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;)Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-static {v1, v0, v2, v3, v4}, Lcom/miui/gallery/util/baby/FindFace2CreateBabyAlbum;->createBabyAlbumAndSaveBabyInfo(Ljava/lang/String;Lcom/miui/gallery/cloud/baby/BabyInfo;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

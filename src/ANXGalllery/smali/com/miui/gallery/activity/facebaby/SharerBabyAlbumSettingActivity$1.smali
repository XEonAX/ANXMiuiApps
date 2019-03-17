.class Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$1;
.super Ljava/lang/Object;
.source "SharerBabyAlbumSettingActivity.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->saveBabyInfo()V
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
.field final synthetic this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

.field final synthetic val$newBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;Lcom/miui/gallery/cloud/baby/BabyInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    iput-object p2, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$1;->val$newBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 8
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 65
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    invoke-static {v2}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->access$000(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v0

    .line 66
    .local v0, "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    if-eqz v0, :cond_0

    .line 67
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    iget-object v2, v2, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mIsAutoupdate:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    .line 68
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    iget-object v2, v2, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mPeopleId:Ljava/lang/String;

    iput-object v2, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    .line 72
    :goto_0
    const/16 v2, 0x19

    .line 73
    invoke-static {v2}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "editColumnElement":Ljava/lang/String;
    const-string/jumbo v3, "update %s set %s=%s, %s=\'%s\', %s=coalesce(replace(%s, \'%s\', \'\') || \'%s\', \'%s\') where %s=%s"

    const/16 v2, 0xc

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v5, "shareAlbum"

    aput-object v5, v4, v2

    const-string v2, "babyInfoJson"

    aput-object v2, v4, v6

    const/4 v5, 0x2

    if-nez v0, :cond_1

    const-string v2, ""

    .line 79
    :goto_1
    aput-object v2, v4, v5

    const/4 v2, 0x3

    const-string v5, "peopleId"

    aput-object v5, v4, v2

    const/4 v5, 0x4

    if-nez v0, :cond_2

    const-string v2, ""

    :goto_2
    aput-object v2, v4, v5

    const/4 v2, 0x5

    const-string v5, "editedColumns"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string v5, "editedColumns"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    aput-object v1, v4, v2

    const/16 v2, 0x8

    aput-object v1, v4, v2

    const/16 v2, 0x9

    aput-object v1, v4, v2

    const/16 v2, 0xa

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/16 v2, 0xb

    iget-object v5, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    iget-object v5, v5, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mBabyAlbumLocalId:Ljava/lang/Long;

    aput-object v5, v4, v2

    .line 74
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->safeExec(Ljava/lang/String;)Z

    .line 87
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    .line 88
    invoke-virtual {v2, v3, v7, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 89
    return-object v7

    .line 70
    .end local v1    # "editColumnElement":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$1;->val$newBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    goto :goto_0

    .line 79
    .restart local v1    # "editColumnElement":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/baby/BabyInfo;->toJSON()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    goto :goto_2
.end method

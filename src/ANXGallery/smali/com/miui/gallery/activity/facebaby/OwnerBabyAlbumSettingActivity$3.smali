.class Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;
.super Ljava/lang/Object;
.source "OwnerBabyAlbumSettingActivity.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->setCoverFaceAndBirthdayForCreateBaby()V
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
.field final synthetic this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 8
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 139
    iget-object v6, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    invoke-static {v6, p1}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->access$100(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V

    .line 140
    iget-object v6, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v6, v6, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mPeopleId:Ljava/lang/String;

    .line 141
    invoke-static {v6}, Lcom/miui/gallery/provider/FaceManager;->queryTimeOfOldestImagesOfOnePerson(Ljava/lang/String;)J

    move-result-wide v4

    .line 142
    .local v4, "oldestItemTime":J
    invoke-static {v4, v5}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->getCurrentYearMonthDay(J)[I

    move-result-object v1

    .line 143
    .local v1, "days":[I
    const/4 v6, 0x0

    aget v3, v1, v6

    .line 144
    .local v3, "year":I
    const/4 v6, 0x1

    aget v2, v1, v6

    .line 145
    .local v2, "month":I
    const/4 v6, 0x2

    aget v0, v1, v6

    .line 146
    .local v0, "day":I
    iget-object v6, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    invoke-static {v3, v2, v0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->combine2Birthday(III)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthday:Ljava/lang/String;

    .line 147
    iget-object v6, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v7, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v7, v7, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthday:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->getBirthYearMonthDay(Ljava/lang/String;)V

    .line 148
    iget-object v6, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v6, v6, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3$1;

    invoke-direct {v7, p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3$1;-><init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    const/4 v6, 0x0

    return-object v6
.end method

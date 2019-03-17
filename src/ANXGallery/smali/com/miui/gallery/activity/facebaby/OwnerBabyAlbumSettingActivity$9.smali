.class Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$9;
.super Ljava/lang/Object;
.source "OwnerBabyAlbumSettingActivity.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->refreshBabyFace()V
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
    .line 462
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$9;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$9;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 1
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$9;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    invoke-static {v0, p1}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->access$300(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V

    .line 466
    const/4 v0, 0x0

    return-object v0
.end method

.class Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$2;
.super Ljava/lang/Object;
.source "SharerBabyAlbumSettingActivity.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->refreshSelfRelationText(Z)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$2;->this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$2;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/String;
    .locals 1
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$2;->this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    invoke-static {v0}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->access$100(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

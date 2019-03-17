.class Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3$1;
.super Ljava/lang/Object;
.source "OwnerBabyAlbumSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3$1;->this$1:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3$1;->this$1:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;

    iget-object v0, v0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v0, v0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mChooseDate:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3$1;->this$1:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;

    iget-object v0, v0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v0, v0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mChooseDate:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3$1;->this$1:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;

    iget-object v1, v1, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v1, v1, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    :cond_0
    return-void
.end method

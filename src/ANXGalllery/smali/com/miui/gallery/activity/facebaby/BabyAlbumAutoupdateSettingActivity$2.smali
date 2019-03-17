.class Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity$2;
.super Landroid/os/AsyncTask;
.source "BabyAlbumAutoupdateSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->getPeopleNameAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;

.field final synthetic val$associateFaceAlbumPreference:Ljava/lang/ref/SoftReference;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;Ljava/lang/ref/SoftReference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity$2;->this$0:Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;

    iput-object p2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity$2;->val$associateFaceAlbumPreference:Ljava/lang/ref/SoftReference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity$2;->this$0:Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;

    invoke-static {v0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->access$100(Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/provider/FaceManager;->queryPersonName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity$2;->val$associateFaceAlbumPreference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 171
    .local v0, "preference":Lmiui/preference/ValuePreference;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 175
    .end local v0    # "preference":Lmiui/preference/ValuePreference;
    :cond_0
    return-void
.end method

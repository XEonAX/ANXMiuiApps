.class Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$3;
.super Lcom/miui/gallery/threadpool/FutureHandler;
.source "SharerBabyAlbumSettingActivity.java"


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
        "Lcom/miui/gallery/threadpool/FutureHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

.field final synthetic val$needSyncIfEmpty:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$3;->this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    iput-boolean p2, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$3;->val$needSyncIfEmpty:Z

    invoke-direct {p0}, Lcom/miui/gallery/threadpool/FutureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/miui/gallery/threadpool/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    .local v0, "relationText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    iget-boolean v1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$3;->val$needSyncIfEmpty:Z

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$3;->this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    invoke-static {v1}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->access$200(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;)V

    .line 187
    .end local v0    # "relationText":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$3;->this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->access$402(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;Lcom/miui/gallery/threadpool/Future;)Lcom/miui/gallery/threadpool/Future;

    .line 188
    return-void

    .line 182
    .restart local v0    # "relationText":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$3;->this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    invoke-static {v1}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->access$300(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$3;->this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    invoke-static {v1, v0}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->access$302(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$3;->this$0:Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    iget-object v1, v1, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mRelationPre:Landroid/preference/Preference;

    check-cast v1, Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

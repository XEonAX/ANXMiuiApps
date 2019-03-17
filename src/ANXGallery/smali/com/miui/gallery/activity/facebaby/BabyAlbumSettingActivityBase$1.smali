.class Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase$1;
.super Ljava/lang/Object;
.source "BabyAlbumSettingActivityBase.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase$1;->this$0:Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase$1;->this$0:Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase$1;->this$0:Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->getIntentToAutoUploadPage()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 99
    return v2
.end method

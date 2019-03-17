.class Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity$1;
.super Ljava/lang/Object;
.source "BabyAlbumAutoupdateSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity$1;->this$0:Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;

    invoke-static {v0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->access$000(Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;)V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

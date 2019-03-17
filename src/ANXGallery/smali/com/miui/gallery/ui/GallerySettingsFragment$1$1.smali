.class Lcom/miui/gallery/ui/GallerySettingsFragment$1$1;
.super Ljava/lang/Object;
.source "GallerySettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/GallerySettingsFragment$1;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/GallerySettingsFragment$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/GallerySettingsFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/GallerySettingsFragment$1;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$1$1;->this$1:Lcom/miui/gallery/ui/GallerySettingsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 113
    iget-object v1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$1$1;->this$1:Lcom/miui/gallery/ui/GallerySettingsFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/GallerySettingsFragment$1;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/GallerySettingsFragment;->access$000(Lcom/miui/gallery/ui/GallerySettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$1$1;->this$1:Lcom/miui/gallery/ui/GallerySettingsFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/GallerySettingsFragment$1;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 115
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 116
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$1$1;->this$1:Lcom/miui/gallery/ui/GallerySettingsFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/GallerySettingsFragment$1;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/GallerySettingsFragment;->access$000(Lcom/miui/gallery/ui/GallerySettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    .line 117
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-static {v0}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    const-string v3, "com.miui.gallery.cloud.provider"

    invoke-static {v1, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 116
    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 118
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

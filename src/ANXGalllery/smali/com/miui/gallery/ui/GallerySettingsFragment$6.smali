.class Lcom/miui/gallery/ui/GallerySettingsFragment$6;
.super Ljava/lang/Object;
.source "GallerySettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/GallerySettingsFragment;->onBackupOnlyWifiChange(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

.field final synthetic val$isBackupOnlyWifi:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/GallerySettingsFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/GallerySettingsFragment;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$6;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    iput-boolean p2, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$6;->val$isBackupOnlyWifi:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 522
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$6;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->access$500(Lcom/miui/gallery/ui/GallerySettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$6;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->access$500(Lcom/miui/gallery/ui/GallerySettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$6;->val$isBackupOnlyWifi:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 524
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$6;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    iget-boolean v1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$6;->val$isBackupOnlyWifi:Z

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/GallerySettingsFragment;->access$600(Lcom/miui/gallery/ui/GallerySettingsFragment;Z)V

    .line 526
    :cond_0
    return-void
.end method

.class Lcom/miui/gallery/ui/GallerySettingsFragment$5;
.super Ljava/lang/Object;
.source "GallerySettingsFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/GallerySettingsFragment;->showSyncSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/GallerySettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/GallerySettingsFragment;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$5;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/DialogFragment;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 429
    return-void
.end method

.method public onConfirm(Landroid/app/DialogFragment;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCOUNT_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    iget-object v1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$5;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 424
    return-void
.end method

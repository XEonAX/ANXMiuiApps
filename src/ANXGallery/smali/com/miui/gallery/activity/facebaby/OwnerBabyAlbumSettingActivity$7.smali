.class Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$7;
.super Ljava/lang/Object;
.source "OwnerBabyAlbumSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->rename(Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$editView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$7;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iput-object p2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$7;->val$editView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$7;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$7;->val$editView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$7;->val$dialog:Landroid/app/AlertDialog;

    .line 316
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->access$200(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;Ljava/lang/String;Landroid/app/AlertDialog;)Ljava/lang/String;

    .line 318
    return-void
.end method

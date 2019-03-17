.class Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$8;
.super Ljava/lang/Object;
.source "OwnerBabyAlbumSettingActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$editView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$8;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iput-object p2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$8;->val$editView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$8;->val$dialog:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$8;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 333
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$8;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$8;->val$editView:Landroid/widget/EditText;

    .line 334
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$8;->val$dialog:Landroid/app/AlertDialog;

    .line 333
    invoke-static {v1, v2, v3}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->access$200(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;Ljava/lang/String;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "errorTips":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$8;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 339
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 329
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 324
    return-void
.end method

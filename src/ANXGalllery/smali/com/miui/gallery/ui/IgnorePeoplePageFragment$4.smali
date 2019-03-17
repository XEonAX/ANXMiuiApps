.class Lcom/miui/gallery/ui/IgnorePeoplePageFragment$4;
.super Ljava/lang/Object;
.source "IgnorePeoplePageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->showMergeOrRenameDialog(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

.field final synthetic val$existPeopleName:Ljava/lang/String;

.field final synthetic val$recoveryPeople:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$4;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$4;->val$recoveryPeople:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    iput-object p3, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$4;->val$existPeopleName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 190
    iget-object v2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$4;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    iget-object v3, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$4;->val$recoveryPeople:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    invoke-static {v2, v3}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$602(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    .line 191
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$4;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-class v3, Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "original_name"

    iget-object v3, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$4;->val$existPeopleName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 195
    iget-object v2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$4;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/16 v3, 0x27

    invoke-virtual {v2, v1, v3}, Lcom/miui/gallery/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 196
    return-void
.end method

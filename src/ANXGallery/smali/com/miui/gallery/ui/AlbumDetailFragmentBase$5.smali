.class Lcom/miui/gallery/ui/AlbumDetailFragmentBase$5;
.super Ljava/lang/Object;
.source "AlbumDetailFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onEnableAutoUpload(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

.field final synthetic val$sharePending:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$5;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iput-boolean p2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$5;->val$sharePending:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 483
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.action.MICLOUD_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$5;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 485
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$5;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->access$202(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Z)Z

    .line 486
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$5;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iget-boolean v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$5;->val$sharePending:Z

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->access$302(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Z)Z

    .line 487
    return-void
.end method

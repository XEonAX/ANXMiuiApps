.class Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$2;
.super Ljava/lang/Object;
.source "LoginAndSyncCheckFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->checkSystemSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$2;->this$0:Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$2;->this$0:Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c04cb

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$2;->this$0:Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->access$000(Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;I)V

    .line 129
    return-void
.end method

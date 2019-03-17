.class Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$1;
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
    .line 117
    iput-object p1, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$1;->this$0:Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.action.MICLOUD_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$1;->this$0:Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

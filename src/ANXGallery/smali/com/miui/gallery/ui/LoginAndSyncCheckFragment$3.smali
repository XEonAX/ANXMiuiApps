.class Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$3;
.super Ljava/lang/Object;
.source "LoginAndSyncCheckFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->checkGallerySync()V
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
    .line 139
    iput-object p1, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$3;->this$0:Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$3;->this$0:Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/IntentUtil;->enterGallerySetting(Landroid/content/Context;)V

    .line 143
    return-void
.end method

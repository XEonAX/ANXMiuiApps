.class Lcom/miui/gallery/ui/ProduceCreationDialog$1;
.super Ljava/lang/Object;
.source "ProduceCreationDialog.java"

# interfaces
.implements Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ProduceCreationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/ProduceCreationDialog;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/ProduceCreationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/ProduceCreationDialog;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$1;->this$0:Lcom/miui/gallery/ui/ProduceCreationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(ZII)V
    .locals 3
    .param p1, "isSuccess"    # Z
    .param p2, "errorCode"    # I
    .param p3, "failReason"    # I

    .prologue
    const/4 v2, 0x2

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$1;->this$0:Lcom/miui/gallery/ui/ProduceCreationDialog;

    invoke-static {v0}, Lcom/miui/gallery/ui/ProduceCreationDialog;->access$000(Lcom/miui/gallery/ui/ProduceCreationDialog;)Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->setRemainWhenClick(IZ)V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$1;->this$0:Lcom/miui/gallery/ui/ProduceCreationDialog;

    invoke-static {v0}, Lcom/miui/gallery/ui/ProduceCreationDialog;->access$000(Lcom/miui/gallery/ui/ProduceCreationDialog;)Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->setInformation(ILjava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$1;->this$0:Lcom/miui/gallery/ui/ProduceCreationDialog;

    invoke-static {v0}, Lcom/miui/gallery/ui/ProduceCreationDialog;->access$000(Lcom/miui/gallery/ui/ProduceCreationDialog;)Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->notifyDataSetChanged()V

    .line 89
    return-void
.end method

.method public onInstallLimited()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onInstalling()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$1;->this$0:Lcom/miui/gallery/ui/ProduceCreationDialog;

    invoke-static {v0}, Lcom/miui/gallery/ui/ProduceCreationDialog;->access$000(Lcom/miui/gallery/ui/ProduceCreationDialog;)Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->setRemainWhenClick(IZ)V

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$1;->this$0:Lcom/miui/gallery/ui/ProduceCreationDialog;

    invoke-static {v0}, Lcom/miui/gallery/ui/ProduceCreationDialog;->access$000(Lcom/miui/gallery/ui/ProduceCreationDialog;)Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;

    move-result-object v0

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0396

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->setInformation(ILjava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$1;->this$0:Lcom/miui/gallery/ui/ProduceCreationDialog;

    invoke-static {v0}, Lcom/miui/gallery/ui/ProduceCreationDialog;->access$000(Lcom/miui/gallery/ui/ProduceCreationDialog;)Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->notifyDataSetChanged()V

    .line 82
    return-void
.end method

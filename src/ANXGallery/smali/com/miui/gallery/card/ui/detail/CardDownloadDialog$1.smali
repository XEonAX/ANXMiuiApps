.class Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$1;
.super Ljava/lang/Object;
.source "CardDownloadDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$1;->this$0:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "anInterface"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 36
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$1;->this$0:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->access$000(Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;)Z

    move-result v0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

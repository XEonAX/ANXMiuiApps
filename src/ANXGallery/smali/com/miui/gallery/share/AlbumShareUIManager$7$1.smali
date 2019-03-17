.class Lcom/miui/gallery/share/AlbumShareUIManager$7$1;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareUIManager$7;->onCompletion(Lcom/miui/gallery/share/Path;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/AlbumShareUIManager$7;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/AlbumShareUIManager$7;Landroid/app/Activity;Lcom/miui/gallery/share/CloudSharerMediaSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/AlbumShareUIManager$7;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7$1;->this$0:Lcom/miui/gallery/share/AlbumShareUIManager$7;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7$1;->val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 629
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7$1;->this$0:Lcom/miui/gallery/share/AlbumShareUIManager$7;

    iget-boolean v0, v0, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$showAcceptDialog:Z

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7$1;->val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7$1;->this$0:Lcom/miui/gallery/share/AlbumShareUIManager$7;

    iget-object v2, v2, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$acceptListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    iget-object v3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7$1;->this$0:Lcom/miui/gallery/share/AlbumShareUIManager$7;

    iget-object v3, v3, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$denyListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    iget-object v4, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7$1;->this$0:Lcom/miui/gallery/share/AlbumShareUIManager$7;

    iget-object v4, v4, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/share/AlbumShareUIManager;->showDialogToAccept(Landroid/app/Activity;Lcom/miui/gallery/share/CloudSharerMediaSet;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 635
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7$1;->val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getPath()Lcom/miui/gallery/share/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7$1;->this$0:Lcom/miui/gallery/share/AlbumShareUIManager$7;

    iget-object v2, v2, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$acceptListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    iget-object v3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7$1;->this$0:Lcom/miui/gallery/share/AlbumShareUIManager$7;

    iget-object v3, v3, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/share/AlbumShareUIManager;->tryToAccept(Lcom/miui/gallery/share/Path;Landroid/app/Activity;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/Dialog;)V

    goto :goto_0
.end method

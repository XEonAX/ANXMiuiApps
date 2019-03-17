.class Lcom/miui/gallery/share/AlbumShareUIManager$24$1;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareUIManager$24;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/AlbumShareUIManager$24;

.field final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/AlbumShareUIManager$24;Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/AlbumShareUIManager$24;

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$24$1;->this$0:Lcom/miui/gallery/share/AlbumShareUIManager$24;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$24$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$24$1;->this$0:Lcom/miui/gallery/share/AlbumShareUIManager$24;

    iget-object v1, v0, Lcom/miui/gallery/share/AlbumShareUIManager$24;->val$path:Lcom/miui/gallery/share/Path;

    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$24$1;->this$0:Lcom/miui/gallery/share/AlbumShareUIManager$24;

    iget-object v2, v0, Lcom/miui/gallery/share/AlbumShareUIManager$24;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$24$1;->this$0:Lcom/miui/gallery/share/AlbumShareUIManager$24;

    iget-object v3, v0, Lcom/miui/gallery/share/AlbumShareUIManager$24;->val$acceptListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$24$1;->val$dialog:Landroid/content/DialogInterface;

    check-cast v0, Landroid/app/AlertDialog;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/miui/gallery/share/AlbumShareUIManager;->tryToAccept(Lcom/miui/gallery/share/Path;Landroid/app/Activity;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/Dialog;)V

    .line 1174
    return-void
.end method

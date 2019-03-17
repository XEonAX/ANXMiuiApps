.class final Lcom/miui/gallery/share/AlbumShareUIManager$24;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareUIManager;->showDialogToAccept(Landroid/app/Activity;Lcom/miui/gallery/share/CloudSharerMediaSet;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$acceptListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$path:Lcom/miui/gallery/share/Path;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/Path;Landroid/app/Activity;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$24;->val$path:Lcom/miui/gallery/share/Path;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$24;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$24;->val$acceptListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1166
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/share/AlbumShareUIManager$24$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/share/AlbumShareUIManager$24$1;-><init>(Lcom/miui/gallery/share/AlbumShareUIManager$24;Landroid/content/DialogInterface;)V

    .line 1167
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1176
    return-void
.end method

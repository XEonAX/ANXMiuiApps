.class Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$1;
.super Ljava/lang/Object;
.source "FontDownloadManager.java"

# interfaces
.implements Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->downloadFontResource(Landroid/content/Context;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;

.field final synthetic val$callBack:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;

.field final synthetic val$data:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;

    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$1;->val$data:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$1;->val$callBack:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/DialogFragment;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 38
    return-void
.end method

.method public onConfirm(Landroid/app/DialogFragment;)V
    .locals 4
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$1;->val$data:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$1;->val$callBack:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->access$000(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;Z)V

    .line 33
    return-void
.end method

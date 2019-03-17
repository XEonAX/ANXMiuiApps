.class Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2$1;
.super Ljava/lang/Object;
.source "DialogFontMenu.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;->onCompleted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2$1;->this$1:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 103
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2$1;->this$1:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;->val$textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 106
    .local v1, "typeface":Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2$1;->this$1:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;->val$textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->setTypeFace(Landroid/graphics/Typeface;)V

    .line 108
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

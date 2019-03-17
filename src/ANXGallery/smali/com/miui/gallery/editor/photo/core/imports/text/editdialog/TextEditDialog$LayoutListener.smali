.class Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;
.super Ljava/lang/Object;
.source "TextEditDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutListener"
.end annotation


# instance fields
.field private mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)V
    .locals 1

    .prologue
    .line 250
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$1;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 256
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 257
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 259
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 260
    const-string v3, "TextEditDialog"

    const-string v4, "---onGlobalLayout start---"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$1000(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->mRect:Landroid/graphics/Rect;

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$1200(Landroid/view/View;ILandroid/graphics/Rect;)I

    move-result v1

    .line 263
    .local v1, "heightDifference":I
    const-string v3, "TextEditDialog"

    const-string v4, "heightDifference : %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    if-lez v1, :cond_4

    .line 265
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$800(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)I

    move-result v3

    if-eq v3, v1, :cond_2

    .line 266
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v3, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$802(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;I)I

    .line 268
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$1300(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)I

    move-result v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$1300(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)I

    move-result v3

    if-eq v3, v1, :cond_3

    .line 269
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v3, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$1302(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;I)I

    .line 270
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->KEYBOARD:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->ordinal()I

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$1400(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;I)V

    .line 272
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$1500(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)V

    .line 282
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$800(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$900(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;I)V

    .line 283
    const-string v3, "TextEditDialog"

    const-string v4, "onGlobalLayout mCurrentHeight %d"

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$1300(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 274
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$1300(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)I

    move-result v3

    if-lez v3, :cond_5

    .line 275
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$200(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->KEYBOARD:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    if-ne v3, v4, :cond_5

    .line 276
    const-string v3, "TextEditDialog"

    const-string v4, "onGlobalLayout dismiss"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->dismissSafely()V

    .line 280
    :cond_5
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v3, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$1302(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;I)I

    goto :goto_1
.end method

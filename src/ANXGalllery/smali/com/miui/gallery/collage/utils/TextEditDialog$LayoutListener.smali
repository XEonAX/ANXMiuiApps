.class Lcom/miui/gallery/collage/utils/TextEditDialog$LayoutListener;
.super Ljava/lang/Object;
.source "TextEditDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/utils/TextEditDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutListener"
.end annotation


# instance fields
.field mHeight:I

.field mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/miui/gallery/collage/utils/TextEditDialog;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/collage/utils/TextEditDialog;)V
    .locals 1

    .prologue
    .line 141
    iput-object p1, p0, Lcom/miui/gallery/collage/utils/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/collage/utils/TextEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/collage/utils/TextEditDialog$LayoutListener;->mHeight:I

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/utils/TextEditDialog$LayoutListener;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/utils/TextEditDialog;Lcom/miui/gallery/collage/utils/TextEditDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/collage/utils/TextEditDialog;
    .param p2, "x1"    # Lcom/miui/gallery/collage/utils/TextEditDialog$1;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/utils/TextEditDialog$LayoutListener;-><init>(Lcom/miui/gallery/collage/utils/TextEditDialog;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 147
    iget-object v1, p0, Lcom/miui/gallery/collage/utils/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/collage/utils/TextEditDialog;

    invoke-static {v1}, Lcom/miui/gallery/collage/utils/TextEditDialog;->access$600(Lcom/miui/gallery/collage/utils/TextEditDialog;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/collage/utils/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/collage/utils/TextEditDialog;

    invoke-static {v2}, Lcom/miui/gallery/collage/utils/TextEditDialog;->access$700(Lcom/miui/gallery/collage/utils/TextEditDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/collage/utils/TextEditDialog$LayoutListener;->mRect:Landroid/graphics/Rect;

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/collage/utils/TextEditDialog;->access$800(Landroid/view/View;ILandroid/graphics/Rect;)I

    move-result v0

    .line 148
    .local v0, "height":I
    const-string v1, "TextEditDialog"

    const-string/jumbo v2, "widgetHeight : %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    if-gtz v0, :cond_1

    .line 150
    iget v1, p0, Lcom/miui/gallery/collage/utils/TextEditDialog$LayoutListener;->mHeight:I

    if-lez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/miui/gallery/collage/utils/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/collage/utils/TextEditDialog;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/utils/TextEditDialog;->dismissSafely()V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iput v0, p0, Lcom/miui/gallery/collage/utils/TextEditDialog$LayoutListener;->mHeight:I

    .line 155
    iget-object v1, p0, Lcom/miui/gallery/collage/utils/TextEditDialog$LayoutListener;->this$0:Lcom/miui/gallery/collage/utils/TextEditDialog;

    iget v2, p0, Lcom/miui/gallery/collage/utils/TextEditDialog$LayoutListener;->mHeight:I

    invoke-static {v1, v2}, Lcom/miui/gallery/collage/utils/TextEditDialog;->access$900(Lcom/miui/gallery/collage/utils/TextEditDialog;I)V

    goto :goto_0
.end method

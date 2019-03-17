.class Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo$2;
.super Ljava/lang/Object;
.source "CommonBottomMenuWithUndo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo$2;->this$0:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo$2;->this$0:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->access$000(Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;)Lcom/miui/gallery/editor/photo/app/RenderRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo$2;->this$0:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->access$000(Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;)Lcom/miui/gallery/editor/photo/app/RenderRecord;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/app/RenderRecord;->nextRecord()V

    .line 60
    :cond_0
    return-void
.end method

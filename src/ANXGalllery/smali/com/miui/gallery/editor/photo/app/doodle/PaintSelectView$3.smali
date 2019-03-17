.class Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$3;
.super Ljava/lang/Object;
.source "PaintSelectView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->expansionPaint(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

.field final synthetic val$expansion:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$3;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    iput-boolean p2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$3;->val$expansion:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$3;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$3;->val$expansion:Z

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->expansionPaint(Z)V

    .line 230
    return-void
.end method

.class Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment$1;
.super Ljava/lang/Object;
.source "DoodleGesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->access$000(Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;)Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->expansionPaint(Z)V

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->access$000(Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;)Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->expansionPaint(ZJ)V

    .line 33
    return-void
.end method

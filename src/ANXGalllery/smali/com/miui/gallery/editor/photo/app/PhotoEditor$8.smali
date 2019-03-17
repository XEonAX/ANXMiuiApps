.class Lcom/miui/gallery/editor/photo/app/PhotoEditor$8;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnViewReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$8;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewReady()V
    .locals 3

    .prologue
    .line 854
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$8;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1600(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/MenuFragment;

    move-result-object v0

    .line 855
    .local v0, "menu":Lcom/miui/gallery/editor/photo/app/MenuFragment;
    if-eqz v0, :cond_0

    .line 856
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$8;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1, v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Lcom/miui/gallery/editor/photo/app/MenuFragment;)V

    .line 860
    :goto_0
    return-void

    .line 858
    :cond_0
    const-string v1, "PhotoEditor"

    const-string v2, "menu already exit."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

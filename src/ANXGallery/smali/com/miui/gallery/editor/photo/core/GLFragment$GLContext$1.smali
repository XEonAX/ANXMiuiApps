.class Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$1;
.super Ljava/lang/Object;
.source "GLFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->performCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$1;->this$0:Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$1;->this$0:Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->access$000(Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;)Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;->onCreated()V

    .line 22
    return-void
.end method

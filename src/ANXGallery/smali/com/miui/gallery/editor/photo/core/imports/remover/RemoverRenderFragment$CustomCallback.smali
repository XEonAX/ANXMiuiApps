.class Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$CustomCallback;
.super Ljava/lang/Object;
.source "RemoverRenderFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$CustomCallback;->this$0:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$1;

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$CustomCallback;-><init>(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

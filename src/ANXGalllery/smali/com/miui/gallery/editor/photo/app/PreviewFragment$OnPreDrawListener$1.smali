.class Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnPreDrawListener$1;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnPreDrawListener;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnPreDrawListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnPreDrawListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnPreDrawListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnPreDrawListener$1;->this$1:Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnPreDrawListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnPreDrawListener$1;->this$1:Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnPreDrawListener;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnPreDrawListener;->this$0:Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mOnViewReadyListener:Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnViewReadyListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnViewReadyListener;->onViewReady()V

    .line 125
    return-void
.end method

.class Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$1;
.super Ljava/lang/Object;
.source "AbstractNaviFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1201eb

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;->onExport()V

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f12013a

    if-ne v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;->onDiscard()V

    goto :goto_0

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not support view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

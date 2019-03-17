.class Lcom/miui/gallery/editor/photo/app/MenuFragment$1;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/MenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/MenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/MenuFragment;

    .prologue
    .line 137
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment$1;, "Lcom/miui/gallery/editor/photo/app/MenuFragment$1;"
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment$1;, "Lcom/miui/gallery/editor/photo/app/MenuFragment$1;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f12013b

    if-ne v0, v1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/MenuFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->notifySave()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f12013a

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/MenuFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->notifyDiscard()V

    goto :goto_0
.end method

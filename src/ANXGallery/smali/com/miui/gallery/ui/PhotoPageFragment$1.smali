.class Lcom/miui/gallery/ui/PhotoPageFragment$1;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;->getPhotoPageInteractionListener()Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionBarHeight()I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getHeight()I

    move-result v0

    .line 391
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenuBarHeight()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getMenuCollapsedHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataChanged()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->onContentChanged()V

    .line 377
    :cond_0
    return-void
.end method

.method public setActionBarVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 381
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$200(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V

    .line 384
    :cond_0
    return-void
.end method

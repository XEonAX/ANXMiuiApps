.class Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/activity/HomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/view/ActionMode$Callback;

.field final synthetic this$0:Lcom/miui/gallery/activity/HomePageActivity;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/activity/HomePageActivity;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p2, p0, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    .line 286
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 317
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageActivity;->access$800(Lcom/miui/gallery/activity/HomePageActivity;)Lmiui/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageActivity;->access$800(Lcom/miui/gallery/activity/HomePageActivity;)Lmiui/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/view/ViewPager;->setDraggable(Z)V

    .line 320
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 295
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v1}, Lcom/miui/gallery/activity/HomePageActivity;->access$700(Lcom/miui/gallery/activity/HomePageActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/HomePageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lmiui/R$id;->view_pager:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 297
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lmiui/view/ViewPager;

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    check-cast v0, Lmiui/view/ViewPager;

    .end local v0    # "view":Landroid/view/View;
    invoke-static {v1, v0}, Lcom/miui/gallery/activity/HomePageActivity;->access$802(Lcom/miui/gallery/activity/HomePageActivity;Lmiui/view/ViewPager;)Lmiui/view/ViewPager;

    .line 299
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v1}, Lcom/miui/gallery/activity/HomePageActivity;->access$800(Lcom/miui/gallery/activity/HomePageActivity;)Lmiui/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiui/view/ViewPager;->setDraggable(Z)V

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v1, v3}, Lcom/miui/gallery/activity/HomePageActivity;->access$702(Lcom/miui/gallery/activity/HomePageActivity;Z)Z

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v1}, Lcom/miui/gallery/activity/HomePageActivity;->access$800(Lcom/miui/gallery/activity/HomePageActivity;)Lmiui/view/ViewPager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 304
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v1}, Lcom/miui/gallery/activity/HomePageActivity;->access$800(Lcom/miui/gallery/activity/HomePageActivity;)Lmiui/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiui/view/ViewPager;->setDraggable(Z)V

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v1, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

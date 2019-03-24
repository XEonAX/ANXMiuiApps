.class public Lcom/miui/internal/view/ActionModeImpl;
.super Landroid/view/ActionMode;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;
.implements Lmiui/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;
    }
.end annotation


# static fields
.field public static final TYPE_FLOATING:I = 0x1

.field public static final TYPE_PRIMARY:I


# instance fields
.field private bA:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

.field protected mActionModeView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/internal/widget/ActionModeView;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mp:Landroid/view/ActionMode$Callback;

.field mq:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mq:Z

    .line 48
    iput-object p1, p0, Lcom/miui/internal/view/ActionModeImpl;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/miui/internal/view/ActionModeImpl;->mp:Landroid/view/ActionMode$Callback;

    .line 50
    new-instance p2, Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-direct {p2, p1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 51
    iget-object p1, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 52
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mp:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v1, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 66
    return v0

    .line 68
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mq:Z

    if-eqz v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mq:Z

    .line 98
    iget-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v0}, Lcom/miui/internal/widget/ActionModeView;->closeMode()V

    .line 99
    iget-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->bA:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->bA:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    invoke-interface {v0, p0}, Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;->onActionModeFinish(Landroid/view/ActionMode;)V

    .line 102
    :cond_1
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getCustomView not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 141
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/miui/internal/view/ActionModeImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSubtitle not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getTitle not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invalidate()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mp:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 89
    nop

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/miui/internal/view/ActionModeImpl;->mp:Landroid/view/ActionMode$Callback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/view/ActionModeImpl;->mp:Landroid/view/ActionMode$Callback;

    invoke-interface {p1, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/miui/internal/view/ActionModeImpl;->mp:Landroid/view/ActionMode$Callback;

    if-nez p1, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/view/ActionModeImpl;->invalidate()V

    .line 155
    return-void
.end method

.method public onStart(Z)V
    .locals 0

    .line 159
    return-void
.end method

.method public onStop(Z)V
    .locals 0

    .line 167
    if-nez p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/miui/internal/view/ActionModeImpl;->mp:Landroid/view/ActionMode$Callback;

    invoke-interface {p1, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 170
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/view/ActionModeImpl;->mp:Landroid/view/ActionMode$Callback;

    .line 172
    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 0

    .line 163
    return-void
.end method

.method public setActionModeCallback(Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/miui/internal/view/ActionModeImpl;->bA:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    .line 56
    return-void
.end method

.method public setActionModeView(Lcom/miui/internal/widget/ActionModeView;)V
    .locals 1

    .line 59
    invoke-interface {p1, p0}, Lcom/miui/internal/widget/ActionModeView;->addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 61
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 136
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setCustomView not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 126
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setSubTitle not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 79
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setSubTitle not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTitle(I)V
    .locals 1

    .line 116
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setTitle not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 74
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setTitle not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

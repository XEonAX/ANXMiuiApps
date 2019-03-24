.class public Lmiui/hybrid/HybridActivity;
.super Lmiui/app/Activity;
.source "SourceFile"


# static fields
.field public static final EXTRA_URL:Ljava/lang/String; = "com.miui.sdk.hybrid.extra.URL"


# instance fields
.field private ys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiui/hybrid/HybridView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/HybridActivity;->ys:Ljava/util/Set;

    return-void
.end method

.method private cn()V
    .locals 3

    .line 149
    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->ys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    .line 150
    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    :cond_0
    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->destroy()V

    .line 156
    :cond_1
    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->ys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 158
    return-void
.end method


# virtual methods
.method protected getConfigResId()I
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 3

    .line 63
    invoke-virtual {p0}, Lmiui/hybrid/HybridActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->hybrid_main:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 208
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 209
    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->ys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    .line 210
    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->co()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v1

    .line 211
    invoke-virtual {v1, p1, p2, p3}, Lcom/miui/internal/hybrid/HybridManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 212
    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lmiui/hybrid/HybridActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/hybrid/HybridActivity;->setContentView(Landroid/view/View;)V

    .line 38
    sget v0, Lcom/miui/internal/R$id;->hybrid_view:I

    invoke-virtual {p0, v0}, Lmiui/hybrid/HybridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    instance-of v1, v0, Lmiui/hybrid/HybridView;

    if-eqz v1, :cond_2

    .line 40
    const/4 v1, 0x0

    .line 41
    if-eqz p1, :cond_0

    .line 42
    const-string v1, "com.miui.sdk.hybrid.extra.URL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    :cond_0
    if-nez v1, :cond_1

    .line 45
    invoke-virtual {p0}, Lmiui/hybrid/HybridActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    const-string v1, "com.miui.sdk.hybrid.extra.URL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    :cond_1
    check-cast v0, Lmiui/hybrid/HybridView;

    invoke-virtual {p0}, Lmiui/hybrid/HybridActivity;->getConfigResId()I

    move-result p1

    invoke-virtual {p0, v0, p1, v1}, Lmiui/hybrid/HybridActivity;->registerHybridView(Landroid/view/View;ILjava/lang/String;)V

    .line 52
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 198
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 199
    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->ys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    .line 200
    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->co()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lcom/miui/internal/hybrid/HybridManager;->onDestroy()V

    .line 202
    goto :goto_0

    .line 203
    :cond_0
    invoke-direct {p0}, Lmiui/hybrid/HybridActivity;->cn()V

    .line 204
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 217
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 218
    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->ys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    .line 219
    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->co()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/hybrid/HybridManager;->isDetached()Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->goBack()V

    .line 221
    const/4 p1, 0x1

    return p1

    .line 223
    :cond_0
    goto :goto_0

    .line 225
    :cond_1
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 180
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 181
    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->ys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    .line 182
    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->co()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcom/miui/internal/hybrid/HybridManager;->onPause()V

    .line 184
    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 171
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 172
    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->ys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    .line 173
    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->co()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lcom/miui/internal/hybrid/HybridManager;->onResume()V

    .line 175
    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 162
    invoke-super {p0}, Lmiui/app/Activity;->onStart()V

    .line 163
    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->ys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    .line 164
    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->co()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/miui/internal/hybrid/HybridManager;->onStart()V

    .line 166
    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 189
    invoke-super {p0}, Lmiui/app/Activity;->onStop()V

    .line 190
    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->ys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    .line 191
    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->co()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Lcom/miui/internal/hybrid/HybridManager;->onStop()V

    .line 193
    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method protected final registerHybridView(Landroid/view/View;)V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lmiui/hybrid/HybridActivity;->getConfigResId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/hybrid/HybridActivity;->registerHybridView(Landroid/view/View;I)V

    .line 92
    return-void
.end method

.method protected final registerHybridView(Landroid/view/View;I)V
    .locals 1

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/hybrid/HybridActivity;->registerHybridView(Landroid/view/View;ILjava/lang/String;)V

    .line 108
    return-void
.end method

.method protected final registerHybridView(Landroid/view/View;ILjava/lang/String;)V
    .locals 2

    .line 124
    instance-of v0, p1, Lmiui/hybrid/HybridView;

    if-eqz v0, :cond_0

    .line 127
    check-cast p1, Lmiui/hybrid/HybridView;

    .line 128
    new-instance v0, Lcom/miui/internal/hybrid/HybridManager;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/hybrid/HybridManager;-><init>(Landroid/app/Activity;Lmiui/hybrid/HybridView;)V

    .line 129
    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridView;->setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V

    .line 130
    iget-object v1, p0, Lmiui/hybrid/HybridActivity;->ys:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v0, p2, p3}, Lcom/miui/internal/hybrid/HybridManager;->init(ILjava/lang/String;)V

    .line 132
    return-void

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "view being registered is not a hybrid view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final unregisterHybridView(Landroid/view/View;)V
    .locals 1

    .line 142
    instance-of v0, p1, Lmiui/hybrid/HybridView;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->ys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 146
    return-void

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "view being unregistered is not a hybrid view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

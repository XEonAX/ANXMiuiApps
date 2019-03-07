.class Lcom/xiaomi/stat/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/e;

.field private b:I


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 206
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->j(Lcom/xiaomi/stat/e;)I

    .line 171
    iget v0, p0, Lcom/xiaomi/stat/q;->b:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {v2}, Lcom/xiaomi/stat/e;->k(Lcom/xiaomi/stat/e;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 176
    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->l(Lcom/xiaomi/stat/e;)J

    move-result-wide v4

    .line 177
    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sub-long v2, v4, v2

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Ljava/lang/String;JJ)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->h(Lcom/xiaomi/stat/e;)I

    .line 159
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/stat/q;->b:I

    .line 162
    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;J)J

    .line 164
    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->i(Lcom/xiaomi/stat/e;)V

    .line 165
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 202
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->e(Lcom/xiaomi/stat/e;)I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;J)J

    .line 143
    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;I)I

    .line 144
    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;I)I

    .line 146
    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->f(Lcom/xiaomi/stat/e;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/stat/r;

    invoke-direct {v1, p0}, Lcom/xiaomi/stat/r;-><init>(Lcom/xiaomi/stat/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->g(Lcom/xiaomi/stat/e;)I

    .line 154
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->m(Lcom/xiaomi/stat/e;)I

    .line 184
    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->e(Lcom/xiaomi/stat/e;)I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {v2}, Lcom/xiaomi/stat/e;->n(Lcom/xiaomi/stat/e;)J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 186
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v6

    .line 187
    iget-object v1, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->o(Lcom/xiaomi/stat/e;)I

    move-result v2

    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->p(Lcom/xiaomi/stat/e;)I

    move-result v3

    sub-long v4, v6, v4

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;IIJJ)V

    .line 190
    iget-object v0, p0, Lcom/xiaomi/stat/q;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->f(Lcom/xiaomi/stat/e;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/stat/s;

    invoke-direct {v1, p0}, Lcom/xiaomi/stat/s;-><init>(Lcom/xiaomi/stat/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 198
    :cond_0
    return-void
.end method

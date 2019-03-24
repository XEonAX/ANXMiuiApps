.class public abstract Lmiui/util/async/tasks/ContentResolverQueryTask;
.super Lmiui/util/async/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;,
        Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/util/async/Task<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private Kc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/util/async/TaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private final Ll:[Ljava/lang/String;

.field private final Ln:[Ljava/lang/String;

.field private final Lo:Ljava/lang/String;

.field private final Lp:Ljava/lang/String;

.field private Lq:Z

.field private Lr:Z

.field private Ls:Z

.field private Lt:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

.field private hO:Ljava/lang/String;

.field private final zX:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    .line 132
    iput-object p1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->zX:Landroid/net/Uri;

    .line 133
    iput-object p2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Ln:[Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lo:Ljava/lang/String;

    .line 135
    iput-object p4, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Ll:[Ljava/lang/String;

    .line 136
    iput-object p5, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lp:Ljava/lang/String;

    .line 137
    return-void
.end method


# virtual methods
.method public disableAutoRequery()V
    .locals 2

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lq:Z

    .line 159
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lt:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lt:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lt:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    .line 164
    :cond_0
    return-void
.end method

.method public enableAutoRequery()Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/async/tasks/ContentResolverQueryTask<",
            "TT;>.Cookie;"
        }
    .end annotation

    .line 145
    iget-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lq:Z

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lq:Z

    .line 147
    new-instance v1, Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    invoke-direct {v1, p0}, Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;-><init>(Lmiui/util/async/tasks/ContentResolverQueryTask;)V

    iput-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lt:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    .line 148
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->zX:Landroid/net/Uri;

    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lt:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    .line 149
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    :cond_0
    new-instance v0, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;

    invoke-direct {v0, p0}, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;-><init>(Lmiui/util/async/tasks/ContentResolverQueryTask;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 7

    .line 168
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->hO:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 169
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Ln:[Ljava/lang/String;

    const/16 v2, 0x3b

    const/4 v3, 0x0

    const/16 v4, 0x5b

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Ln:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    move v1, v5

    :goto_0
    iget-object v6, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Ln:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    iget-object v6, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Ln:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_0
    const-string v1, "]@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_1
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->zX:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lo:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 181
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Ll:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 183
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Ll:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :goto_1
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Ll:[Ljava/lang/String;

    array-length v1, v1

    if-ge v5, v1, :cond_2

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Ll:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 189
    :cond_2
    const-string v1, "]@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_3
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_4
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lp:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 194
    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->hO:Ljava/lang/String;

    .line 199
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v1

    invoke-interface {v1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 201
    :cond_6
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->hO:Ljava/lang/String;

    return-object v0
.end method

.method public onPrepare(Lmiui/util/async/TaskManager;)V
    .locals 1

    .line 259
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Kc:Ljava/lang/ref/WeakReference;

    .line 260
    return-void
.end method

.method pause()V
    .locals 1

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lr:Z

    .line 243
    return-void
.end method

.method protected query()Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 215
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->zX:Landroid/net/Uri;

    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Ln:[Ljava/lang/String;

    iget-object v4, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lo:Ljava/lang/String;

    iget-object v5, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Ll:[Ljava/lang/String;

    iget-object v6, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lp:Ljava/lang/String;

    .line 216
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 215
    return-object v0
.end method

.method requery()V
    .locals 1

    .line 223
    iget-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lr:Z

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Ls:Z

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Kc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Kc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    .line 228
    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->restart()Z

    .line 230
    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->disableAutoRequery()V

    .line 236
    :cond_2
    :goto_0
    return-void
.end method

.method resume()V
    .locals 2

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Lr:Z

    .line 251
    iget-boolean v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Ls:Z

    if-eqz v1, :cond_0

    .line 252
    iput-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->Ls:Z

    .line 253
    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->requery()V

    .line 255
    :cond_0
    return-void
.end method

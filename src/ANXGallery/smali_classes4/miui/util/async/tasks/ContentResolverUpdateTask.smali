.class public Lmiui/util/async/tasks/ContentResolverUpdateTask;
.super Lmiui/util/async/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/async/Task<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final Lk:Ljava/lang/String;

.field private final Ll:[Ljava/lang/String;

.field private final Lm:Landroid/content/ContentValues;

.field private hO:Ljava/lang/String;

.field private final zX:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    .line 58
    iput-object p1, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->zX:Landroid/net/Uri;

    .line 59
    iput-object p2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->Lm:Landroid/content/ContentValues;

    .line 60
    iput-object p3, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->Lk:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->Ll:[Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public doLoad()Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->zX:Landroid/net/Uri;

    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->Lm:Landroid/content/ContentValues;

    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->Lk:Ljava/lang/String;

    iget-object v4, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->Ll:[Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doLoad()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverUpdateTask;->doLoad()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .line 66
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->hO:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 67
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->Lk:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->zX:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->hO:Ljava/lang/String;

    goto :goto_1

    .line 70
    :cond_0
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->zX:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->Ll:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 74
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->Ll:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->Ll:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 77
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->Ll:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    const-string v1, "]@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_2
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->Lk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->hO:Ljava/lang/String;

    .line 84
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v1

    invoke-interface {v1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 87
    :cond_3
    :goto_1
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->hO:Ljava/lang/String;

    return-object v0
.end method

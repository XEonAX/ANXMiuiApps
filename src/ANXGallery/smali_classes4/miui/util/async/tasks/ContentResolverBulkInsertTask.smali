.class public Lmiui/util/async/tasks/ContentResolverBulkInsertTask;
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
.field private final Lj:[Landroid/content/ContentValues;

.field private hO:Ljava/lang/String;

.field private final zX:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;[Landroid/content/ContentValues;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    .line 44
    iput-object p1, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->zX:Landroid/net/Uri;

    .line 45
    iput-object p2, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->Lj:[Landroid/content/ContentValues;

    .line 46
    return-void
.end method


# virtual methods
.method public doLoad()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->zX:Landroid/net/Uri;

    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->Lj:[Landroid/content/ContentValues;

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 78
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
    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->doLoad()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .line 50
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->hO:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 51
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 52
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->Lj:[Landroid/content/ContentValues;

    array-length v1, v1

    if-nez v1, :cond_0

    .line 54
    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 56
    :cond_0
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->Lj:[Landroid/content/ContentValues;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->Lj:[Landroid/content/ContentValues;

    const/4 v2, 0x1

    array-length v1, v1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 58
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->Lj:[Landroid/content/ContentValues;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_1
    :goto_1
    const-string v1, "]@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->zX:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->hO:Ljava/lang/String;

    .line 65
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v1

    invoke-interface {v1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 67
    :cond_2
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->hO:Ljava/lang/String;

    return-object v0
.end method

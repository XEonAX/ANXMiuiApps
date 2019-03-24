.class public Lmiui/util/async/tasks/ContentResolverBatchTask;
.super Lmiui/util/async/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/async/Task<",
        "[",
        "Landroid/content/ContentProviderResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final Lh:Ljava/lang/String;

.field private final Li:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private hO:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    .line 45
    iput-object p1, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->Lh:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->Li:Ljava/util/ArrayList;

    .line 47
    return-void
.end method


# virtual methods
.method public bridge synthetic doLoad()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverBatchTask;->doLoad()[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public doLoad()[Landroid/content/ContentProviderResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->Lh:Ljava/lang/String;

    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->Li:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 83
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .line 51
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->hO:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 52
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 53
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->Li:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 55
    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 57
    :cond_0
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->Li:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->Li:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 59
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->Li:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    :goto_1
    const-string v1, "]@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->Lh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->hO:Ljava/lang/String;

    .line 66
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v1

    invoke-interface {v1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 68
    :cond_2
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->hO:Ljava/lang/String;

    return-object v0
.end method

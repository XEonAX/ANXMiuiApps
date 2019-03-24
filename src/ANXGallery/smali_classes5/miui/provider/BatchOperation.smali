.class public final Lmiui/provider/BatchOperation;
.super Ljava/lang/Object;
.source "BatchOperation.java"


# static fields
.field public static final BATCH_EXECUTE_SIZE:I = 0x64


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "authority"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lmiui/provider/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/provider/BatchOperation;->mOperations:Ljava/util/ArrayList;

    .line 31
    iput-object p2, p0, Lmiui/provider/BatchOperation;->mAuthority:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public add(Landroid/content/ContentProviderOperation;)V
    .locals 1
    .param p1, "cpo"    # Landroid/content/ContentProviderOperation;

    .line 39
    iget-object v0, p0, Lmiui/provider/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public execute()Landroid/net/Uri;
    .locals 4

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "result":Landroid/net/Uri;
    iget-object v1, p0, Lmiui/provider/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 50
    return-object v0

    .line 54
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmiui/provider/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lmiui/provider/BatchOperation;->mAuthority:Ljava/lang/String;

    iget-object v3, p0, Lmiui/provider/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 56
    .local v1, "results":[Landroid/content/ContentProviderResult;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 57
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 62
    .end local v1    # "results":[Landroid/content/ContentProviderResult;
    :cond_1
    :goto_0
    goto :goto_1

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "BatchOperation"

    const-string v3, "storing contact data failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e2":Landroid/os/RemoteException;
    goto :goto_1

    .line 58
    :catch_1
    move-exception v1

    .line 59
    .local v1, "e1":Landroid/content/OperationApplicationException;
    const-string v2, "BatchOperation"

    const-string v3, "storing contact data failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e1":Landroid/content/OperationApplicationException;
    goto :goto_0

    .line 63
    :goto_1
    iget-object v1, p0, Lmiui/provider/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 64
    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 43
    iget-object v0, p0, Lmiui/provider/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 35
    iget-object v0, p0, Lmiui/provider/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lmiui/provider/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 71
    .local v2, "op":Landroid/content/ContentProviderOperation;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .end local v2    # "op":Landroid/content/ContentProviderOperation;
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

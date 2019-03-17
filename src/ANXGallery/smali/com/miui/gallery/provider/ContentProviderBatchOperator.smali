.class public Lcom/miui/gallery/provider/ContentProviderBatchOperator;
.super Ljava/lang/Object;
.source "ContentProviderBatchOperator.java"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mBatchSize:I

.field private mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x32

    iput v0, p0, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->mBatchSize:I

    .line 19
    iput-object p1, p0, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->mAuthority:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->mBatchSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->mOperations:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public add(Landroid/content/Context;Landroid/content/ContentProviderOperation;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "operation"    # Landroid/content/ContentProviderOperation;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->mBatchSize:I

    if-lt v0, v1, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->apply(Landroid/content/Context;)V

    .line 37
    :cond_0
    return-void
.end method

.method public apply(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->mAuthority:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 48
    :cond_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ContentProviderBatchOperator"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

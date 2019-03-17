.class Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;
.super Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;
.source "SubTaskSeparatorTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OperationData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field typeIdsArrays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Long;)V
    .locals 1
    .param p1, "keys"    # [Ljava/lang/Long;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;-><init>([Ljava/lang/Object;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;->typeIdsArrays:Ljava/util/ArrayList;

    .line 94
    return-void
.end method


# virtual methods
.method putItemToType(JI)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "type"    # I

    .prologue
    .line 97
    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;->typeIdsArrays:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    const/4 v0, 0x0

    .line 99
    .local v0, "typeIdsPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p3, :cond_1

    .line 100
    :cond_0
    const-string v2, "CloudManager.SubTaskSeparatorTask"

    const-string v3, "New type group of [%d] is created! Last group is [%s]"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-nez v0, :cond_3

    const-string v1, "null"

    :goto_1
    invoke-static {v2, v3, v4, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    new-instance v0, Landroid/util/Pair;

    .end local v0    # "typeIdsPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .restart local v0    # "typeIdsPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;->typeIdsArrays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    return-void

    .line 98
    .end local v0    # "typeIdsPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;->typeIdsArrays:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;->typeIdsArrays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    move-object v0, v1

    goto :goto_0

    .line 100
    .restart local v0    # "typeIdsPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", count:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

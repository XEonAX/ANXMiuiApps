.class Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;
.super Ljava/lang/Object;
.source "PeopleCoverManager.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->doChoosePeopleCover(Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/provider/peoplecover/PeopleCover;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

.field final synthetic val$oldPeopleCover:Lcom/miui/gallery/provider/peoplecover/PeopleCover;

.field final synthetic val$peopleServerId:Ljava/lang/String;

.field final synthetic val$serverTag:Ljava/lang/String;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;Ljava/lang/String;JLjava/lang/String;Lcom/miui/gallery/provider/peoplecover/PeopleCover;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->this$0:Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    iput-object p2, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->val$peopleServerId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->val$start:J

    iput-object p5, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->val$serverTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->val$oldPeopleCover:Lcom/miui/gallery/provider/peoplecover/PeopleCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Ljava/lang/Integer;
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 133
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 136
    :cond_1
    const/4 v6, 0x0

    .line 137
    .local v6, "coverPosition":I
    const/4 v5, 0x0

    .line 138
    .local v5, "coverScore":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    :cond_2
    const/4 v7, 0x0

    .line 141
    .local v7, "score":I
    iget-object v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->this$0:Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    invoke-static {v0}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->access$400(Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/provider/peoplecover/BaseStrategy;

    .line 142
    .local v8, "strategy":Lcom/miui/gallery/provider/peoplecover/BaseStrategy;
    invoke-virtual {v8}, Lcom/miui/gallery/provider/peoplecover/BaseStrategy;->getWeight()I

    move-result v3

    invoke-virtual {v8, p1}, Lcom/miui/gallery/provider/peoplecover/BaseStrategy;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    mul-int/2addr v0, v3

    add-int/2addr v7, v0

    .line 143
    goto :goto_1

    :cond_3
    move v0, v1

    .line 142
    goto :goto_2

    .line 144
    .end local v8    # "strategy":Lcom/miui/gallery/provider/peoplecover/BaseStrategy;
    :cond_4
    if-le v7, v5, :cond_6

    .line 145
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 146
    move v5, v7

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->this$0:Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    invoke-static {v0}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->access$500(Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;)I

    move-result v0

    if-ne v7, v0, :cond_6

    .line 153
    .end local v7    # "score":I
    :cond_5
    :goto_3
    if-eqz v5, :cond_7

    .line 154
    const-string v0, "PeopleCoverManager"

    const-string/jumbo v1, "success choose cover for person: %s, position: %d, cost : %d"

    iget-object v2, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->val$peopleServerId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->val$start:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    invoke-interface {p1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 156
    iget-object v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->this$0:Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    iget-object v1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->val$peopleServerId:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->val$serverTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->val$oldPeopleCover:Lcom/miui/gallery/provider/peoplecover/PeopleCover;

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->setPeopleCover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/provider/peoplecover/PeopleCover;I)V

    .line 161
    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 151
    .restart local v7    # "score":I
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 158
    .end local v7    # "score":I
    :cond_7
    const-string v0, "PeopleCoverManager"

    const-string v1, "choose no cover for person: %s, cost : %d"

    iget-object v2, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->val$peopleServerId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->val$start:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->this$0:Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    iget-object v1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->val$peopleServerId:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->val$serverTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->val$oldPeopleCover:Lcom/miui/gallery/provider/peoplecover/PeopleCover;

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->setPeopleCover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/provider/peoplecover/PeopleCover;I)V

    goto :goto_4
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;->handle(Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

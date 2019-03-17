.class Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$1;
.super Ljava/lang/Object;
.source "PeopleCoverManager.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->startChooseCoverForAllPeople()V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$1;->this$0:Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 18
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 70
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-nez v15, :cond_1

    .line 71
    :cond_0
    const/4 v15, 0x0

    .line 98
    :goto_0
    return-object v15

    .line 73
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 74
    .local v12, "start":J
    const/4 v8, 0x0

    .line 75
    .local v8, "serverIdIndex":I
    const/4 v10, 0x1

    .line 76
    .local v10, "serverTagIndex":I
    const/4 v14, 0x0

    .line 77
    .local v14, "totalScoreStages":I
    const/4 v11, 0x0

    .line 78
    .local v11, "successCount":I
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 79
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "peopleServerId":Ljava/lang/String;
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 81
    .local v9, "serverTag":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v4

    .line 82
    .local v4, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-class v15, Lcom/miui/gallery/provider/peoplecover/PeopleCover;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v6, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/miui/gallery/dao/base/EntityManager;->find(Ljava/lang/Class;[Ljava/lang/String;)Lcom/miui/gallery/dao/base/Entity;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/provider/peoplecover/PeopleCover;

    .line 84
    .local v5, "oldPeopleCover":Lcom/miui/gallery/provider/peoplecover/PeopleCover;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->getServerTag()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 85
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$1;->this$0:Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    invoke-static {v15, v6, v9, v5}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->access$000(Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/provider/peoplecover/PeopleCover;)I

    move-result v7

    .line 89
    .local v7, "score":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$1;->this$0:Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    invoke-static {v15, v7}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->access$100(Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;I)I

    move-result v15

    add-int/2addr v14, v15

    .line 90
    if-lez v7, :cond_2

    .line 91
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 87
    .end local v7    # "score":I
    :cond_4
    invoke-virtual {v5}, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->getCoverScore()I

    move-result v7

    .restart local v7    # "score":I
    goto :goto_2

    .line 94
    .end local v4    # "em":Lcom/miui/gallery/dao/base/EntityManager;
    .end local v5    # "oldPeopleCover":Lcom/miui/gallery/provider/peoplecover/PeopleCover;
    .end local v6    # "peopleServerId":Ljava/lang/String;
    .end local v7    # "score":I
    .end local v9    # "serverTag":Ljava/lang/String;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v2, v16, v12

    .line 95
    .local v2, "cost":J
    const-string v15, "PeopleCoverManager"

    const-string v16, "finish choose cover for all people, cost time: %d"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$1;->this$0:Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    int-to-float v0, v14

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v16, v16, v17

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    invoke-static {v15, v0, v11}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->access$200(Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;FI)V

    .line 97
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$1;->this$0:Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    invoke-static {v15}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->access$300(Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;)V

    .line 98
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

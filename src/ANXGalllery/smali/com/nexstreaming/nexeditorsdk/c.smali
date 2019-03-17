.class final Lcom/nexstreaming/nexeditorsdk/c;
.super Ljava/lang/Object;
.source "nexTemplate.java"


# static fields
.field private static w:Ljava/lang/String;


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/e;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/e;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private D:Z

.field private E:I

.field private F:Z

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:F

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:Ljava/lang/String;

.field p:Z

.field q:F

.field r:Z

.field s:Ljava/lang/String;

.field t:Z

.field u:Lcom/nexstreaming/nexeditorsdk/g;

.field v:Z

.field private x:I

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/e;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "nexTemplate"

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/c;->x:I

    .line 93
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->g:F

    .line 94
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->h:I

    .line 96
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->i:I

    .line 97
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->j:I

    .line 99
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->k:I

    .line 100
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->l:I

    .line 102
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/c;->m:I

    .line 106
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/c;->p:Z

    .line 110
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/c;->r:Z

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    .line 113
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/c;->t:Z

    .line 122
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/c;->D:Z

    .line 123
    const v0, 0x9e3400

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->E:I

    .line 124
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/c;->F:Z

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->u:Lcom/nexstreaming/nexeditorsdk/g;

    .line 912
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/c;->v:Z

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->y:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->z:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->A:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->B:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->C:Ljava/util/Map;

    .line 138
    return-void
.end method


# virtual methods
.method a(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/nexeditorsdk/nexProject;",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2038
    const/4 v0, 0x0

    .line 2039
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 2040
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTopDrawInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2041
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getIsTransition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2042
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartTime()I

    move-result v0

    goto :goto_0

    .line 2044
    :cond_0
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndTime()I

    move-result v0

    goto :goto_0

    .line 2047
    :cond_1
    return v0
.end method

.method a(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z

    .line 592
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->g:F

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBGMMasterVolumeScale(F)V

    .line 593
    const/4 v0, 0x0

    return-object v0
.end method

.method a(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 608
    iput-boolean p4, p0, Lcom/nexstreaming/nexeditorsdk/c;->r:Z

    .line 609
    iput-boolean p5, p0, Lcom/nexstreaming/nexeditorsdk/c;->t:Z

    .line 611
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string/jumbo v1, "updateProjectWithTemplate(%b %b)"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->b:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {p1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setTemplateApplyMode(I)V

    .line 615
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->clearDrawInfo()V

    .line 616
    invoke-virtual {p0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/c;->c(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 638
    :goto_0
    return-object v0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->b:Ljava/lang/String;

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 619
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setTemplateApplyMode(I)V

    .line 621
    invoke-virtual {p0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/c;->d(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 623
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->i:I

    if-ltz v1, :cond_1

    .line 625
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->i:I

    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setProjectAudioFadeInTime(I)V

    .line 628
    :cond_1
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->j:I

    if-ltz v1, :cond_2

    .line 630
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->j:I

    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setProjectAudioFadeOutTime(I)V

    .line 633
    :cond_2
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 634
    invoke-virtual {p0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/c;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0

    .line 638
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Template version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;
    .locals 23

    .prologue
    .line 1500
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v5, "Template imageProject Apply Start(%d %d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/c;->B:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1503
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    .line 1504
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/c;->B:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/nexstreaming/nexeditorsdk/e;

    .line 1505
    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lcom/nexstreaming/nexeditorsdk/e;->a(Z)I

    move-result v4

    if-lt v4, v5, :cond_0

    .line 1507
    const/4 v10, 0x0

    .line 1508
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v12, v4, v5, v6}, Lcom/nexstreaming/nexeditorsdk/e;->a(IILjava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 1509
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/e;->j()Ljava/util/List;

    move-result-object v4

    .line 1511
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nexstreaming/nexeditorsdk/d;

    .line 1512
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v7, v12

    invoke-virtual/range {v4 .. v9}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Lcom/nexstreaming/nexeditorsdk/e;IF)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1515
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    if-lez v5, :cond_18

    .line 1516
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v5

    .line 1517
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1518
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1519
    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->clearDrawInfos()V

    .line 1521
    const v6, 0x7fffffff

    iput v6, v5, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    .line 1522
    const/high16 v6, -0x80000000

    iput v6, v5, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    .line 1524
    :goto_1
    iget v6, v12, Lcom/nexstreaming/nexeditorsdk/e;->a:I

    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/e;->i()I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lcom/nexstreaming/nexeditorsdk/nexClip;IIIFLjava/lang/String;Z)V

    .line 1525
    const/4 v6, 0x0

    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/e;->i()I

    move-result v7

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v6, v7}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;II)Ljava/lang/String;

    move-object v10, v5

    .line 1526
    goto :goto_0

    .line 1528
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Lcom/nexstreaming/nexeditorsdk/c;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/util/List;)I

    .line 1529
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 1531
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/nexstreaming/nexeditorsdk/c;->b(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;

    .line 1532
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v5, "Template imageProject Apply single effect(%d %d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    const/4 v4, 0x0

    .line 1677
    :goto_2
    return-object v4

    .line 1538
    :cond_3
    const/4 v4, 0x1

    .line 1539
    const/16 v17, 0x1

    .line 1540
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/c;->f()I

    move-result v20

    .line 1542
    const/4 v8, 0x0

    .line 1544
    const/4 v10, 0x0

    .line 1546
    const-string v5, ""

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    move/from16 v18, v4

    .line 1548
    :cond_4
    :goto_3
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v4

    if-lez v4, :cond_12

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/nexstreaming/nexeditorsdk/c;->F:Z

    if-nez v4, :cond_12

    .line 1550
    if-eqz v18, :cond_8

    .line 1552
    const/4 v4, 0x0

    move v13, v4

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/c;->y:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_7

    .line 1554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/c;->y:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/nexstreaming/nexeditorsdk/e;

    .line 1555
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v8, v4, v5}, Lcom/nexstreaming/nexeditorsdk/e;->a(IILjava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 1556
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/e;->j()Ljava/util/List;

    move-result-object v4

    .line 1558
    iget-object v5, v12, Lcom/nexstreaming/nexeditorsdk/e;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    .line 1560
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nexstreaming/nexeditorsdk/d;

    .line 1561
    move-object/from16 v0, p0

    iget v9, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v7, v12

    invoke-virtual/range {v4 .. v9}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Lcom/nexstreaming/nexeditorsdk/e;IF)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1564
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    move/from16 v0, v20

    if-le v5, v0, :cond_17

    .line 1565
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v5

    .line 1566
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1567
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1568
    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->clearDrawInfos()V

    .line 1570
    const v6, 0x7fffffff

    iput v6, v5, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    .line 1571
    const/high16 v6, -0x80000000

    iput v6, v5, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    .line 1573
    :goto_6
    iget v6, v12, Lcom/nexstreaming/nexeditorsdk/e;->a:I

    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/e;->i()I

    move-result v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lcom/nexstreaming/nexeditorsdk/nexClip;IIIFLjava/lang/String;Z)V

    .line 1574
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/e;->i()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v8, v6}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;II)Ljava/lang/String;

    move-object v10, v5

    .line 1575
    goto :goto_5

    .line 1578
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Lcom/nexstreaming/nexeditorsdk/c;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/util/List;)I

    move-result v8

    .line 1552
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto/16 :goto_4

    .line 1581
    :cond_7
    const/4 v5, 0x0

    .line 1582
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v4

    move/from16 v0, v20

    if-gt v4, v0, :cond_16

    .line 1583
    const/4 v4, 0x0

    .line 1585
    :goto_7
    sget-object v6, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v7, "Template imageProject Apply Intro End(%d %d) (%d)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v4

    move/from16 v18, v5

    .line 1586
    goto/16 :goto_3

    .line 1589
    :cond_8
    if-eqz v17, :cond_d

    .line 1591
    const/4 v4, 0x0

    move/from16 v19, v4

    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_4

    .line 1593
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/c;->z:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nexstreaming/nexeditorsdk/e;

    .line 1594
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v7, v8, v4, v5}, Lcom/nexstreaming/nexeditorsdk/e;->a(IILjava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 1595
    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/e;->j()Ljava/util/List;

    move-result-object v4

    .line 1597
    iget-object v5, v7, Lcom/nexstreaming/nexeditorsdk/e;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    .line 1599
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_9
    :goto_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nexstreaming/nexeditorsdk/d;

    .line 1600
    move-object/from16 v0, p0

    iget v9, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v4 .. v9}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Lcom/nexstreaming/nexeditorsdk/e;IF)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1603
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    move/from16 v0, v20

    if-le v5, v0, :cond_a

    .line 1604
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v10

    .line 1605
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1606
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1607
    invoke-virtual {v10}, Lcom/nexstreaming/nexeditorsdk/nexClip;->clearDrawInfos()V

    .line 1609
    const v5, 0x7fffffff

    iput v5, v10, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    .line 1610
    const/high16 v5, -0x80000000

    iput v5, v10, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    .line 1612
    :cond_a
    iget v11, v7, Lcom/nexstreaming/nexeditorsdk/e;->a:I

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/e;->i()I

    move-result v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v4

    move v13, v8

    invoke-virtual/range {v9 .. v16}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lcom/nexstreaming/nexeditorsdk/nexClip;IIIFLjava/lang/String;Z)V

    .line 1613
    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/e;->i()I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v8, v5}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;II)Ljava/lang/String;

    goto :goto_9

    .line 1617
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/c;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/util/List;)I

    move-result v8

    .line 1618
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v4

    move/from16 v0, v20

    if-gt v4, v0, :cond_c

    .line 1619
    const/16 v17, 0x0

    .line 1620
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v5, "Template imageProject Apply Loop End(%d %d) (%d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1591
    :cond_c
    add-int/lit8 v4, v19, 0x1

    move/from16 v19, v4

    goto/16 :goto_8

    .line 1627
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/c;->A:Ljava/util/ArrayList;

    .line 1629
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nexstreaming/nexeditorsdk/c;->C:Ljava/util/Map;

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nexstreaming/nexeditorsdk/c;->C:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_15

    .line 1631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/c;->C:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1632
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/c;->C:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1633
    sget-object v5, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v6, "Template imageProject select Outro(%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    aput-object v10, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v4

    .line 1640
    :goto_a
    const/4 v4, 0x0

    move v14, v4

    :goto_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_11

    .line 1642
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/nexstreaming/nexeditorsdk/e;

    .line 1643
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    invoke-virtual {v12, v8, v4, v5}, Lcom/nexstreaming/nexeditorsdk/e;->a(IILjava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 1644
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/e;->j()Ljava/util/List;

    move-result-object v4

    .line 1646
    const/4 v10, 0x0

    .line 1647
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_e
    :goto_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nexstreaming/nexeditorsdk/d;

    .line 1648
    move-object/from16 v0, p0

    iget v9, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v7, v12

    invoke-virtual/range {v4 .. v9}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Lcom/nexstreaming/nexeditorsdk/e;IF)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1651
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    if-lez v5, :cond_14

    .line 1652
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v5

    .line 1653
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1654
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1655
    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->clearDrawInfos()V

    .line 1657
    const v6, 0x7fffffff

    iput v6, v5, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    .line 1658
    const/high16 v6, -0x80000000

    iput v6, v5, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    .line 1660
    :goto_d
    iget v6, v12, Lcom/nexstreaming/nexeditorsdk/e;->a:I

    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/e;->i()I

    move-result v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lcom/nexstreaming/nexeditorsdk/nexClip;IIIFLjava/lang/String;Z)V

    .line 1661
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/e;->i()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v8, v6}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;II)Ljava/lang/String;

    move-object v10, v5

    .line 1662
    goto :goto_c

    .line 1636
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/c;->C:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v13, v4

    goto/16 :goto_a

    .line 1665
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lcom/nexstreaming/nexeditorsdk/c;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/util/List;)I

    move-result v8

    .line 1640
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    goto/16 :goto_b

    .line 1667
    :cond_11
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v5, "Template imageProject Apply Outro End(%d %d) (%d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/nexstreaming/nexeditorsdk/c;->F:Z

    if-eqz v4, :cond_13

    .line 1672
    const-string v4, "apply Template user canceled"

    goto/16 :goto_2

    .line 1675
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 1676
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/nexstreaming/nexeditorsdk/c;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;

    .line 1677
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_14
    move-object v5, v10

    goto/16 :goto_d

    :cond_15
    move-object v13, v4

    goto/16 :goto_a

    :cond_16
    move/from16 v4, v17

    goto/16 :goto_7

    :cond_17
    move-object v5, v10

    goto/16 :goto_6

    :cond_18
    move-object v5, v10

    goto/16 :goto_1
.end method

.method a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/nexeditorsdk/nexProject;",
            "Lcom/nexstreaming/nexeditorsdk/nexProject;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/e;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1095
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/c;->c()I

    move-result v23

    .line 1097
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1098
    const/4 v3, 0x0

    move/from16 v22, v3

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 1100
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/nexstreaming/nexeditorsdk/e;

    .line 1102
    invoke-virtual/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/e;->h()I

    move-result v3

    .line 1103
    invoke-virtual/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/e;->c()I

    move-result v4

    .line 1104
    invoke-virtual/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/e;->d()I

    move-result v5

    .line 1105
    invoke-virtual/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/e;->e()I

    move-result v6

    .line 1107
    add-int/2addr v4, v3

    .line 1108
    add-int/2addr v5, v3

    .line 1109
    add-int/2addr v3, v6

    .line 1111
    if-gt v3, v4, :cond_0

    move v3, v4

    .line 1113
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/e;->f()Z

    move-result v25

    .line 1114
    move-object/from16 v0, v18

    iget v8, v0, Lcom/nexstreaming/nexeditorsdk/e;->r:I

    .line 1115
    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v6

    .line 1116
    if-gtz v6, :cond_2

    if-nez p5, :cond_2

    .line 1117
    sget-object v3, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string/jumbo v4, "setProjectWithEffects clip apply end"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_1
    :goto_1
    const/4 v3, 0x0

    return-object v3

    .line 1121
    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v7}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;F)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1122
    if-nez p5, :cond_4

    .line 1123
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/e;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    .line 1098
    :cond_3
    :goto_2
    add-int/lit8 v3, v22, 0x1

    move/from16 v22, v3

    goto :goto_0

    .line 1127
    :cond_4
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    .line 1128
    if-eqz v3, :cond_3

    .line 1129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1135
    :cond_5
    if-gtz v6, :cond_6

    .line 1136
    sget-object v3, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string/jumbo v4, "setProjectWithEffects clip apply end"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1140
    :cond_6
    move-object/from16 v0, p0

    iget v6, v0, Lcom/nexstreaming/nexeditorsdk/c;->m:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    if-nez p5, :cond_7

    .line 1142
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v6

    sub-int/2addr v6, v4

    move/from16 v0, v23

    if-ge v6, v0, :cond_7

    .line 1144
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/nexstreaming/nexeditorsdk/c;->v:Z

    .line 1145
    sget-object v3, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string/jumbo v4, "setProjectWithEffects clip apply end for outro on single video"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1150
    :cond_7
    if-nez p5, :cond_8

    .line 1151
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/nexstreaming/nexeditorsdk/e;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    :cond_8
    move v10, v4

    move/from16 v19, v3

    move/from16 v20, v5

    move/from16 v21, v4

    .line 1159
    :goto_3
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v3

    if-lez v3, :cond_3

    .line 1161
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v11

    .line 1162
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v9

    .line 1164
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    .line 1165
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setFaceDetectSpeed(I)V

    .line 1166
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPosionLock()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1167
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1168
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1169
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPosition(Landroid/graphics/Rect;)V

    .line 1170
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPosition(Landroid/graphics/Rect;)V

    .line 1172
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v6

    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v7

    invoke-virtual/range {v3 .. v9}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->applyCropSpeed(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V

    .line 1173
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v6

    invoke-virtual {v3, v4, v6}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 1174
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 1176
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 1177
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    .line 1179
    :cond_9
    move/from16 v0, v21

    if-gt v9, v0, :cond_f

    .line 1180
    move/from16 v0, v20

    if-lt v9, v0, :cond_a

    .line 1181
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1182
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1184
    const-string v4, "0"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/nexstreaming/nexeditorsdk/c;->r:Z

    move-object/from16 v3, v18

    move-object v5, v11

    invoke-virtual/range {v3 .. v8}, Lcom/nexstreaming/nexeditorsdk/e;->a(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexClip;ZFZ)Ljava/lang/String;

    .line 1185
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;

    .line 1186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v11, v3, v2}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;Ljava/lang/String;Z)V

    .line 1187
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/c;->b(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    goto/16 :goto_2

    .line 1191
    :cond_a
    const/16 v3, 0x1388

    move/from16 v0, v21

    if-le v0, v3, :cond_b

    const/4 v3, 0x1

    .line 1192
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    if-nez v25, :cond_d

    .line 1195
    :cond_b
    invoke-virtual {v11, v10}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setImageClipDuration(I)V

    .line 1196
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPosionLock()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1197
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1198
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1199
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPosition(Landroid/graphics/Rect;)V

    .line 1200
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPosition(Landroid/graphics/Rect;)V

    .line 1202
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v6

    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v7

    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getImageClipDuration()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->applyCropSpeed(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V

    .line 1203
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v6

    invoke-virtual {v3, v4, v6}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 1204
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 1206
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 1207
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    .line 1209
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1210
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1212
    const-string v4, "0"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/nexstreaming/nexeditorsdk/c;->r:Z

    move-object/from16 v3, v18

    move-object v5, v11

    invoke-virtual/range {v3 .. v8}, Lcom/nexstreaming/nexeditorsdk/e;->a(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexClip;ZFZ)Ljava/lang/String;

    .line 1213
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;

    .line 1214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v11, v3, v2}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;Ljava/lang/String;Z)V

    .line 1215
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/c;->b(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    goto/16 :goto_2

    .line 1219
    :cond_d
    sub-int v4, v10, v9

    .line 1221
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1222
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1224
    if-gtz v4, :cond_e

    .line 1225
    const-string v4, "1"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/nexstreaming/nexeditorsdk/c;->r:Z

    move-object/from16 v3, v18

    move-object v5, v11

    invoke-virtual/range {v3 .. v8}, Lcom/nexstreaming/nexeditorsdk/e;->a(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexClip;ZFZ)Ljava/lang/String;

    .line 1226
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;

    .line 1227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v11, v3, v2}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;Ljava/lang/String;Z)V

    .line 1228
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/c;->b(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    goto/16 :goto_2

    .line 1232
    :cond_e
    const-string v10, "1"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/nexstreaming/nexeditorsdk/c;->r:Z

    move-object/from16 v9, v18

    invoke-virtual/range {v9 .. v14}, Lcom/nexstreaming/nexeditorsdk/e;->a(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexClip;ZFZ)Ljava/lang/String;

    .line 1233
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;

    .line 1234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v11, v3, v2}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;Ljava/lang/String;Z)V

    move v10, v4

    .line 1236
    goto/16 :goto_3

    .line 1239
    :cond_f
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setImageClipDuration(I)V

    .line 1240
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPosionLock()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1241
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1242
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1243
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPosition(Landroid/graphics/Rect;)V

    .line 1244
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPosition(Landroid/graphics/Rect;)V

    .line 1246
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v6

    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v7

    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getImageClipDuration()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->applyCropSpeed(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V

    .line 1247
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v6

    invoke-virtual {v3, v4, v6}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 1248
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 1250
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 1251
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    .line 1253
    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1254
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1256
    const-string v10, "0"

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/nexstreaming/nexeditorsdk/c;->r:Z

    move-object/from16 v9, v18

    invoke-virtual/range {v9 .. v14}, Lcom/nexstreaming/nexeditorsdk/e;->a(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexClip;ZFZ)Ljava/lang/String;

    .line 1257
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;

    .line 1258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v11, v3, v2}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;Ljava/lang/String;Z)V

    .line 1259
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/c;->b(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    goto/16 :goto_2

    .line 1263
    :cond_11
    move/from16 v0, v20

    if-ge v9, v0, :cond_14

    .line 1265
    invoke-virtual/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/e;->g()Z

    move-result v3

    if-nez v3, :cond_12

    .line 1266
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    goto/16 :goto_3

    .line 1269
    :cond_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1270
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1272
    const-string v13, "2"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nexstreaming/nexeditorsdk/c;->r:Z

    move/from16 v17, v0

    move-object/from16 v12, v18

    move-object v14, v11

    invoke-virtual/range {v12 .. v17}, Lcom/nexstreaming/nexeditorsdk/e;->a(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexClip;ZFZ)Ljava/lang/String;

    .line 1273
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;

    .line 1274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v11, v3, v2}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;Ljava/lang/String;Z)V

    .line 1277
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/nexstreaming/nexeditorsdk/c;->t:Z

    if-nez v3, :cond_13

    .line 1278
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setSpeedControl(I)V

    .line 1279
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v3

    if-gtz v3, :cond_13

    .line 1280
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTemplateEffectID()I

    move-result v3

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    invoke-virtual {v11, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setTemplateEffectID(I)V

    .line 1284
    :cond_13
    sub-int v4, v20, v9

    .line 1285
    sub-int v3, v19, v9

    .line 1286
    sub-int v5, v21, v9

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    .line 1287
    goto/16 :goto_3

    .line 1290
    :cond_14
    move/from16 v0, v19

    if-gt v9, v0, :cond_15

    .line 1292
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1293
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1295
    const-string v10, "3"

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/nexstreaming/nexeditorsdk/c;->r:Z

    move-object/from16 v9, v18

    invoke-virtual/range {v9 .. v14}, Lcom/nexstreaming/nexeditorsdk/e;->a(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexClip;ZFZ)Ljava/lang/String;

    .line 1296
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;

    .line 1297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v11, v3, v2}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;Ljava/lang/String;Z)V

    .line 1298
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/c;->b(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    .line 1300
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/nexstreaming/nexeditorsdk/c;->t:Z

    if-nez v3, :cond_3

    .line 1301
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setSpeedControl(I)V

    .line 1302
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/c;->c(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    goto/16 :goto_2

    .line 1307
    :cond_15
    add-int/lit8 v3, v22, 0x1

    move/from16 v0, v24

    if-lt v3, v0, :cond_18

    const/4 v3, 0x0

    .line 1308
    :goto_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nexstreaming/nexeditorsdk/e;

    .line 1312
    sub-int v4, v9, v21

    .line 1313
    sub-int v5, v9, v20

    .line 1314
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/e;->d()I

    move-result v6

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/e;->h()I

    move-result v7

    add-int/2addr v6, v7

    .line 1316
    if-gt v4, v6, :cond_16

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/e;->a()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/e;->g()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1318
    if-lt v5, v6, :cond_19

    move/from16 v21, v20

    .line 1339
    :cond_16
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getSpeedControl()I

    move-result v3

    .line 1340
    invoke-static {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v5

    .line 1341
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1343
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateDegree()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    .line 1344
    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setSpeedControl(I)V

    .line 1346
    const/16 v4, 0x64

    if-eq v3, v4, :cond_17

    .line 1347
    mul-int v3, v3, v21

    div-int/lit8 v21, v3, 0x64

    .line 1349
    :cond_17
    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v3

    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getStartTrimTime()I

    move-result v4

    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getStartTrimTime()I

    move-result v6

    add-int v6, v6, v21

    invoke-virtual {v3, v4, v6}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 1350
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v3

    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getStartTrimTime()I

    move-result v4

    add-int v4, v4, v21

    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getEndTrimTime()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 1351
    const-string v4, "4"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/nexstreaming/nexeditorsdk/c;->r:Z

    move-object/from16 v3, v18

    invoke-virtual/range {v3 .. v8}, Lcom/nexstreaming/nexeditorsdk/e;->a(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexClip;ZFZ)Ljava/lang/String;

    .line 1352
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;

    .line 1353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v5, v3, v2}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;Ljava/lang/String;Z)V

    .line 1355
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/nexstreaming/nexeditorsdk/c;->t:Z

    if-nez v3, :cond_1a

    .line 1356
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setSpeedControl(I)V

    .line 1357
    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setSpeedControl(I)V

    .line 1358
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/c;->c(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    goto/16 :goto_2

    .line 1307
    :cond_18
    add-int/lit8 v3, v22, 0x1

    goto/16 :goto_4

    .line 1323
    :cond_19
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1324
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1326
    const-string v10, "3"

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/nexstreaming/nexeditorsdk/c;->r:Z

    move-object/from16 v9, v18

    invoke-virtual/range {v9 .. v14}, Lcom/nexstreaming/nexeditorsdk/e;->a(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexClip;ZFZ)Ljava/lang/String;

    .line 1327
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;

    .line 1328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/c;->s:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v11, v3, v2}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;Ljava/lang/String;Z)V

    .line 1329
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/c;->b(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    .line 1331
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/nexstreaming/nexeditorsdk/c;->t:Z

    if-nez v3, :cond_3

    .line 1332
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setSpeedControl(I)V

    .line 1333
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/c;->c(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    goto/16 :goto_2

    .line 1361
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/c;->b(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    goto/16 :goto_2
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->F:Z

    .line 233
    if-eqz p1, :cond_0

    .line 234
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    if-eqz v1, :cond_0

    .line 237
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v3, "Template templateFile path(%s)"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "txt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    :cond_0
    iput v6, p0, Lcom/nexstreaming/nexeditorsdk/c;->x:I

    .line 246
    invoke-virtual {p0, p2}, Lcom/nexstreaming/nexeditorsdk/c;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_1

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Template header parse error : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    .line 255
    :cond_1
    :try_start_0
    const-string/jumbo v1, "template_intro"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v1, v0

    .line 256
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 257
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/c;->x:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/c;->x:I

    invoke-static {v3, v4}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;I)Lcom/nexstreaming/nexeditorsdk/e;

    move-result-object v3

    .line 258
    if-eqz v3, :cond_2

    .line 259
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/c;->y:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    :cond_2
    const-string v0, "Template intro parse error"

    goto :goto_0

    .line 264
    :cond_3
    const-string/jumbo v1, "template_loop"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v1, v0

    .line 265
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 266
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/c;->x:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/c;->x:I

    invoke-static {v3, v4}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;I)Lcom/nexstreaming/nexeditorsdk/e;

    move-result-object v3

    .line 267
    if-eqz v3, :cond_4

    .line 269
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 272
    :cond_4
    const-string v0, "Template Loop parse error"

    goto :goto_0

    .line 275
    :cond_5
    const-string/jumbo v1, "template_outro"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v2, v0

    .line 276
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_b

    .line 277
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 278
    if-nez v1, :cond_6

    .line 276
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 280
    :cond_6
    const-string v4, "alternative_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "alternative_outro"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 282
    const-string v4, "alternative_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 283
    const-string v5, "alternative_outro"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 285
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 287
    :goto_5
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_8

    .line 289
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    iget v8, p0, Lcom/nexstreaming/nexeditorsdk/c;->x:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/nexstreaming/nexeditorsdk/c;->x:I

    invoke-static {v7, v8}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;I)Lcom/nexstreaming/nexeditorsdk/e;

    move-result-object v7

    .line 290
    if-nez v7, :cond_7

    .line 291
    const-string v0, "Template Outro parse error(alternative outro)"

    goto/16 :goto_0

    .line 293
    :cond_7
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 296
    :cond_8
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->C:Ljava/util/Map;

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 323
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 324
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 325
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 326
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 328
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseTemplate failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseTemplate failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 300
    :cond_9
    :try_start_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/c;->x:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/c;->x:I

    invoke-static {v1, v4}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;I)Lcom/nexstreaming/nexeditorsdk/e;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_a

    .line 302
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/c;->A:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 305
    :cond_a
    const-string v0, "Template Outro parse error"

    goto/16 :goto_0

    .line 309
    :cond_b
    const-string/jumbo v1, "template_single"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 310
    const-string/jumbo v1, "template_single"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 311
    :goto_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 312
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/c;->x:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/nexstreaming/nexeditorsdk/c;->x:I

    invoke-static {v2, v3}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;I)Lcom/nexstreaming/nexeditorsdk/e;

    move-result-object v2

    .line 313
    if-eqz v2, :cond_c

    .line 314
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/c;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 317
    :cond_c
    const-string v0, "Template Single parse error"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 332
    :cond_d
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v1, "parseTemplate end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 166
    :try_start_0
    const-string/jumbo v0, "template_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->a:Ljava/lang/String;

    .line 167
    const-string/jumbo v0, "template_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->b:Ljava/lang/String;

    .line 168
    const-string/jumbo v0, "template_desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->c:Ljava/lang/String;

    .line 169
    const-string/jumbo v0, "template_mode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->d:Ljava/lang/String;

    .line 171
    const v0, 0x3fe38e39

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    .line 172
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->d:Ljava/lang/String;

    const-string v1, "16v9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 173
    const v0, 0x3fe38e39

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    .line 184
    :cond_0
    :goto_0
    const-string/jumbo v0, "template_bgm"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->e:Ljava/lang/String;

    .line 185
    const-string/jumbo v0, "template_single_bgm"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const-string/jumbo v0, "template_single_bgm"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->f:Ljava/lang/String;

    .line 188
    :cond_1
    const-string/jumbo v0, "template_bgm_volume"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    const-string/jumbo v0, "template_bgm_volume"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->g:F

    .line 191
    :cond_2
    const-string/jumbo v0, "template_min_duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    const-string/jumbo v0, "template_min_duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->n:I

    .line 193
    :cond_3
    const-string/jumbo v0, "template_default_effect"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    const-string/jumbo v0, "template_default_effect"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->o:Ljava/lang/String;

    .line 196
    :cond_4
    const-string/jumbo v0, "template_default_effect_scale"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    const-string/jumbo v0, "template_default_effect_scale"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->p:Z

    .line 199
    :cond_5
    const-string/jumbo v0, "template_default_image_duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "template_default_image_duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 200
    const-string/jumbo v0, "template_default_image_duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->h:I

    .line 202
    :cond_6
    const-string/jumbo v0, "template_project_vol_fade_in_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "template_project_vol_fade_in_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 203
    const-string/jumbo v0, "template_project_vol_fade_in_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->i:I

    .line 205
    :cond_7
    const-string/jumbo v0, "template_project_vol_fade_out_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "template_project_vol_fade_out_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 206
    const-string/jumbo v0, "template_project_vol_fade_out_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->j:I

    .line 208
    :cond_8
    const-string/jumbo v0, "template_single_project_vol_fade_in_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "template_single_project_vol_fade_in_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 209
    const-string/jumbo v0, "template_single_project_vol_fade_in_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->k:I

    .line 211
    :cond_9
    const-string/jumbo v0, "template_single_project_vol_fade_out_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "template_single_project_vol_fade_out_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 212
    const-string/jumbo v0, "template_single_project_vol_fade_out_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->l:I

    .line 214
    :cond_a
    const-string/jumbo v0, "template_single_video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 215
    const-string/jumbo v0, "template_single_video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->m:I

    .line 226
    :cond_b
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 174
    :cond_c
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->d:Ljava/lang/String;

    const-string v1, "9v16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 175
    const/high16 v0, 0x3f100000    # 0.5625f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->q:F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 220
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse Template failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v2, "case1 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 176
    :cond_d
    :try_start_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->d:Ljava/lang/String;

    const-string v1, "1v1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 177
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    goto/16 :goto_0

    .line 178
    :cond_e
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->d:Ljava/lang/String;

    const-string v1, "2v1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 179
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->q:F

    goto/16 :goto_0

    .line 180
    :cond_f
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->d:Ljava/lang/String;

    const-string v1, "1v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->q:F
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 197
    :cond_10
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->F:Z

    .line 150
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->A:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 162
    :cond_3
    return-void
.end method

.method a(Lcom/nexstreaming/nexeditorsdk/nexProject;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 903
    move v0, v1

    :goto_0
    invoke-virtual {p1, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 904
    invoke-virtual {p1, v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    .line 905
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 909
    :cond_0
    return v1

    .line 903
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method b()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->n:I

    return v0
.end method

.method b(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z

    .line 598
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->g:F

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBGMMasterVolumeScale(F)V

    .line 599
    const/4 v0, 0x0

    return-object v0
.end method

.method b(Lcom/nexstreaming/nexeditorsdk/nexProject;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v4, -0xf000001

    const/4 v7, 0x1

    .line 2378
    invoke-virtual {p1, v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v0

    .line 2379
    if-gt v0, v7, :cond_1

    .line 2398
    :cond_0
    :goto_0
    return-void

    .line 2381
    :cond_1
    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p1, v1, v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    .line 2382
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTemplateEffectID()I

    move-result v2

    and-int/2addr v2, v4

    .line 2383
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0, v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 2384
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTemplateEffectID()I

    move-result v3

    and-int/2addr v3, v4

    .line 2386
    if-eq v2, v3, :cond_2

    .line 2387
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect()Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v4

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v5

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect()Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_2

    .line 2388
    invoke-virtual {v1, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setEffectNone()V

    .line 2389
    invoke-virtual {v1, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setDuration(I)V

    .line 2393
    :cond_2
    if-eq v2, v3, :cond_0

    .line 2394
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v1

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect()Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 2395
    invoke-virtual {v0, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setEffectNone()V

    .line 2396
    invoke-virtual {v0, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setDuration(I)V

    goto :goto_0
.end method

.method c()I
    .locals 5

    .prologue
    .line 394
    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->C:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 398
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 401
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/e;

    .line 403
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res_video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 404
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res_image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res_solid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 408
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->c()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 409
    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->A:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 425
    :cond_2
    return v1

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/e;

    .line 418
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res_video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 419
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res_image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 420
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res_solid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 423
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->c()I

    move-result v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->h()I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v1, v0

    .line 424
    goto :goto_1
.end method

.method c(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 915
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v5

    .line 917
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v1, "applyTemplate20_Project ( ProjectTime:%d TemplateMinDur:%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/c;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-static {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->clone(Lcom/nexstreaming/nexeditorsdk/nexProject;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v1

    .line 920
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->allClear(Z)V

    .line 922
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/c;->e()I

    move-result v3

    .line 923
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/c;->c()I

    move-result v2

    .line 924
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 925
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 926
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    .line 927
    :cond_0
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v0

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/c;->d()I

    move-result v4

    if-ge v0, v4, :cond_7

    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/c;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 928
    :cond_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v2, "Template Apply Single Start(%d %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/c;->B:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/c;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .line 930
    if-eqz v0, :cond_3

    .line 1088
    :cond_2
    :goto_0
    return-object v0

    .line 934
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateTimeLine(Z)V

    .line 936
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->k:I

    if-ltz v1, :cond_4

    .line 938
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->k:I

    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setProjectAudioFadeInTime(I)V

    .line 941
    :cond_4
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->l:I

    if-ltz v1, :cond_5

    .line 943
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->l:I

    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setProjectAudioFadeOutTime(I)V

    .line 946
    :cond_5
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 947
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->f:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 948
    invoke-virtual {p0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/c;->b(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0

    .line 950
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/c;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0

    .line 956
    :cond_7
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->m:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_a

    .line 1018
    :cond_8
    :goto_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v2, "Template Apply Intro Start(%d %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/c;->y:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/c;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .line 1021
    if-nez v0, :cond_2

    .line 1026
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v2, "Template Apply Intro End(%d %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v0

    if-lez v0, :cond_e

    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->v:Z

    if-nez v0, :cond_e

    .line 1030
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/c;->z:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/c;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .line 1031
    if-nez v0, :cond_2

    .line 1035
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->F:Z

    if-eqz v0, :cond_9

    .line 1036
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v1, "cancel template"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const-string v0, "cancel template"

    goto/16 :goto_0

    .line 959
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_2
    if-ltz v4, :cond_8

    .line 960
    const/16 v0, 0x320

    if-lt v2, v0, :cond_8

    if-lez v3, :cond_8

    .line 963
    const/4 v0, 0x1

    invoke-virtual {v1, v4, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v7

    .line 964
    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_b

    .line 965
    const/4 v0, 0x0

    invoke-virtual {v6, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 966
    invoke-virtual {v1, v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 967
    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v0

    sub-int/2addr v2, v0

    .line 968
    add-int/lit8 v0, v3, -0x1

    .line 959
    :goto_3
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    move v3, v0

    goto :goto_2

    .line 972
    :cond_b
    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v0

    if-gt v0, v2, :cond_c

    .line 973
    const/4 v0, 0x0

    invoke-virtual {v6, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 974
    invoke-virtual {v1, v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 975
    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v0

    sub-int/2addr v2, v0

    move v0, v3

    .line 976
    goto :goto_3

    .line 980
    :cond_c
    sub-int v8, v5, v2

    .line 981
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->y:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/e;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->d()I

    move-result v0

    if-le v0, v8, :cond_d

    .line 982
    const/4 v0, 0x0

    invoke-virtual {v6, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 983
    invoke-virtual {v1, v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    move v0, v3

    .line 984
    goto :goto_3

    .line 987
    :cond_d
    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getSpeedControl()I

    move-result v0

    .line 988
    invoke-static {v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    .line 989
    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(IZLcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 990
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setSpeedControl(I)V

    .line 991
    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateDegree()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    .line 994
    const/16 v4, 0x64

    if-eq v0, v4, :cond_14

    .line 995
    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    .line 997
    :goto_4
    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getStartTrimTime()I

    move-result v2

    .line 998
    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getEndTrimTime()I

    move-result v4

    .line 1000
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v5

    sub-int v8, v4, v0

    invoke-virtual {v5, v2, v8}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 1001
    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v2

    sub-int v0, v4, v0

    invoke-virtual {v2, v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 1003
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v2, "Template Apply 1(%d %d %d) 2(%d %d %d)"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1004
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    .line 1005
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getStartTrimTime()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x2

    .line 1006
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getEndTrimTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    const/4 v3, 0x3

    .line 1007
    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    .line 1008
    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getStartTrimTime()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x5

    .line 1009
    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getEndTrimTime()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 1003
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const/4 v0, 0x0

    invoke-virtual {v6, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1012
    invoke-virtual {v1, v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    goto/16 :goto_1

    .line 1041
    :cond_e
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v2, "Template Apply Loop End(%d %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 1044
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 1045
    invoke-virtual {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1046
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 1049
    :cond_f
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v2, "Template Apply Outpro Start(%d %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/c;->A:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/c;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .line 1051
    if-nez v0, :cond_2

    .line 1056
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v3, "Template Apply Outro End(%d %d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateTimeLine(Z)V

    .line 1060
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->i:I

    if-ltz v1, :cond_10

    .line 1062
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->i:I

    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setProjectAudioFadeInTime(I)V

    .line 1065
    :cond_10
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->j:I

    if-ltz v1, :cond_11

    .line 1067
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->j:I

    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setProjectAudioFadeOutTime(I)V

    .line 1070
    :cond_11
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 1071
    iget-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->t:Z

    if-nez v1, :cond_13

    .line 1072
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v2

    .line 1073
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v2, :cond_13

    .line 1074
    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect()Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".force_effect"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1075
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1076
    add-int/lit8 v4, v1, -0x1

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 1077
    const/4 v4, 0x1

    invoke-virtual {p1, v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPositionRaw(Landroid/graphics/Rect;)V

    .line 1079
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_12

    .line 1080
    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 1081
    const/4 v4, 0x1

    invoke-virtual {p1, v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPositionRaw(Landroid/graphics/Rect;)V

    .line 1073
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1086
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/c;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_14
    move v0, v2

    goto/16 :goto_4
.end method

.method c(Lcom/nexstreaming/nexeditorsdk/nexProject;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2401
    invoke-virtual {p1, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v0

    .line 2402
    if-gtz v0, :cond_1

    .line 2447
    :cond_0
    :goto_0
    return-void

    .line 2404
    :cond_1
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    .line 2405
    if-eqz v1, :cond_0

    .line 2407
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect()Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect()Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    .line 2409
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect()Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v0

    .line 2410
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getSpeedControl()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    .line 2411
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getSpeedControl()I

    move-result v2

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    .line 2413
    :cond_2
    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v2

    .line 2414
    invoke-virtual {p1, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 2416
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateDegree()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    .line 2417
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getSpeedControl()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setSpeedControl(I)V

    .line 2418
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getColorEffect()Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 2419
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getBrightness()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setBrightness(I)Z

    .line 2420
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getContrast()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setContrast(I)Z

    .line 2421
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSaturation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setSaturation(I)Z

    .line 2422
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTemplateEffectID()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setTemplateEffectID(I)V

    .line 2423
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipVolume()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setClipVolume(I)Z

    .line 2424
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioOnOff()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAudioOnOff(Z)V

    .line 2432
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect()Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect()Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".force_effect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffect(Ljava/lang/String;)V

    .line 2434
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect()Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v3

    const-string v4, "none"

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setTransitionEffect(Ljava/lang/String;)V

    .line 2435
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect()Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setDuration(I)V

    .line 2437
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect()Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v3

    const-string v4, "none"

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setTransitionEffect(Ljava/lang/String;)V

    .line 2438
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect()Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setDuration(I)V

    .line 2440
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getEndTrimTime()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getEndTrimTime()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 2441
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getStartTrimTime()I

    move-result v4

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getEndTrimTime()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 2443
    sget-object v3, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v4, "Template split clip(%d %d) next(%d %d %s)"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 2444
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getStartTrimTime()I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getStartTrimTime()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x3

    .line 2445
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectEndTime()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x4

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect()Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 2443
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method d()I
    .locals 5

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 432
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->B:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v0

    .line 443
    :cond_1
    return v1

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/e;

    .line 436
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res_video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 437
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res_image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 438
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res_solid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 441
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->c()I

    move-result v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->h()I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    move v1, v0

    .line 442
    goto :goto_0
.end method

.method d(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1371
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v0

    .line 1373
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v3, "applyTemplate30_Project ( ProjectTime:%d TemplateMinDur:%d)"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/c;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 1380
    :goto_0
    invoke-virtual {p1, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 1381
    invoke-virtual {p1, v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v6

    .line 1382
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v7

    if-ne v7, v8, :cond_0

    .line 1383
    add-int/lit8 v5, v5, 0x1

    .line 1380
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1386
    :cond_0
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v3

    .line 1387
    :cond_1
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v6

    mul-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 1388
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1392
    :cond_2
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string v2, "applyTemplate30_Project(I:%d V:%d)"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    if-gtz v5, :cond_3

    if-gtz v4, :cond_3

    .line 1395
    const-string v0, "Not support project on 3.0 template"

    .line 1471
    :goto_2
    return-object v0

    .line 1398
    :cond_3
    if-gtz v4, :cond_4

    .line 1399
    invoke-static {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->clone(Lcom/nexstreaming/nexeditorsdk/nexProject;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v0

    .line 1401
    invoke-virtual {p1, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->allClear(Z)V

    .line 1402
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTopDrawInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1404
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/c;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1406
    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateTimeLine(Z)V

    .line 1408
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Template3.0 make Project end with only images: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1471
    :cond_4
    const-string v0, "Template applying failed(variable content) with preprocessing fail"

    goto :goto_2
.end method

.method e()I
    .locals 5

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 450
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/c;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/e;

    .line 452
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res_video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 453
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res_image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 454
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "res_solid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 457
    goto :goto_0

    .line 458
    :cond_1
    return v1
.end method

.method f()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 474
    const/4 v1, 0x0

    .line 476
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->C:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 480
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/e;

    .line 482
    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/e;->a(Z)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 483
    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/e;

    .line 489
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res_video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 490
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res_image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 491
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res_solid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 494
    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/e;->a(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 495
    goto :goto_1

    .line 496
    :cond_2
    return v1
.end method

.method g()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->h:I

    return v0
.end method

.method h()V
    .locals 2

    .prologue
    .line 2450
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/c;->w:Ljava/lang/String;

    const-string/jumbo v1, "setCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/c;->F:Z

    .line 2452
    return-void
.end method

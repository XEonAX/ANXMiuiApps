.class public Lcom/uploader/implement/a/i;
.super Lcom/uploader/implement/a/a;
.source "UploaderAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uploader/implement/a/i$b;,
        Lcom/uploader/implement/a/i$c;,
        Lcom/uploader/implement/a/i$a;
    }
.end annotation


# instance fields
.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:J

.field private f:I

.field private g:I

.field private h:Lcom/uploader/implement/a/e;

.field private i:Ljava/lang/String;

.field private j:Lcom/uploader/implement/a/c;

.field private volatile k:Lcom/uploader/implement/a/a/b;

.field private final l:Lcom/uploader/export/IUploaderTask;

.field private final m:Lcom/uploader/export/ITaskListener;

.field private final n:Landroid/os/Handler;

.field private final o:I

.field private final p:Lcom/uploader/implement/c;


# direct methods
.method public constructor <init>(Lcom/uploader/implement/c;Lcom/uploader/export/IUploaderTask;ILcom/uploader/export/ITaskListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "config"    # Lcom/uploader/implement/c;
    .param p2, "task"    # Lcom/uploader/export/IUploaderTask;
    .param p3, "category"    # I
    .param p4, "taskListener"    # Lcom/uploader/export/ITaskListener;
    .param p5, "scheduler"    # Landroid/os/Handler;

    .prologue
    .line 135
    iget-object v0, p1, Lcom/uploader/implement/c;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/uploader/implement/a/a;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uploader/implement/a/i;->d:Ljava/util/ArrayList;

    .line 137
    iput-object p1, p0, Lcom/uploader/implement/a/i;->p:Lcom/uploader/implement/c;

    .line 138
    iput-object p2, p0, Lcom/uploader/implement/a/i;->l:Lcom/uploader/export/IUploaderTask;

    .line 139
    iput-object p4, p0, Lcom/uploader/implement/a/i;->m:Lcom/uploader/export/ITaskListener;

    .line 140
    iput-object p5, p0, Lcom/uploader/implement/a/i;->n:Landroid/os/Handler;

    .line 141
    iput p3, p0, Lcom/uploader/implement/a/i;->o:I

    .line 142
    return-void
.end method


# virtual methods
.method a(Lcom/uploader/implement/a/b/a;)Landroid/util/Pair;
    .locals 6
    .param p1, "response"    # Lcom/uploader/implement/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/a/b/a;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/uploader/implement/c/a;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 640
    const/4 v0, 0x2

    .line 641
    .local v0, "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    const-string v2, "UploaderAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retrieveStatus ,response="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_0
    const-string v2, "x-arup-session-status"

    invoke-virtual {p1, v2}, Lcom/uploader/implement/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "status":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 648
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 651
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v5, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;)Landroid/util/Pair;
    .locals 12
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/d/b;",
            "Lcom/uploader/implement/a/e;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 490
    const/4 v2, 0x4

    .line 491
    .local v2, "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    const-string v7, "UploaderAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " onActionDeliver, session:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " request:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " currentRequest:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/uploader/implement/a/i;->h:Lcom/uploader/implement/a/e;

    if-nez v4, :cond_2

    const-string v4, "null"

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v7, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_0
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    if-eqz v4, :cond_1

    .line 496
    invoke-interface {p2}, Lcom/uploader/implement/a/e;->b()Lcom/uploader/implement/a/h;

    move-result-object v1

    .line 497
    .local v1, "content":Lcom/uploader/implement/a/h;
    iget-object v4, v1, Lcom/uploader/implement/a/h;->f:[B

    if-nez v4, :cond_3

    move v0, v5

    .line 498
    .local v0, "bytesLength":I
    :goto_1
    iget-object v4, v1, Lcom/uploader/implement/a/h;->g:[B

    if-nez v4, :cond_4

    move v3, v5

    .line 499
    .local v3, "tailLength":I
    :goto_2
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-wide v8, v1, Lcom/uploader/implement/a/h;->d:J

    int-to-long v10, v0

    add-long/2addr v8, v10

    int-to-long v10, v3

    add-long/2addr v8, v10

    iput-wide v8, v4, Lcom/uploader/implement/a/c;->b:J

    .line 502
    .end local v0    # "bytesLength":I
    .end local v1    # "content":Lcom/uploader/implement/a/h;
    .end local v3    # "tailLength":I
    :cond_1
    iget-object v4, p0, Lcom/uploader/implement/a/i;->h:Lcom/uploader/implement/a/e;

    if-eq v4, p2, :cond_5

    move-object v4, v6

    .line 509
    :goto_3
    return-object v4

    .line 492
    :cond_2
    iget-object v4, p0, Lcom/uploader/implement/a/i;->h:Lcom/uploader/implement/a/e;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 497
    .restart local v1    # "content":Lcom/uploader/implement/a/h;
    :cond_3
    iget-object v4, v1, Lcom/uploader/implement/a/h;->f:[B

    array-length v0, v4

    goto :goto_1

    .line 498
    .restart local v0    # "bytesLength":I
    :cond_4
    iget-object v4, v1, Lcom/uploader/implement/a/h;->g:[B

    array-length v3, v4

    goto :goto_2

    .line 505
    .end local v0    # "bytesLength":I
    .end local v1    # "content":Lcom/uploader/implement/a/h;
    :cond_5
    iput-object v6, p0, Lcom/uploader/implement/a/i;->h:Lcom/uploader/implement/a/e;

    .line 506
    iget-object v4, p0, Lcom/uploader/implement/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 507
    iget-object v4, p0, Lcom/uploader/implement/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    goto :goto_3

    :cond_6
    move-object v4, v6

    .line 509
    goto :goto_3
.end method

.method a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/a/b/a;)Landroid/util/Pair;
    .locals 8
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
    .param p3, "response"    # Lcom/uploader/implement/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/d/b;",
            "Lcom/uploader/implement/a/e;",
            "Lcom/uploader/implement/a/b/a;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/uploader/implement/c/a;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    iget-object v3, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    if-eqz v3, :cond_0

    .line 601
    const-string v3, "divided_length"

    invoke-virtual {p3, v3}, Lcom/uploader/implement/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "length":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 604
    :try_start_0
    iget-object v3, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-wide v4, v3, Lcom/uploader/implement/a/c;->c:J

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/uploader/implement/a/c;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    .end local v1    # "length":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lcom/uploader/implement/a/b/a;->a()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 636
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 605
    .restart local v1    # "length":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 607
    .local v2, "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 608
    const-string v3, "UploaderAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 616
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "length":Ljava/lang/String;
    .end local v2    # "p":I
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/uploader/implement/a/i;->e(Lcom/uploader/implement/a/b/a;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_1

    .line 619
    :pswitch_1
    invoke-virtual {p0, p3}, Lcom/uploader/implement/a/i;->d(Lcom/uploader/implement/a/b/a;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_1

    .line 622
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/uploader/implement/a/i;->b(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/a/b/a;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_1

    .line 625
    :pswitch_3
    invoke-virtual {p0, p3}, Lcom/uploader/implement/a/i;->c(Lcom/uploader/implement/a/b/a;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_1

    .line 628
    :pswitch_4
    invoke-virtual {p0, p3}, Lcom/uploader/implement/a/i;->b(Lcom/uploader/implement/a/b/a;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_1

    .line 631
    :pswitch_5
    invoke-virtual {p0, p3}, Lcom/uploader/implement/a/i;->a(Lcom/uploader/implement/a/b/a;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_1

    .line 614
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Landroid/util/Pair;)Lcom/uploader/implement/c/a;
    .locals 11
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
    .param p3, "offset"    # Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/d/b;",
            "Lcom/uploader/implement/a/e;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/uploader/implement/c/a;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v1, p0, Lcom/uploader/implement/a/i;->h:Lcom/uploader/implement/a/e;

    if-eqz v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/uploader/implement/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    const/16 v10, 0x8

    .line 390
    .local v10, "p":I
    invoke-static {v10}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    const-string v1, "UploaderAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onActionContinue, add offset, session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    const/4 v1, 0x0

    .line 422
    :goto_0
    return-object v1

    .line 398
    .end local v10    # "p":I
    :cond_1
    :try_start_0
    new-instance v0, Lcom/uploader/implement/a/a/c;

    iget-object v1, p0, Lcom/uploader/implement/a/i;->p:Lcom/uploader/implement/c;

    iget-object v2, p0, Lcom/uploader/implement/a/i;->k:Lcom/uploader/implement/a/a/b;

    const-string v3, "patch"

    iget-object v4, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/uploader/implement/a/a/c;-><init>(Lcom/uploader/implement/c;Lcom/uploader/implement/a/a/b;Ljava/lang/String;JJZ)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 414
    .local v0, "newRequest":Lcom/uploader/implement/a/e;
    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, v1}, Lcom/uploader/implement/d/b;->a(Lcom/uploader/implement/a/e;Lcom/uploader/implement/a/e;Z)V

    .line 416
    const/4 v10, 0x4

    .line 417
    .restart local v10    # "p":I
    invoke-static {v10}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    const-string v1, "UploaderAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onActionContinue, session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " send request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 400
    .end local v0    # "newRequest":Lcom/uploader/implement/a/e;
    .end local v10    # "p":I
    :catch_0
    move-exception v9

    .line 401
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    const/16 v10, 0x10

    .line 402
    .restart local v10    # "p":I
    invoke-static {v10}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 403
    const-string v1, "UploaderAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onActionContinue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v1, v2, v9}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    :cond_3
    new-instance v1, Lcom/uploader/implement/c/a;

    const-string v2, "200"

    const-string v3, "1"

    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 406
    .end local v9    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v10    # "p":I
    :catch_1
    move-exception v9

    .line 407
    .local v9, "e":Ljava/lang/Exception;
    const/16 v10, 0x10

    .line 408
    .restart local v10    # "p":I
    invoke-static {v10}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 409
    const-string v1, "UploaderAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onActionContinue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v1, v2, v9}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    :cond_4
    new-instance v1, Lcom/uploader/implement/c/a;

    const-string v2, "200"

    const-string v3, "5"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/c/a;)Lcom/uploader/implement/c/a;
    .locals 4
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
    .param p3, "error"    # Lcom/uploader/implement/c/a;

    .prologue
    .line 283
    iget-object v1, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uploader/implement/a/c;->m:J

    .line 286
    :cond_0
    const/16 v0, 0x8

    .line 287
    .local v0, "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    const-string v1, "UploaderAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onActionRetry, session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/uploader/implement/a/i;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 292
    invoke-virtual {p0, p1, p2, p3}, Lcom/uploader/implement/a/i;->d(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/c/a;)Lcom/uploader/implement/c/a;

    move-result-object v1

    .line 294
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/uploader/implement/a/i;->c(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/c/a;)Lcom/uploader/implement/c/a;

    move-result-object v1

    goto :goto_0
.end method

.method a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Lcom/uploader/implement/c/a;
    .locals 2
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "keepAlive"    # Z

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/uploader/implement/a/i;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 188
    invoke-virtual {p0, p1, p2, p3}, Lcom/uploader/implement/a/i;->c(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Lcom/uploader/implement/c/a;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/uploader/implement/a/i;->b(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Lcom/uploader/implement/c/a;

    move-result-object v0

    goto :goto_0
.end method

.method a()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uploader/implement/a/i;->h:Lcom/uploader/implement/a/e;

    .line 147
    iget-object v0, p0, Lcom/uploader/implement/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    return-void
.end method

.method a(ILjava/lang/Object;)V
    .locals 8
    .param p1, "notifyType"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 514
    iget-object v4, p0, Lcom/uploader/implement/a/i;->n:Landroid/os/Handler;

    iget-object v5, p0, Lcom/uploader/implement/a/i;->l:Lcom/uploader/export/IUploaderTask;

    iget-object v6, p0, Lcom/uploader/implement/a/i;->m:Lcom/uploader/export/ITaskListener;

    invoke-static {v4, p1, v5, v6, p2}, Lcom/uploader/implement/a/b;->a(Landroid/os/Handler;ILcom/uploader/export/IUploaderTask;Lcom/uploader/export/ITaskListener;Ljava/lang/Object;)V

    .line 516
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    if-nez v4, :cond_0

    .line 555
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 521
    .local v0, "current":J
    const/16 v3, 0x8

    .line 522
    .local v3, "p":I
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 523
    const-string v4, "UploaderAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onActionNotify, notifyType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " statistics:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " costTimeMillisEnd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 528
    :sswitch_0
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    const/4 v5, 0x2

    iput v5, v4, Lcom/uploader/implement/a/c;->g:I

    .line 529
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iput-wide v0, v4, Lcom/uploader/implement/a/c;->m:J

    .line 530
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-virtual {v4}, Lcom/uploader/implement/a/c;->a()Ljava/lang/String;

    .line 531
    iput-object v7, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    goto :goto_0

    :sswitch_1
    move-object v2, p2

    .line 536
    check-cast v2, Lcom/uploader/implement/c/a;

    .line 537
    .local v2, "error":Lcom/uploader/implement/c/a;
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    const/4 v5, 0x0

    iput v5, v4, Lcom/uploader/implement/a/c;->g:I

    .line 538
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-object v5, v2, Lcom/uploader/implement/c/a;->code:Ljava/lang/String;

    iput-object v5, v4, Lcom/uploader/implement/a/c;->h:Ljava/lang/String;

    .line 539
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-object v5, v2, Lcom/uploader/implement/c/a;->subcode:Ljava/lang/String;

    iput-object v5, v4, Lcom/uploader/implement/a/c;->i:Ljava/lang/String;

    .line 540
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-object v5, v2, Lcom/uploader/implement/c/a;->info:Ljava/lang/String;

    iput-object v5, v4, Lcom/uploader/implement/a/c;->j:Ljava/lang/String;

    .line 541
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iput-wide v0, v4, Lcom/uploader/implement/a/c;->m:J

    .line 542
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-virtual {v4}, Lcom/uploader/implement/a/c;->a()Ljava/lang/String;

    .line 543
    iput-object v7, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    goto :goto_0

    .line 548
    .end local v2    # "error":Lcom/uploader/implement/c/a;
    :sswitch_2
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iput-wide v0, v4, Lcom/uploader/implement/a/c;->m:J

    goto/16 :goto_0

    .line 526
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;I)V
    .locals 6
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
    .param p3, "fileSizeSent"    # I

    .prologue
    .line 459
    const/4 v0, 0x2

    .line 460
    .local v0, "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    const-string v1, "UploaderAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onUploading, session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fileSizeSent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sendOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/uploader/implement/a/i;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    int-to-long v2, p3

    invoke-interface {p2}, Lcom/uploader/implement/a/e;->b()Lcom/uploader/implement/a/h;

    move-result-object v1

    iget-wide v4, v1, Lcom/uploader/implement/a/h;->c:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/uploader/implement/a/i;->e:J

    .line 465
    iget-object v1, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    if-eqz v1, :cond_1

    .line 466
    iget-object v1, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-wide v2, p0, Lcom/uploader/implement/a/i;->e:J

    iput-wide v2, v1, Lcom/uploader/implement/a/c;->b:J

    .line 468
    :cond_1
    return-void
.end method

.method a(Lcom/uploader/implement/d/b;)Z
    .locals 3
    .param p1, "session"    # Lcom/uploader/implement/d/b;

    .prologue
    .line 177
    iget-object v2, p0, Lcom/uploader/implement/a/i;->k:Lcom/uploader/implement/a/a/b;

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 178
    .local v0, "inNeed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 179
    new-instance v1, Lcom/uploader/implement/a/i$c;

    new-instance v2, Lcom/uploader/implement/a/i$a;

    invoke-direct {v2, p0, p1}, Lcom/uploader/implement/a/i$a;-><init>(Lcom/uploader/implement/a/a;Lcom/uploader/implement/d/b;)V

    invoke-direct {v1, p0, v2}, Lcom/uploader/implement/a/i$c;-><init>(Lcom/uploader/implement/a/i;Landroid/os/Handler$Callback;)V

    .line 180
    .local v1, "runnable":Lcom/uploader/implement/a/i$c;
    invoke-static {v1}, Lcom/uploader/implement/e/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 182
    .end local v1    # "runnable":Lcom/uploader/implement/a/i$c;
    :cond_0
    return v0

    .line 177
    .end local v0    # "inNeed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Lcom/uploader/implement/a/b/a;)Landroid/util/Pair;
    .locals 11
    .param p1, "response"    # Lcom/uploader/implement/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/a/b/a;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/uploader/implement/c/a;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 655
    const/4 v3, 0x2

    .line 656
    .local v3, "p":I
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 657
    const-string v5, "UploaderAction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " onReceiveError ,response="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_0
    const-string v5, "x-arup-error-code"

    invoke-virtual {p1, v5}, Lcom/uploader/implement/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "error":Ljava/lang/String;
    const-string v5, "x-arup-error-msg"

    invoke-virtual {p1, v5}, Lcom/uploader/implement/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, "msg":Ljava/lang/String;
    const-string v5, "x-arup-server-timestamp"

    invoke-virtual {p1, v5}, Lcom/uploader/implement/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 664
    .local v4, "timestamp":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 666
    :try_start_0
    iget-object v5, p0, Lcom/uploader/implement/a/i;->p:Lcom/uploader/implement/c;

    iget-object v5, v5, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/uploader/implement/c$a;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :cond_1
    :goto_0
    sget-object v5, Lcom/uploader/implement/a/c/a$a$a;->a:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 677
    new-instance v5, Landroid/util/Pair;

    new-instance v6, Lcom/uploader/implement/c/a;

    const-string v7, "300"

    invoke-direct {v6, v7, v1, v2, v10}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v5, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 686
    :goto_1
    return-object v5

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    .line 669
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 670
    const-string v5, "UploaderAction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " retrieveError "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 680
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v5, "20021"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "20022"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "20020"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 683
    :cond_4
    new-instance v5, Landroid/util/Pair;

    new-instance v6, Lcom/uploader/implement/c/a;

    const-string v7, "300"

    const-string v8, "2"

    invoke-direct {v6, v7, v8, v2, v10}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v5, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 686
    :cond_5
    new-instance v5, Landroid/util/Pair;

    new-instance v6, Lcom/uploader/implement/c/a;

    const-string v7, "300"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v1, v2, v8}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v5, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method b(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/a/b/a;)Landroid/util/Pair;
    .locals 16
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
    .param p3, "response"    # Lcom/uploader/implement/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/d/b;",
            "Lcom/uploader/implement/a/e;",
            "Lcom/uploader/implement/a/b/a;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/uploader/implement/c/a;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 772
    const-string v10, "x-arup-offset"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/uploader/implement/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 773
    .local v9, "value":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 774
    new-instance v10, Landroid/util/Pair;

    new-instance v11, Lcom/uploader/implement/c/a;

    const-string v12, "200"

    const-string v13, "7"

    const-string v14, "onReceiveOffset:1"

    const/4 v15, 0x1

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 806
    :goto_0
    return-object v10

    .line 777
    :cond_0
    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 778
    .local v4, "index":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_1

    .line 779
    new-instance v10, Landroid/util/Pair;

    new-instance v11, Lcom/uploader/implement/c/a;

    const-string v12, "200"

    const-string v13, "7"

    const-string v14, "onReceiveOffset:2"

    const/4 v15, 0x1

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 782
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 783
    .local v3, "fileId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/uploader/implement/a/i;->k:Lcom/uploader/implement/a/a/b;

    iget-object v10, v10, Lcom/uploader/implement/a/a/b;->e:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 784
    new-instance v10, Landroid/util/Pair;

    new-instance v11, Lcom/uploader/implement/c/a;

    const-string v12, "200"

    const-string v13, "7"

    const-string v14, "onReceiveOffset:3"

    const/4 v15, 0x1

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 787
    :cond_2
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 788
    .local v1, "colonIndex":I
    add-int/lit8 v10, v4, 0x1

    if-le v1, v10, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v1, v10, :cond_4

    .line 789
    :cond_3
    new-instance v10, Landroid/util/Pair;

    new-instance v11, Lcom/uploader/implement/c/a;

    const-string v12, "200"

    const-string v13, "7"

    const-string v14, "onReceiveOffset:4"

    const/4 v15, 0x1

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 794
    :cond_4
    add-int/lit8 v10, v4, 0x1

    :try_start_0
    invoke-virtual {v9, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 795
    .local v8, "start":I
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 796
    .local v5, "length":I
    new-instance v6, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v6, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    .local v6, "offset":Landroid/util/Pair;
    new-instance v10, Landroid/util/Pair;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 797
    .end local v5    # "length":I
    .end local v6    # "offset":Landroid/util/Pair;
    .end local v8    # "start":I
    :catch_0
    move-exception v2

    .line 798
    .local v2, "e":Ljava/lang/Exception;
    const/16 v7, 0x10

    .line 799
    .local v7, "p":I
    invoke-static {v7}, Lcom/uploader/implement/a;->a(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 800
    const-string v10, "UploaderAction"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " parse offset error."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v10, v11, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 802
    :cond_5
    new-instance v10, Landroid/util/Pair;

    new-instance v11, Lcom/uploader/implement/c/a;

    const-string v12, "200"

    const-string v13, "7"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method b(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Lcom/uploader/implement/c/a;
    .locals 9
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "keepAlive"    # Z

    .prologue
    const/4 v8, 0x0

    .line 196
    :try_start_0
    new-instance v1, Lcom/uploader/implement/a/a/a;

    iget-object v4, p0, Lcom/uploader/implement/a/i;->p:Lcom/uploader/implement/c;

    invoke-direct {v1, v4}, Lcom/uploader/implement/a/a/a;-><init>(Lcom/uploader/implement/c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    .local v1, "newRequest":Lcom/uploader/implement/a/a/a;
    if-nez p2, :cond_3

    .line 212
    invoke-interface {p1, v1}, Lcom/uploader/implement/d/b;->a(Lcom/uploader/implement/a/e;)V

    .line 217
    :goto_0
    invoke-virtual {v1}, Lcom/uploader/implement/a/a/a;->c()Lcom/uploader/implement/b/a/g;

    move-result-object v3

    .line 218
    .local v3, "target":Lcom/uploader/implement/b/a/g;
    new-instance v4, Lcom/uploader/implement/a/c;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-direct {v4, v5, v6}, Lcom/uploader/implement/a/c;-><init>(ZLcom/uploader/implement/a/c;)V

    iput-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    .line 219
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-object v5, p0, Lcom/uploader/implement/a/i;->k:Lcom/uploader/implement/a/a/b;

    iget-object v5, v5, Lcom/uploader/implement/a/a/b;->f:Ljava/lang/String;

    iput-object v5, v4, Lcom/uploader/implement/a/c;->d:Ljava/lang/String;

    .line 220
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-object v5, p0, Lcom/uploader/implement/a/i;->k:Lcom/uploader/implement/a/a/b;

    iget-object v5, v5, Lcom/uploader/implement/a/a/b;->e:Ljava/lang/String;

    iput-object v5, v4, Lcom/uploader/implement/a/c;->p:Ljava/lang/String;

    .line 221
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-object v5, v3, Lcom/uploader/implement/b/a/g;->a:Ljava/lang/String;

    iput-object v5, v4, Lcom/uploader/implement/a/c;->e:Ljava/lang/String;

    .line 222
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget v5, v3, Lcom/uploader/implement/b/a/g;->b:I

    iput v5, v4, Lcom/uploader/implement/a/c;->f:I

    .line 223
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-object v5, p0, Lcom/uploader/implement/a/i;->k:Lcom/uploader/implement/a/a/b;

    iget-wide v6, v5, Lcom/uploader/implement/a/a/b;->g:J

    iput-wide v6, v4, Lcom/uploader/implement/a/c;->k:J

    .line 224
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-object v5, p0, Lcom/uploader/implement/a/i;->k:Lcom/uploader/implement/a/a/b;

    iget-wide v6, v5, Lcom/uploader/implement/a/a/b;->j:J

    iput-wide v6, v4, Lcom/uploader/implement/a/c;->s:J

    .line 225
    const/16 v2, 0x8

    .line 226
    .local v2, "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    const-string v4, "UploaderAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " beginDeclare statistics create:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    const/4 v4, 0x0

    .end local v1    # "newRequest":Lcom/uploader/implement/a/a/a;
    .end local v3    # "target":Lcom/uploader/implement/b/a/g;
    :goto_1
    return-object v4

    .line 197
    .end local v2    # "p":I
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Lorg/json/JSONException;
    const/16 v2, 0x10

    .line 199
    .restart local v2    # "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    const-string v4, "UploaderAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onActionBegin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v0}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    :cond_1
    new-instance v4, Lcom/uploader/implement/c/a;

    const-string v5, "200"

    const-string v6, "1"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 203
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "p":I
    :catch_1
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const/16 v2, 0x10

    .line 205
    .restart local v2    # "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    const-string v4, "UploaderAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onActionBegin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v0}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    :cond_2
    new-instance v4, Lcom/uploader/implement/c/a;

    const-string v5, "200"

    const-string v6, "5"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "p":I
    .restart local v1    # "newRequest":Lcom/uploader/implement/a/a/a;
    :cond_3
    invoke-interface {p1, p2, v1, p3}, Lcom/uploader/implement/d/b;->a(Lcom/uploader/implement/a/e;Lcom/uploader/implement/a/e;Z)V

    goto/16 :goto_0
.end method

.method b()Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v1, p0, Lcom/uploader/implement/a/i;->p:Lcom/uploader/implement/c;

    iget-object v1, v1, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    invoke-virtual {v1}, Lcom/uploader/implement/c$a;->a()Landroid/util/Pair;

    move-result-object v0

    .line 153
    .local v0, "tokenInfo":Landroid/util/Pair;
    if-nez v0, :cond_0

    .line 156
    :goto_0
    return v2

    :cond_0
    iget-object v1, p0, Lcom/uploader/implement/a/i;->p:Lcom/uploader/implement/c;

    iget-object v1, v1, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    invoke-virtual {v1}, Lcom/uploader/implement/c$a;->f()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method c(Lcom/uploader/implement/a/b/a;)Landroid/util/Pair;
    .locals 11
    .param p1, "response"    # Lcom/uploader/implement/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/a/b/a;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/uploader/implement/c/a;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 690
    const/4 v2, 0x2

    .line 691
    .local v2, "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 692
    const-string v4, "UploaderAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onReceiveResult ,response="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/uploader/implement/a/b/a;->b()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    const-string v4, "x-arup-file-id"

    invoke-virtual {p1, v4}, Lcom/uploader/implement/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "fileId":Ljava/lang/String;
    iget-object v4, p0, Lcom/uploader/implement/a/i;->k:Lcom/uploader/implement/a/a/b;

    iget-object v4, v4, Lcom/uploader/implement/a/a/b;->e:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 697
    new-instance v4, Landroid/util/Pair;

    new-instance v5, Lcom/uploader/implement/c/a;

    const-string v6, "300"

    const-string v7, "1"

    const-string v8, "fileId!="

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v4, v5, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 717
    :goto_0
    return-object v4

    .line 700
    :cond_1
    new-instance v3, Lcom/uploader/implement/a/i$b;

    invoke-virtual {p1}, Lcom/uploader/implement/a/b/a;->b()Ljava/util/Map;

    move-result-object v4

    const-string v5, "x-arup-file-url"

    invoke-virtual {p1, v5}, Lcom/uploader/implement/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "x-arup-biz-ret"

    invoke-virtual {p1, v6}, Lcom/uploader/implement/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/uploader/implement/a/i$b;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .local v3, "taskResult":Lcom/uploader/export/ITaskResult;
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    if-eqz v4, :cond_2

    .line 704
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iput v9, v4, Lcom/uploader/implement/a/c;->g:I

    .line 705
    iget-object v4, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/uploader/implement/a/c;->m:J

    .line 706
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/uploader/implement/a/i;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", File"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-virtual {v5}, Lcom/uploader/implement/a/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uploader/implement/a/i;->i:Ljava/lang/String;

    .line 707
    const/16 v2, 0x8

    .line 708
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 709
    const-string v4, "UploaderAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " retrieveResult, statistics:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " costTimeMillisEnd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-wide v6, v6, Lcom/uploader/implement/a/c;->m:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_2
    invoke-interface {v3}, Lcom/uploader/export/ITaskResult;->getResult()Ljava/util/Map;

    move-result-object v1

    .line 714
    .local v1, "map":Ljava/util/Map;
    if-eqz v1, :cond_3

    .line 715
    const-string v4, ""

    iget-object v5, p0, Lcom/uploader/implement/a/i;->i:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :cond_3
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v10, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method c(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/c/a;)Lcom/uploader/implement/c/a;
    .locals 5
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
    .param p3, "error"    # Lcom/uploader/implement/c/a;

    .prologue
    .line 298
    iget v2, p0, Lcom/uploader/implement/a/i;->f:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 299
    const/4 v1, 0x2

    .line 300
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    const-string v2, "UploaderAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retryDeclare, retry failed, request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " declareRetryCounter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/uploader/implement/a/i;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p3

    .line 339
    .end local v1    # "p":I
    .end local p3    # "error":Lcom/uploader/implement/c/a;
    .local v0, "error":Lcom/uploader/implement/c/a;
    :goto_0
    return-object v0

    .line 307
    .end local v0    # "error":Lcom/uploader/implement/c/a;
    .restart local p3    # "error":Lcom/uploader/implement/c/a;
    :cond_1
    const-string v2, "100"

    iget-object v3, p3, Lcom/uploader/implement/c/a;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "400"

    iget-object v3, p3, Lcom/uploader/implement/c/a;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 309
    :cond_2
    const/16 v1, 0x8

    .line 310
    .restart local v1    # "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 311
    const-string v2, "UploaderAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onActionRetry, try to connect next, request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_3
    iget-object v2, p0, Lcom/uploader/implement/a/i;->p:Lcom/uploader/implement/c;

    iget-object v2, v2, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    invoke-virtual {v2}, Lcom/uploader/implement/c$a;->c()V

    .line 318
    const/16 v1, 0x8

    .line 319
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 320
    const-string v2, "UploaderAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ConnectionStrategy, after nextDeclareTarget:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/uploader/implement/a/i;->p:Lcom/uploader/implement/c;

    iget-object v4, v4, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v1    # "p":I
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/uploader/implement/a/i;->b(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Lcom/uploader/implement/c/a;

    move-result-object p3

    .line 327
    if-nez p3, :cond_6

    .line 328
    iget v2, p0, Lcom/uploader/implement/a/i;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/uploader/implement/a/i;->f:I

    .line 329
    const/4 v1, 0x2

    .line 330
    .restart local v1    # "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 331
    const-string v2, "UploaderAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onActionRetry, retry, request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " declareRetryCounter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/uploader/implement/a/i;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_5
    iget-object v2, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    if-eqz v2, :cond_6

    .line 335
    iget-object v2, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget v3, p0, Lcom/uploader/implement/a/i;->f:I

    iput v3, v2, Lcom/uploader/implement/a/c;->r:I

    .end local v1    # "p":I
    :cond_6
    move-object v0, p3

    .line 339
    .end local p3    # "error":Lcom/uploader/implement/c/a;
    .restart local v0    # "error":Lcom/uploader/implement/c/a;
    goto/16 :goto_0
.end method

.method c(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Lcom/uploader/implement/c/a;
    .locals 18
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "keepAlive"    # Z

    .prologue
    .line 233
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/uploader/implement/a/i;->e:J

    .line 234
    .local v8, "offset":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uploader/implement/a/i;->k:Lcom/uploader/implement/a/a/b;

    iget-wide v6, v5, Lcom/uploader/implement/a/a/b;->g:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/uploader/implement/a/i;->e:J

    move-wide/from16 v16, v0

    sub-long v10, v6, v16

    .line 235
    .local v10, "length":J
    const-wide/16 v6, 0x0

    cmp-long v5, v10, v6

    if-gez v5, :cond_0

    .line 236
    const-wide/16 v10, 0x0

    .line 237
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uploader/implement/a/i;->k:Lcom/uploader/implement/a/a/b;

    iget-wide v8, v5, Lcom/uploader/implement/a/a/b;->g:J

    .line 241
    :cond_0
    :try_start_0
    new-instance v4, Lcom/uploader/implement/a/a/c;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uploader/implement/a/i;->p:Lcom/uploader/implement/c;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/uploader/implement/a/i;->k:Lcom/uploader/implement/a/a/b;

    const-wide/16 v16, 0x0

    cmp-long v7, v8, v16

    if-nez v7, :cond_2

    const-string v7, "put"

    :goto_0
    const/4 v12, 0x1

    invoke-direct/range {v4 .. v12}, Lcom/uploader/implement/a/a/c;-><init>(Lcom/uploader/implement/c;Lcom/uploader/implement/a/a/b;Ljava/lang/String;JJZ)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 258
    .local v4, "newRequest":Lcom/uploader/implement/a/a/c;
    if-nez p2, :cond_5

    .line 259
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/uploader/implement/d/b;->a(Lcom/uploader/implement/a/e;)V

    .line 263
    :goto_1
    invoke-virtual {v4}, Lcom/uploader/implement/a/a/c;->c()Lcom/uploader/implement/b/a/f;

    move-result-object v15

    .line 264
    .local v15, "target":Lcom/uploader/implement/b/a/f;
    new-instance v5, Lcom/uploader/implement/a/c;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-direct {v5, v6, v7}, Lcom/uploader/implement/a/c;-><init>(ZLcom/uploader/implement/a/c;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    .line 265
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/uploader/implement/a/i;->k:Lcom/uploader/implement/a/a/b;

    iget-object v6, v6, Lcom/uploader/implement/a/a/b;->f:Ljava/lang/String;

    iput-object v6, v5, Lcom/uploader/implement/a/c;->d:Ljava/lang/String;

    .line 266
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/uploader/implement/a/i;->k:Lcom/uploader/implement/a/a/b;

    iget-object v6, v6, Lcom/uploader/implement/a/a/b;->e:Ljava/lang/String;

    iput-object v6, v5, Lcom/uploader/implement/a/c;->p:Ljava/lang/String;

    .line 267
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uploader/implement/a/i;->p:Lcom/uploader/implement/c;

    iget-object v5, v5, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    invoke-virtual {v5}, Lcom/uploader/implement/c$a;->a()Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iput-object v5, v6, Lcom/uploader/implement/a/c;->q:Ljava/lang/String;

    .line 268
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-object v6, v15, Lcom/uploader/implement/b/a/f;->a:Ljava/lang/String;

    iput-object v6, v5, Lcom/uploader/implement/a/c;->e:Ljava/lang/String;

    .line 269
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget v6, v15, Lcom/uploader/implement/b/a/f;->b:I

    iput v6, v5, Lcom/uploader/implement/a/c;->f:I

    .line 270
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/uploader/implement/a/i;->k:Lcom/uploader/implement/a/a/b;

    iget-wide v6, v6, Lcom/uploader/implement/a/a/b;->g:J

    iput-wide v6, v5, Lcom/uploader/implement/a/c;->k:J

    .line 271
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-boolean v5, v15, Lcom/uploader/implement/b/a/f;->f:Z

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    :goto_2
    iput v5, v6, Lcom/uploader/implement/a/c;->t:I

    .line 273
    const/16 v14, 0x8

    .line 274
    .local v14, "p":I
    invoke-static {v14}, Lcom/uploader/implement/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    const-string v6, "UploaderAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " beginFile, request:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p2, :cond_7

    const-string v5, ""

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " newRequest:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v4, :cond_8

    const-string v5, ""

    :goto_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " statistics:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v6, v5}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_1
    const/4 v5, 0x0

    .end local v4    # "newRequest":Lcom/uploader/implement/a/a/c;
    .end local v15    # "target":Lcom/uploader/implement/b/a/f;
    :goto_5
    return-object v5

    .line 241
    .end local v14    # "p":I
    :cond_2
    :try_start_1
    const-string v7, "patch"
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 243
    :catch_0
    move-exception v13

    .line 244
    .local v13, "e":Ljava/io/UnsupportedEncodingException;
    const/16 v14, 0x10

    .line 245
    .restart local v14    # "p":I
    invoke-static {v14}, Lcom/uploader/implement/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 246
    const-string v5, "UploaderAction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " onActionStartFile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v5, v6, v13}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    :cond_3
    new-instance v5, Lcom/uploader/implement/c/a;

    const-string v6, "200"

    const-string v7, "1"

    invoke-virtual {v13}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v5, v6, v7, v12, v0}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 249
    .end local v13    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v14    # "p":I
    :catch_1
    move-exception v13

    .line 250
    .local v13, "e":Ljava/lang/Exception;
    const/16 v14, 0x10

    .line 251
    .restart local v14    # "p":I
    invoke-static {v14}, Lcom/uploader/implement/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 252
    const-string v5, "UploaderAction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " onActionStartFile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v5, v6, v13}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    :cond_4
    new-instance v5, Lcom/uploader/implement/c/a;

    const-string v6, "200"

    const-string v7, "5"

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v5, v6, v7, v12, v0}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 261
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v14    # "p":I
    .restart local v4    # "newRequest":Lcom/uploader/implement/a/a/c;
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, v1, v4, v2}, Lcom/uploader/implement/d/b;->a(Lcom/uploader/implement/a/e;Lcom/uploader/implement/a/e;Z)V

    goto/16 :goto_1

    .line 271
    .restart local v15    # "target":Lcom/uploader/implement/b/a/f;
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 275
    .restart local v14    # "p":I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_4
.end method

.method public c(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;)V
    .locals 6
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;

    .prologue
    .line 428
    const/4 v0, 0x2

    .line 429
    .local v0, "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    const-string v1, "UploaderAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onConnectBegin, session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    if-eqz v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uploader/implement/a/c;->n:J

    .line 435
    const/16 v0, 0x8

    .line 436
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    const-string v1, "UploaderAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onConnectBegin statistics:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connectedTimeMillisStart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-wide v4, v3, Lcom/uploader/implement/a/c;->n:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_1
    return-void
.end method

.method d(Lcom/uploader/implement/a/b/a;)Landroid/util/Pair;
    .locals 7
    .param p1, "response"    # Lcom/uploader/implement/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/a/b/a;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/uploader/implement/c/a;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    const-string v4, "x-arup-process"

    invoke-virtual {p1, v4}, Lcom/uploader/implement/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 722
    .local v3, "progressHeader":Ljava/lang/String;
    const/4 v1, 0x4

    .line 723
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 724
    const-string v4, "UploaderAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " progress :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    const/4 v2, 0x0

    .line 728
    .local v2, "progress":I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 735
    :cond_1
    :goto_0
    new-instance v4, Landroid/util/Pair;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, 0x8

    .line 731
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 732
    const-string v4, "UploaderAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5, v0}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method d(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/c/a;)Lcom/uploader/implement/c/a;
    .locals 5
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
    .param p3, "error"    # Lcom/uploader/implement/c/a;

    .prologue
    .line 343
    iget v2, p0, Lcom/uploader/implement/a/i;->g:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 344
    const/4 v1, 0x2

    .line 345
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    const-string v2, "UploaderAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retryFile, retry failed, request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fileRetryCounter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/uploader/implement/a/i;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p3

    .line 382
    .end local v1    # "p":I
    .end local p3    # "error":Lcom/uploader/implement/c/a;
    .local v0, "error":Lcom/uploader/implement/c/a;
    :goto_0
    return-object v0

    .line 352
    .end local v0    # "error":Lcom/uploader/implement/c/a;
    .restart local p3    # "error":Lcom/uploader/implement/c/a;
    :cond_1
    const-string v2, "100"

    iget-object v3, p3, Lcom/uploader/implement/c/a;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    const/16 v1, 0x8

    .line 354
    .restart local v1    # "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    const-string v2, "UploaderAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retryFile, try to connect next, request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_2
    iget-object v2, p0, Lcom/uploader/implement/a/i;->p:Lcom/uploader/implement/c;

    iget-object v2, v2, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    invoke-virtual {v2}, Lcom/uploader/implement/c$a;->e()V

    .line 362
    const/16 v1, 0x8

    .line 363
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 364
    const-string v2, "UploaderAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ConnectionStrategy, after nextUploadTarget:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/uploader/implement/a/i;->p:Lcom/uploader/implement/c;

    iget-object v4, v4, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local v1    # "p":I
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/uploader/implement/a/i;->c(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Lcom/uploader/implement/c/a;

    move-result-object p3

    .line 369
    if-nez p3, :cond_5

    .line 370
    iget v2, p0, Lcom/uploader/implement/a/i;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/uploader/implement/a/i;->g:I

    .line 371
    const/4 v1, 0x2

    .line 372
    .restart local v1    # "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 373
    const-string v2, "UploaderAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retryFile, request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fileRetryCounter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/uploader/implement/a/i;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_4
    iget-object v2, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    if-eqz v2, :cond_5

    .line 378
    iget-object v2, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget v3, p0, Lcom/uploader/implement/a/i;->g:I

    iput v3, v2, Lcom/uploader/implement/a/c;->r:I

    .end local v1    # "p":I
    :cond_5
    move-object v0, p3

    .line 382
    .end local p3    # "error":Lcom/uploader/implement/c/a;
    .restart local v0    # "error":Lcom/uploader/implement/c/a;
    goto/16 :goto_0
.end method

.method public d(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;)V
    .locals 4
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;

    .prologue
    .line 446
    const/4 v0, 0x2

    .line 447
    .local v0, "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    const-string v1, "UploaderAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onConnect, session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uploader/implement/a/c;->o:J

    .line 454
    :cond_1
    return-void
.end method

.method e(Lcom/uploader/implement/a/b/a;)Landroid/util/Pair;
    .locals 11
    .param p1, "response"    # Lcom/uploader/implement/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/a/b/a;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/uploader/implement/c/a;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 740
    :try_start_0
    iget-object v7, p1, Lcom/uploader/implement/a/b/a;->c:[Ljava/lang/Object;

    .line 741
    .local v7, "objects":[Ljava/lang/Object;
    iget-object v0, p0, Lcom/uploader/implement/a/i;->p:Lcom/uploader/implement/c;

    iget-object v0, v0, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x2

    aget-object v4, v7, v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x3

    aget-object v5, v7, v5

    check-cast v5, Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/uploader/implement/c$a;->a(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    .line 744
    const/16 v8, 0x8

    .line 745
    .local v8, "p":I
    invoke-static {v8}, Lcom/uploader/implement/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    const-string v0, "UploaderAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ConnectionStrategy update:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/uploader/implement/a/i;->p:Lcom/uploader/implement/c;

    iget-object v2, v2, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iput v9, v0, Lcom/uploader/implement/a/c;->g:I

    .line 758
    iget-object v1, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-object v0, p0, Lcom/uploader/implement/a/i;->p:Lcom/uploader/implement/c;

    iget-object v0, v0, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    invoke-virtual {v0}, Lcom/uploader/implement/c$a;->a()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/uploader/implement/a/c;->q:Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/uploader/implement/a/c;->m:J

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Declare"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-virtual {v1}, Lcom/uploader/implement/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uploader/implement/a/i;->i:Ljava/lang/String;

    .line 761
    const/16 v8, 0x8

    .line 762
    invoke-static {v8}, Lcom/uploader/implement/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    const-string v0, "UploaderAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retrieveDeclare, statistics:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " costTimeMillisEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-wide v2, v2, Lcom/uploader/implement/a/c;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v10, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v7    # "objects":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 748
    .end local v8    # "p":I
    :catch_0
    move-exception v6

    .line 749
    .local v6, "e":Ljava/lang/Exception;
    const/4 v8, 0x4

    .line 750
    .restart local v8    # "p":I
    invoke-static {v8}, Lcom/uploader/implement/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    const-string v0, "UploaderAction"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_2
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lcom/uploader/implement/c/a;

    const-string v2, "200"

    const-string v3, "8"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v9}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v0, v1, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method e()Lcom/uploader/implement/c/a;
    .locals 7

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 161
    .local v0, "elapsed":J
    iget-object v4, p0, Lcom/uploader/implement/a/i;->l:Lcom/uploader/export/IUploaderTask;

    invoke-static {v4}, Lcom/uploader/implement/a/c/b;->a(Lcom/uploader/export/IUploaderTask;)Landroid/util/Pair;

    move-result-object v3

    .line 162
    .local v3, "pair":Landroid/util/Pair;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 163
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 164
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/uploader/implement/a/a/b;

    iput-wide v0, v4, Lcom/uploader/implement/a/a/b;->j:J

    .line 165
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/uploader/implement/a/a/b;

    iput-object v4, p0, Lcom/uploader/implement/a/i;->k:Lcom/uploader/implement/a/a/b;

    .line 167
    :cond_0
    const/16 v2, 0x8

    .line 168
    .local v2, "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    const-string v5, "UploaderAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " createFileDescription, elapsed:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " error:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v4, :cond_2

    const-string v4, ""

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v5, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/uploader/implement/c/a;

    return-object v4

    .line 169
    :cond_2
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/uploader/implement/c/a;

    invoke-virtual {v4}, Lcom/uploader/implement/c/a;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public e(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;)V
    .locals 8
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;

    .prologue
    const-wide/16 v6, 0x0

    .line 473
    const-wide/16 v2, 0x0

    .line 474
    .local v2, "time":J
    iget-object v1, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iget-wide v4, v1, Lcom/uploader/implement/a/c;->l:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 477
    iget-object v1, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    iput-wide v2, v1, Lcom/uploader/implement/a/c;->l:J

    .line 480
    :cond_0
    iput-object p2, p0, Lcom/uploader/implement/a/i;->h:Lcom/uploader/implement/a/e;

    .line 481
    const/4 v0, 0x2

    .line 482
    .local v0, "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    const-string v4, "UploaderAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/a/i;->a:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " onSendBegin, session:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " request and set current:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_1
    return-void

    .line 483
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " statistics:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/uploader/implement/a/i;->j:Lcom/uploader/implement/a/c;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " costTimeMillisStart:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final f()Lcom/uploader/export/IUploaderTask;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/uploader/implement/a/i;->l:Lcom/uploader/export/IUploaderTask;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/uploader/implement/a/i;->o:I

    return v0
.end method

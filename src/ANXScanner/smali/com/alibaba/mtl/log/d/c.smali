.class public Lcom/alibaba/mtl/log/d/c;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/log/d/c$c;,
        Lcom/alibaba/mtl/log/d/c$b;,
        Lcom/alibaba/mtl/log/d/c$a;
    }
.end annotation


# static fields
.field static final synthetic J:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/alibaba/mtl/log/d/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alibaba/mtl/log/d/c;->J:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    .line 139
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/alibaba/mtl/log/d/c;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 4
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 161
    new-instance v1, Lcom/alibaba/mtl/log/d/c$b;

    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-direct {v1, p3, v0}, Lcom/alibaba/mtl/log/d/c$b;-><init>(I[B)V

    .line 163
    const/4 v0, 0x1

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/alibaba/mtl/log/d/c$b;->process([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iget v0, v1, Lcom/alibaba/mtl/log/d/c$b;->op:I

    iget-object v2, v1, Lcom/alibaba/mtl/log/d/c$b;->output:[B

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 169
    iget-object v0, v1, Lcom/alibaba/mtl/log/d/c$b;->output:[B

    .line 176
    :goto_0
    return-object v0

    .line 174
    :cond_1
    iget v0, v1, Lcom/alibaba/mtl/log/d/c$b;->op:I

    new-array v0, v0, [B

    .line 175
    iget-object v2, v1, Lcom/alibaba/mtl/log/d/c$b;->output:[B

    iget v1, v1, Lcom/alibaba/mtl/log/d/c$b;->op:I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static encode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    .line 499
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/alibaba/mtl/log/d/c;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .locals 5
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x1

    .line 515
    new-instance v3, Lcom/alibaba/mtl/log/d/c$c;

    const/4 v0, 0x0

    invoke-direct {v3, p3, v0}, Lcom/alibaba/mtl/log/d/c$c;-><init>(I[B)V

    .line 518
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 521
    iget-boolean v1, v3, Lcom/alibaba/mtl/log/d/c$c;->do_padding:Z

    if-eqz v1, :cond_2

    .line 522
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_0

    .line 523
    add-int/lit8 v0, v0, 0x4

    .line 534
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v1, v3, Lcom/alibaba/mtl/log/d/c$c;->do_newline:Z

    if-eqz v1, :cond_1

    if-lez p2, :cond_1

    .line 535
    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/lit8 v4, v1, 0x1

    iget-boolean v1, v3, Lcom/alibaba/mtl/log/d/c$c;->do_cr:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    :goto_1
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 539
    :cond_1
    new-array v1, v0, [B

    iput-object v1, v3, Lcom/alibaba/mtl/log/d/c$c;->output:[B

    .line 540
    invoke-virtual {v3, p0, p1, p2, v2}, Lcom/alibaba/mtl/log/d/c$c;->process([BIIZ)Z

    .line 542
    sget-boolean v1, Lcom/alibaba/mtl/log/d/c;->J:Z

    if-nez v1, :cond_4

    iget v1, v3, Lcom/alibaba/mtl/log/d/c$c;->op:I

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 526
    :cond_2
    rem-int/lit8 v1, p2, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 528
    :pswitch_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 529
    :pswitch_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 535
    goto :goto_1

    .line 544
    :cond_4
    iget-object v0, v3, Lcom/alibaba/mtl/log/d/c$c;->output:[B

    return-object v0

    .line 526
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    .line 461
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/alibaba/mtl/log/d/c;->encode([BI)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 462
    :catch_0
    move-exception v0

    .line 464
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

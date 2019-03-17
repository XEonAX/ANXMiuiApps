.class public Lcom/nexstreaming/app/common/util/k;
.super Ljava/lang/Object;
.source "SimplexNoise.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/util/k$a;
    }
.end annotation


# static fields
.field private static a:[Lcom/nexstreaming/app/common/util/k$a;

.field private static b:[Lcom/nexstreaming/app/common/util/k$a;

.field private static c:[S

.field private static d:[S

.field private static e:[S

.field private static final f:D

.field private static final g:D

.field private static final h:D

.field private static final i:D


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 21
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/nexstreaming/app/common/util/k$a;

    const/4 v8, 0x0

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    aput-object v1, v0, v8

    const/4 v8, 0x1

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    aput-object v1, v0, v8

    const/4 v8, 0x2

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    aput-object v1, v0, v8

    const/4 v8, 0x3

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    aput-object v1, v0, v8

    const/4 v8, 0x4

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v7}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    aput-object v1, v0, v8

    const/4 v8, 0x5

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v7}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    aput-object v1, v0, v8

    const/4 v8, 0x6

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v7}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    aput-object v1, v0, v8

    const/4 v8, 0x7

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v7}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    aput-object v1, v0, v8

    const/16 v8, 0x8

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v7}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    aput-object v1, v0, v8

    const/16 v8, 0x9

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v7}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    aput-object v1, v0, v8

    const/16 v8, 0xa

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v7}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    aput-object v1, v0, v8

    const/16 v8, 0xb

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v7}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    aput-object v1, v0, v8

    sput-object v0, Lcom/nexstreaming/app/common/util/k;->a:[Lcom/nexstreaming/app/common/util/k$a;

    .line 25
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/nexstreaming/app/common/util/k$a;

    const/4 v10, 0x0

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/4 v10, 0x1

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/4 v10, 0x2

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/4 v10, 0x3

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/4 v10, 0x4

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/4 v10, 0x5

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/4 v10, 0x6

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/4 v10, 0x7

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x8

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x9

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0xa

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0xb

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0xc

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0xd

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0xe

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0xf

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x10

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x11

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x12

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x13

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x14

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x15

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x16

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x17

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x18

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x19

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x1a

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x1b

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x1c

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x1d

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x1e

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    const/16 v10, 0x1f

    new-instance v1, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v1, v0, v10

    sput-object v0, Lcom/nexstreaming/app/common/util/k;->b:[Lcom/nexstreaming/app/common/util/k$a;

    .line 34
    const/16 v0, 0x100

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nexstreaming/app/common/util/k;->c:[S

    .line 48
    const/16 v0, 0x200

    new-array v0, v0, [S

    sput-object v0, Lcom/nexstreaming/app/common/util/k;->d:[S

    .line 49
    const/16 v0, 0x200

    new-array v0, v0, [S

    sput-object v0, Lcom/nexstreaming/app/common/util/k;->e:[S

    .line 51
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x200

    if-ge v0, v1, :cond_0

    .line 53
    sget-object v1, Lcom/nexstreaming/app/common/util/k;->d:[S

    sget-object v2, Lcom/nexstreaming/app/common/util/k;->c:[S

    and-int/lit16 v3, v0, 0xff

    aget-short v2, v2, v3

    aput-short v2, v1, v0

    .line 54
    sget-object v1, Lcom/nexstreaming/app/common/util/k;->e:[S

    sget-object v2, Lcom/nexstreaming/app/common/util/k;->d:[S

    aget-short v2, v2, v0

    rem-int/lit8 v2, v2, 0xc

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/nexstreaming/app/common/util/k;->f:D

    .line 60
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    sput-wide v0, Lcom/nexstreaming/app/common/util/k;->g:D

    .line 63
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    sput-wide v0, Lcom/nexstreaming/app/common/util/k;->h:D

    .line 64
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    sput-wide v0, Lcom/nexstreaming/app/common/util/k;->i:D

    return-void

    .line 34
    nop

    :array_0
    .array-data 2
        0x97s
        0xa0s
        0x89s
        0x5bs
        0x5as
        0xfs
        0x83s
        0xds
        0xc9s
        0x5fs
        0x60s
        0x35s
        0xc2s
        0xe9s
        0x7s
        0xe1s
        0x8cs
        0x24s
        0x67s
        0x1es
        0x45s
        0x8es
        0x8s
        0x63s
        0x25s
        0xf0s
        0x15s
        0xas
        0x17s
        0xbes
        0x6s
        0x94s
        0xf7s
        0x78s
        0xeas
        0x4bs
        0x0s
        0x1as
        0xc5s
        0x3es
        0x5es
        0xfcs
        0xdbs
        0xcbs
        0x75s
        0x23s
        0xbs
        0x20s
        0x39s
        0xb1s
        0x21s
        0x58s
        0xeds
        0x95s
        0x38s
        0x57s
        0xaes
        0x14s
        0x7ds
        0x88s
        0xabs
        0xa8s
        0x44s
        0xafs
        0x4as
        0xa5s
        0x47s
        0x86s
        0x8bs
        0x30s
        0x1bs
        0xa6s
        0x4ds
        0x92s
        0x9es
        0xe7s
        0x53s
        0x6fs
        0xe5s
        0x7as
        0x3cs
        0xd3s
        0x85s
        0xe6s
        0xdcs
        0x69s
        0x5cs
        0x29s
        0x37s
        0x2es
        0xf5s
        0x28s
        0xf4s
        0x66s
        0x8fs
        0x36s
        0x41s
        0x19s
        0x3fs
        0xa1s
        0x1s
        0xd8s
        0x50s
        0x49s
        0xd1s
        0x4cs
        0x84s
        0xbbs
        0xd0s
        0x59s
        0x12s
        0xa9s
        0xc8s
        0xc4s
        0x87s
        0x82s
        0x74s
        0xbcs
        0x9fs
        0x56s
        0xa4s
        0x64s
        0x6ds
        0xc6s
        0xads
        0xbas
        0x3s
        0x40s
        0x34s
        0xd9s
        0xe2s
        0xfas
        0x7cs
        0x7bs
        0x5s
        0xcas
        0x26s
        0x93s
        0x76s
        0x7es
        0xffs
        0x52s
        0x55s
        0xd4s
        0xcfs
        0xces
        0x3bs
        0xe3s
        0x2fs
        0x10s
        0x3as
        0x11s
        0xb6s
        0xbds
        0x1cs
        0x2as
        0xdfs
        0xb7s
        0xaas
        0xd5s
        0x77s
        0xf8s
        0x98s
        0x2s
        0x2cs
        0x9as
        0xa3s
        0x46s
        0xdds
        0x99s
        0x65s
        0x9bs
        0xa7s
        0x2bs
        0xacs
        0x9s
        0x81s
        0x16s
        0x27s
        0xfds
        0x13s
        0x62s
        0x6cs
        0x6es
        0x4fs
        0x71s
        0xe0s
        0xe8s
        0xb2s
        0xb9s
        0x70s
        0x68s
        0xdas
        0xf6s
        0x61s
        0xe4s
        0xfbs
        0x22s
        0xf2s
        0xc1s
        0xees
        0xd2s
        0x90s
        0xcs
        0xbfs
        0xb3s
        0xa2s
        0xf1s
        0x51s
        0x33s
        0x91s
        0xebs
        0xf9s
        0xes
        0xefs
        0x6bs
        0x31s
        0xc0s
        0xd6s
        0x1fs
        0xb5s
        0xc7s
        0x6as
        0x9ds
        0xb8s
        0x54s
        0xccs
        0xb0s
        0x73s
        0x79s
        0x32s
        0x2ds
        0x7fs
        0x4s
        0x96s
        0xfes
        0x8as
        0xecs
        0xcds
        0x5ds
        0xdes
        0x72s
        0x43s
        0x1ds
        0x18s
        0x48s
        0xf3s
        0x8ds
        0x80s
        0xc3s
        0x4es
        0x42s
        0xd7s
        0x3ds
        0x9cs
        0xb4s
    .end array-data
.end method

.method public static a(DDD)D
    .locals 40

    .prologue
    .line 141
    add-double v2, p0, p2

    add-double v2, v2, p4

    const-wide v4, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double/2addr v2, v4

    .line 142
    add-double v4, p0, v2

    invoke-static {v4, v5}, Lcom/nexstreaming/app/common/util/k;->a(D)I

    move-result v14

    .line 143
    add-double v4, p2, v2

    invoke-static {v4, v5}, Lcom/nexstreaming/app/common/util/k;->a(D)I

    move-result v15

    .line 144
    add-double v2, v2, p4

    invoke-static {v2, v3}, Lcom/nexstreaming/app/common/util/k;->a(D)I

    move-result v16

    .line 145
    add-int v2, v14, v15

    add-int v2, v2, v16

    int-to-double v2, v2

    const-wide v4, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double/2addr v2, v4

    .line 146
    int-to-double v4, v14

    sub-double/2addr v4, v2

    .line 147
    int-to-double v6, v15

    sub-double/2addr v6, v2

    .line 148
    move/from16 v0, v16

    int-to-double v8, v0

    sub-double v2, v8, v2

    .line 149
    sub-double v4, p0, v4

    .line 150
    sub-double v6, p2, v6

    .line 151
    sub-double v8, p4, v2

    .line 156
    cmpl-double v2, v4, v6

    if-ltz v2, :cond_2

    .line 157
    cmpl-double v2, v6, v8

    if-ltz v2, :cond_0

    .line 158
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    :goto_0
    int-to-double v0, v13

    move-wide/from16 v18, v0

    sub-double v18, v4, v18

    const-wide v20, 0x3fc5555555555555L    # 0.16666666666666666

    add-double v18, v18, v20

    .line 172
    int-to-double v0, v12

    move-wide/from16 v20, v0

    sub-double v20, v6, v20

    const-wide v22, 0x3fc5555555555555L    # 0.16666666666666666

    add-double v20, v20, v22

    .line 173
    int-to-double v0, v11

    move-wide/from16 v22, v0

    sub-double v22, v8, v22

    const-wide v24, 0x3fc5555555555555L    # 0.16666666666666666

    add-double v22, v22, v24

    .line 174
    int-to-double v0, v10

    move-wide/from16 v24, v0

    sub-double v24, v4, v24

    const-wide v26, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v24, v24, v26

    .line 175
    int-to-double v0, v3

    move-wide/from16 v26, v0

    sub-double v26, v6, v26

    const-wide v28, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v26, v26, v28

    .line 176
    int-to-double v0, v2

    move-wide/from16 v28, v0

    sub-double v28, v8, v28

    const-wide v30, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v28, v28, v30

    .line 177
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    sub-double v30, v4, v30

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    add-double v30, v30, v32

    .line 178
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    sub-double v32, v6, v32

    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    add-double v32, v32, v34

    .line 179
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    sub-double v34, v8, v34

    const-wide/high16 v36, 0x3fe0000000000000L    # 0.5

    add-double v34, v34, v36

    .line 181
    and-int/lit16 v14, v14, 0xff

    .line 182
    and-int/lit16 v15, v15, 0xff

    .line 183
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 184
    sget-object v17, Lcom/nexstreaming/app/common/util/k;->e:[S

    sget-object v36, Lcom/nexstreaming/app/common/util/k;->d:[S

    sget-object v37, Lcom/nexstreaming/app/common/util/k;->d:[S

    aget-short v37, v37, v16

    add-int v37, v37, v15

    aget-short v36, v36, v37

    add-int v36, v36, v14

    aget-short v17, v17, v36

    .line 185
    sget-object v36, Lcom/nexstreaming/app/common/util/k;->e:[S

    add-int/2addr v13, v14

    sget-object v37, Lcom/nexstreaming/app/common/util/k;->d:[S

    add-int/2addr v12, v15

    sget-object v38, Lcom/nexstreaming/app/common/util/k;->d:[S

    add-int v11, v11, v16

    aget-short v11, v38, v11

    add-int/2addr v11, v12

    aget-short v11, v37, v11

    add-int/2addr v11, v13

    aget-short v11, v36, v11

    .line 186
    sget-object v12, Lcom/nexstreaming/app/common/util/k;->e:[S

    add-int/2addr v10, v14

    sget-object v13, Lcom/nexstreaming/app/common/util/k;->d:[S

    add-int/2addr v3, v15

    sget-object v36, Lcom/nexstreaming/app/common/util/k;->d:[S

    add-int v2, v2, v16

    aget-short v2, v36, v2

    add-int/2addr v2, v3

    aget-short v2, v13, v2

    add-int/2addr v2, v10

    aget-short v10, v12, v2

    .line 187
    sget-object v2, Lcom/nexstreaming/app/common/util/k;->e:[S

    add-int/lit8 v3, v14, 0x1

    sget-object v12, Lcom/nexstreaming/app/common/util/k;->d:[S

    add-int/lit8 v13, v15, 0x1

    sget-object v14, Lcom/nexstreaming/app/common/util/k;->d:[S

    add-int/lit8 v15, v16, 0x1

    aget-short v14, v14, v15

    add-int/2addr v13, v14

    aget-short v12, v12, v13

    add-int/2addr v3, v12

    aget-short v16, v2, v3

    .line 189
    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double v12, v4, v4

    sub-double/2addr v2, v12

    mul-double v12, v6, v6

    sub-double/2addr v2, v12

    mul-double v12, v8, v8

    sub-double/2addr v2, v12

    .line 190
    const-wide/16 v12, 0x0

    cmpg-double v12, v2, v12

    if-gez v12, :cond_5

    const-wide/16 v2, 0x0

    move-wide v14, v2

    .line 195
    :goto_1
    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double v4, v18, v18

    sub-double/2addr v2, v4

    mul-double v4, v20, v20

    sub-double/2addr v2, v4

    mul-double v4, v22, v22

    sub-double/2addr v2, v4

    .line 196
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_6

    const-wide/16 v2, 0x0

    move-wide v12, v2

    .line 201
    :goto_2
    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double v4, v24, v24

    sub-double/2addr v2, v4

    mul-double v4, v26, v26

    sub-double/2addr v2, v4

    mul-double v4, v28, v28

    sub-double/2addr v2, v4

    .line 202
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_7

    const-wide/16 v2, 0x0

    move-wide v10, v2

    .line 207
    :goto_3
    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double v4, v30, v30

    sub-double/2addr v2, v4

    mul-double v4, v32, v32

    sub-double/2addr v2, v4

    mul-double v4, v34, v34

    sub-double/2addr v2, v4

    .line 208
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_8

    const-wide/16 v2, 0x0

    .line 215
    :goto_4
    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    add-double v6, v14, v12

    add-double/2addr v6, v10

    add-double/2addr v2, v6

    mul-double/2addr v2, v4

    return-wide v2

    .line 159
    :cond_0
    cmpl-double v2, v4, v8

    if-ltz v2, :cond_1

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 160
    :cond_1
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 163
    :cond_2
    cmpg-double v2, v6, v8

    if-gez v2, :cond_3

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 164
    :cond_3
    cmpg-double v2, v4, v8

    if-gez v2, :cond_4

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 165
    :cond_4
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 192
    :cond_5
    mul-double/2addr v2, v2

    .line 193
    mul-double v12, v2, v2

    sget-object v2, Lcom/nexstreaming/app/common/util/k;->a:[Lcom/nexstreaming/app/common/util/k$a;

    aget-object v3, v2, v17

    invoke-static/range {v3 .. v9}, Lcom/nexstreaming/app/common/util/k;->a(Lcom/nexstreaming/app/common/util/k$a;DDD)D

    move-result-wide v2

    mul-double/2addr v2, v12

    move-wide v14, v2

    goto/16 :goto_1

    .line 198
    :cond_6
    mul-double/2addr v2, v2

    .line 199
    mul-double v12, v2, v2

    sget-object v2, Lcom/nexstreaming/app/common/util/k;->a:[Lcom/nexstreaming/app/common/util/k$a;

    aget-object v3, v2, v11

    move-wide/from16 v4, v18

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    invoke-static/range {v3 .. v9}, Lcom/nexstreaming/app/common/util/k;->a(Lcom/nexstreaming/app/common/util/k$a;DDD)D

    move-result-wide v2

    mul-double/2addr v2, v12

    move-wide v12, v2

    goto/16 :goto_2

    .line 204
    :cond_7
    mul-double/2addr v2, v2

    .line 205
    mul-double v18, v2, v2

    sget-object v2, Lcom/nexstreaming/app/common/util/k;->a:[Lcom/nexstreaming/app/common/util/k$a;

    aget-object v3, v2, v10

    move-wide/from16 v4, v24

    move-wide/from16 v6, v26

    move-wide/from16 v8, v28

    invoke-static/range {v3 .. v9}, Lcom/nexstreaming/app/common/util/k;->a(Lcom/nexstreaming/app/common/util/k$a;DDD)D

    move-result-wide v2

    mul-double v2, v2, v18

    move-wide v10, v2

    goto/16 :goto_3

    .line 210
    :cond_8
    mul-double/2addr v2, v2

    .line 211
    mul-double v18, v2, v2

    sget-object v2, Lcom/nexstreaming/app/common/util/k;->a:[Lcom/nexstreaming/app/common/util/k$a;

    aget-object v3, v2, v16

    move-wide/from16 v4, v30

    move-wide/from16 v6, v32

    move-wide/from16 v8, v34

    invoke-static/range {v3 .. v9}, Lcom/nexstreaming/app/common/util/k;->a(Lcom/nexstreaming/app/common/util/k$a;DDD)D

    move-result-wide v2

    mul-double v2, v2, v18

    goto/16 :goto_4
.end method

.method private static a(Lcom/nexstreaming/app/common/util/k$a;DDD)D
    .locals 5

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/nexstreaming/app/common/util/k$a;->a:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/nexstreaming/app/common/util/k$a;->b:D

    mul-double/2addr v2, p3

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/nexstreaming/app/common/util/k$a;->c:D

    mul-double/2addr v2, p5

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static a(D)I
    .locals 4

    .prologue
    .line 68
    double-to-int v0, p0

    .line 69
    int-to-double v2, v0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.class public final enum Lcom/alibaba/mtl/appmonitor/a/f;
.super Ljava/lang/Enum;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/mtl/appmonitor/a/f;",
        ">;"
    }
.end annotation


# static fields
.field static TAG:Ljava/lang/String;

.field public static final enum a:Lcom/alibaba/mtl/appmonitor/a/f;

.field private static final synthetic a:[Lcom/alibaba/mtl/appmonitor/a/f;

.field public static final enum b:Lcom/alibaba/mtl/appmonitor/a/f;

.field public static final enum c:Lcom/alibaba/mtl/appmonitor/a/f;

.field public static final enum d:Lcom/alibaba/mtl/appmonitor/a/f;


# instance fields
.field private e:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private m:Z

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 7
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a/f;

    const-string v1, "ALARM"

    const/4 v2, 0x0

    const v3, 0xffdd

    const/16 v4, 0x1e

    const-string v5, "alarmData"

    const/16 v6, 0x1388

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/mtl/appmonitor/a/f;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    new-instance v0, Lcom/alibaba/mtl/appmonitor/a/f;

    const-string v1, "COUNTER"

    const/4 v2, 0x1

    const v3, 0xffde

    const/16 v4, 0x1e

    const-string v5, "counterData"

    const/16 v6, 0x1388

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/mtl/appmonitor/a/f;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->b:Lcom/alibaba/mtl/appmonitor/a/f;

    new-instance v0, Lcom/alibaba/mtl/appmonitor/a/f;

    const-string v1, "OFFLINE_COUNTER"

    const/4 v2, 0x2

    const v3, 0xfe6d

    const/16 v4, 0x1e

    const-string v5, "counterData"

    const/16 v6, 0x1388

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/mtl/appmonitor/a/f;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->c:Lcom/alibaba/mtl/appmonitor/a/f;

    new-instance v0, Lcom/alibaba/mtl/appmonitor/a/f;

    const-string v1, "STAT"

    const/4 v2, 0x3

    const v3, 0xffdf

    const/16 v4, 0x1e

    const-string v5, "statData"

    const/16 v6, 0x1388

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/mtl/appmonitor/a/f;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/mtl/appmonitor/a/f;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/mtl/appmonitor/a/f;->b:Lcom/alibaba/mtl/appmonitor/a/f;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alibaba/mtl/appmonitor/a/f;->c:Lcom/alibaba/mtl/appmonitor/a/f;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->a:[Lcom/alibaba/mtl/appmonitor/a/f;

    .line 37
    const-string v0, "EventType"

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    const/16 v0, 0x19

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->i:I

    .line 31
    const/16 v0, 0xb4

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->j:I

    .line 39
    iput p3, p0, Lcom/alibaba/mtl/appmonitor/a/f;->e:I

    .line 40
    iput p4, p0, Lcom/alibaba/mtl/appmonitor/a/f;->h:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->m:Z

    .line 42
    iput-object p5, p0, Lcom/alibaba/mtl/appmonitor/a/f;->t:Ljava/lang/String;

    .line 43
    iput p6, p0, Lcom/alibaba/mtl/appmonitor/a/f;->k:I

    .line 44
    return-void
.end method

.method public static a(I)Lcom/alibaba/mtl/appmonitor/a/f;
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/f;->a()[Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v2

    .line 70
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_1

    .line 71
    aget-object v1, v2, v0

    .line 72
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v3

    if-ne v3, p0, :cond_0

    move-object v0, v1

    .line 76
    :goto_1
    return-object v0

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a()[Lcom/alibaba/mtl/appmonitor/a/f;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->a:[Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, [Lcom/alibaba/mtl/appmonitor/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/mtl/appmonitor/a/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->e:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->t:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->h:I

    return v0
.end method

.method public b(I)V
    .locals 5

    .prologue
    .line 64
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[setTriggerCount]"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/a/f;->t:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/a/f;->h:I

    .line 66
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/alibaba/mtl/appmonitor/a/f;->m:Z

    .line 56
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->i:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/a/f;->k:I

    .line 102
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->j:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->k:I

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->m:Z

    return v0
.end method

.method public setStatisticsInterval(I)V
    .locals 0
    .param p1, "statisticsInterval"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/a/f;->i:I

    .line 93
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/a/f;->j:I

    .line 94
    return-void
.end method

.class public Lcom/alibaba/mtl/log/a/b;
.super Ljava/lang/Object;
.source "GcConfigChannelMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/log/a/b$a;
    }
.end annotation


# static fields
.field private static P:Ljava/lang/String;

.field private static a:Lcom/alibaba/mtl/log/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/alibaba/mtl/log/a/b;

    invoke-direct {v0}, Lcom/alibaba/mtl/log/a/b;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/a/b;->a:Lcom/alibaba/mtl/log/a/b;

    .line 17
    const-string v0, "adashxgc.ut.taobao.com"

    sput-object v0, Lcom/alibaba/mtl/log/a/b;->P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/mtl/log/a/b;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/alibaba/mtl/log/a/b;->a:Lcom/alibaba/mtl/log/a/b;

    return-object v0
.end method

.method private static i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/mtl/log/a/b;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/rest/gc2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/alibaba/mtl/log/a/b;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public q()V
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    new-instance v1, Lcom/alibaba/mtl/log/a/b$a;

    invoke-direct {v1, p0}, Lcom/alibaba/mtl/log/a/b$a;-><init>(Lcom/alibaba/mtl/log/a/b;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/d/r;->b(Ljava/lang/Runnable;)V

    .line 28
    return-void
.end method

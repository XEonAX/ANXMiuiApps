.class public Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;
.super Ljava/lang/Object;
.source "RemoteDataPackingJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;

.field private c:Lorg/json/JSONArray;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;Lorg/json/JSONArray;JJI)V
    .locals 1

    .prologue
    .line 66
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->b:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->c:Lorg/json/JSONArray;

    .line 68
    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->d:J

    .line 69
    iput-wide p5, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->e:J

    .line 70
    iput p7, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->c:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->e:J

    return-wide v0
.end method

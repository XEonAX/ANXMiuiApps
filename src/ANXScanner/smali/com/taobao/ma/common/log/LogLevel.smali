.class public final enum Lcom/taobao/ma/common/log/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/ma/common/log/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/ma/common/log/LogLevel;

.field public static final enum DEBUG:Lcom/taobao/ma/common/log/LogLevel;

.field public static final enum ERROR:Lcom/taobao/ma/common/log/LogLevel;

.field public static final enum INFO:Lcom/taobao/ma/common/log/LogLevel;

.field public static final enum TRACE:Lcom/taobao/ma/common/log/LogLevel;

.field public static final enum WARN:Lcom/taobao/ma/common/log/LogLevel;


# instance fields
.field private final mAndroidLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 7
    new-instance v0, Lcom/taobao/ma/common/log/LogLevel;

    const-string v1, "TRACE"

    invoke-direct {v0, v1, v6, v3}, Lcom/taobao/ma/common/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/ma/common/log/LogLevel;->TRACE:Lcom/taobao/ma/common/log/LogLevel;

    .line 8
    new-instance v0, Lcom/taobao/ma/common/log/LogLevel;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v7, v4}, Lcom/taobao/ma/common/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/ma/common/log/LogLevel;->DEBUG:Lcom/taobao/ma/common/log/LogLevel;

    .line 9
    new-instance v0, Lcom/taobao/ma/common/log/LogLevel;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3, v5}, Lcom/taobao/ma/common/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/ma/common/log/LogLevel;->INFO:Lcom/taobao/ma/common/log/LogLevel;

    .line 10
    new-instance v0, Lcom/taobao/ma/common/log/LogLevel;

    const-string v1, "WARN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/taobao/ma/common/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/ma/common/log/LogLevel;->WARN:Lcom/taobao/ma/common/log/LogLevel;

    .line 11
    new-instance v0, Lcom/taobao/ma/common/log/LogLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lcom/taobao/ma/common/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/ma/common/log/LogLevel;->ERROR:Lcom/taobao/ma/common/log/LogLevel;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/taobao/ma/common/log/LogLevel;

    sget-object v1, Lcom/taobao/ma/common/log/LogLevel;->TRACE:Lcom/taobao/ma/common/log/LogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/ma/common/log/LogLevel;->DEBUG:Lcom/taobao/ma/common/log/LogLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/ma/common/log/LogLevel;->INFO:Lcom/taobao/ma/common/log/LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/ma/common/log/LogLevel;->WARN:Lcom/taobao/ma/common/log/LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/ma/common/log/LogLevel;->ERROR:Lcom/taobao/ma/common/log/LogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/ma/common/log/LogLevel;->$VALUES:[Lcom/taobao/ma/common/log/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "androidLogLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/taobao/ma/common/log/LogLevel;->mAndroidLogLevel:I

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/ma/common/log/LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/taobao/ma/common/log/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/ma/common/log/LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/taobao/ma/common/log/LogLevel;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->$VALUES:[Lcom/taobao/ma/common/log/LogLevel;

    invoke-virtual {v0}, [Lcom/taobao/ma/common/log/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/ma/common/log/LogLevel;

    return-object v0
.end method


# virtual methods
.method getAndroidLogLevel()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/taobao/ma/common/log/LogLevel;->mAndroidLogLevel:I

    return v0
.end method

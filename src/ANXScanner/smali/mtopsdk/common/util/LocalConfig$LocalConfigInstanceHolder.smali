.class Lmtopsdk/common/util/LocalConfig$LocalConfigInstanceHolder;
.super Ljava/lang/Object;
.source "LocalConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/common/util/LocalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalConfigInstanceHolder"
.end annotation


# static fields
.field private static instance:Lmtopsdk/common/util/LocalConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lmtopsdk/common/util/LocalConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmtopsdk/common/util/LocalConfig;-><init>(Lmtopsdk/common/util/LocalConfig$1;)V

    sput-object v0, Lmtopsdk/common/util/LocalConfig$LocalConfigInstanceHolder;->instance:Lmtopsdk/common/util/LocalConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lmtopsdk/common/util/LocalConfig;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lmtopsdk/common/util/LocalConfig$LocalConfigInstanceHolder;->instance:Lmtopsdk/common/util/LocalConfig;

    return-object v0
.end method

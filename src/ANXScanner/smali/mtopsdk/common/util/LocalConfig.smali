.class public Lmtopsdk/common/util/LocalConfig;
.super Ljava/lang/Object;
.source "LocalConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/common/util/LocalConfig$1;,
        Lmtopsdk/common/util/LocalConfig$LocalConfigInstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.LocalConfig"


# instance fields
.field public enableSpdy:Z

.field public enableSsl:Z

.field public enableUnit:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lmtopsdk/common/util/LocalConfig;->enableSpdy:Z

    .line 22
    iput-boolean v0, p0, Lmtopsdk/common/util/LocalConfig;->enableUnit:Z

    .line 24
    iput-boolean v0, p0, Lmtopsdk/common/util/LocalConfig;->enableSsl:Z

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lmtopsdk/common/util/LocalConfig$1;)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lmtopsdk/common/util/LocalConfig;-><init>()V

    return-void
.end method

.method public static getInstance()Lmtopsdk/common/util/LocalConfig;
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lmtopsdk/common/util/LocalConfig$LocalConfigInstanceHolder;->access$100()Lmtopsdk/common/util/LocalConfig;

    move-result-object v0

    return-object v0
.end method

.class public final enum Lmtopsdk/common/util/TBSdkLog$LogEnable;
.super Ljava/lang/Enum;
.source "TBSdkLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/common/util/TBSdkLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogEnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmtopsdk/common/util/TBSdkLog$LogEnable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/common/util/TBSdkLog$LogEnable;

.field public static final enum DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

.field public static final enum ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

.field public static final enum InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

.field public static final enum NoneEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

.field public static final enum VerboseEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

.field public static final enum WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;


# instance fields
.field private logEnable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    new-instance v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    const-string v1, "VerboseEnable"

    const-string v2, "V"

    invoke-direct {v0, v1, v4, v2}, Lmtopsdk/common/util/TBSdkLog$LogEnable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->VerboseEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    new-instance v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    const-string v1, "DebugEnable"

    const-string v2, "D"

    invoke-direct {v0, v1, v5, v2}, Lmtopsdk/common/util/TBSdkLog$LogEnable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    new-instance v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    const-string v1, "InfoEnable"

    const-string v2, "I"

    invoke-direct {v0, v1, v6, v2}, Lmtopsdk/common/util/TBSdkLog$LogEnable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    new-instance v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    const-string v1, "WarnEnable"

    const-string v2, "W"

    invoke-direct {v0, v1, v7, v2}, Lmtopsdk/common/util/TBSdkLog$LogEnable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    new-instance v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    const-string v1, "ErrorEnable"

    const-string v2, "E"

    invoke-direct {v0, v1, v8, v2}, Lmtopsdk/common/util/TBSdkLog$LogEnable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    new-instance v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    const-string v1, "NoneEnable"

    const/4 v2, 0x5

    const-string v3, "L"

    invoke-direct {v0, v1, v2, v3}, Lmtopsdk/common/util/TBSdkLog$LogEnable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->NoneEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Lmtopsdk/common/util/TBSdkLog$LogEnable;

    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->VerboseEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    aput-object v1, v0, v4

    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    aput-object v1, v0, v5

    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    aput-object v1, v0, v6

    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    aput-object v1, v0, v7

    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->NoneEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    aput-object v2, v0, v1

    sput-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->$VALUES:[Lmtopsdk/common/util/TBSdkLog$LogEnable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->logEnable:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog$LogEnable;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    return-object v0
.end method

.method public static values()[Lmtopsdk/common/util/TBSdkLog$LogEnable;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->$VALUES:[Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-virtual {v0}, [Lmtopsdk/common/util/TBSdkLog$LogEnable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/common/util/TBSdkLog$LogEnable;

    return-object v0
.end method


# virtual methods
.method public final getLogEnable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->logEnable:Ljava/lang/String;

    return-object v0
.end method

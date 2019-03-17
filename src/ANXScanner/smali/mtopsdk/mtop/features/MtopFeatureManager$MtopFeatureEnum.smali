.class public final enum Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;
.super Ljava/lang/Enum;
.source "MtopFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/mtop/features/MtopFeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MtopFeatureEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

.field public static final enum DISABLE_WHITEBOX_SIGN:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

.field public static final enum DISABLE_X_COMMAND:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

.field public static final enum SUPPORT_OPEN_ACCOUNT:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

.field public static final enum SUPPORT_RELATIVE_URL:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

.field public static final enum SUPPORT_UTDID_UNIT:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

.field public static final enum UNIT_INFO_FEATURE:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;


# instance fields
.field feature:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 25
    new-instance v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    const-string v1, "SUPPORT_RELATIVE_URL"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v6, v2, v3}, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->SUPPORT_RELATIVE_URL:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    new-instance v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    const-string v1, "UNIT_INFO_FEATURE"

    const-wide/16 v2, 0x2

    invoke-direct {v0, v1, v7, v2, v3}, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->UNIT_INFO_FEATURE:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    new-instance v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    const-string v1, "DISABLE_WHITEBOX_SIGN"

    const-wide/16 v2, 0x3

    invoke-direct {v0, v1, v8, v2, v3}, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->DISABLE_WHITEBOX_SIGN:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    new-instance v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    const-string v1, "SUPPORT_UTDID_UNIT"

    const-wide/16 v2, 0x4

    invoke-direct {v0, v1, v9, v2, v3}, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->SUPPORT_UTDID_UNIT:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    new-instance v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    const-string v1, "DISABLE_X_COMMAND"

    const-wide/16 v2, 0x5

    invoke-direct {v0, v1, v10, v2, v3}, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->DISABLE_X_COMMAND:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    new-instance v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    const-string v1, "SUPPORT_OPEN_ACCOUNT"

    const/4 v2, 0x5

    const-wide/16 v4, 0x6

    invoke-direct {v0, v1, v2, v4, v5}, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->SUPPORT_OPEN_ACCOUNT:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    sget-object v1, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->SUPPORT_RELATIVE_URL:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    aput-object v1, v0, v6

    sget-object v1, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->UNIT_INFO_FEATURE:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    aput-object v1, v0, v7

    sget-object v1, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->DISABLE_WHITEBOX_SIGN:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    aput-object v1, v0, v8

    sget-object v1, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->SUPPORT_UTDID_UNIT:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    aput-object v1, v0, v9

    sget-object v1, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->DISABLE_X_COMMAND:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    aput-object v1, v0, v10

    const/4 v1, 0x5

    sget-object v2, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->SUPPORT_OPEN_ACCOUNT:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    aput-object v2, v0, v1

    sput-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->$VALUES:[Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-wide p3, p0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->feature:J

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    return-object v0
.end method

.method public static values()[Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->$VALUES:[Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    invoke-virtual {v0}, [Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    return-object v0
.end method


# virtual methods
.method public final getFeature()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->feature:J

    return-wide v0
.end method

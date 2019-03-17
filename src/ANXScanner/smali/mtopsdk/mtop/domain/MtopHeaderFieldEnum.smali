.class public final enum Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;
.super Ljava/lang/Enum;
.source "MtopHeaderFieldEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum ACT:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum APPKEY:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum MTOP_FEATURE:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum PV:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum SID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum SIGN:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum TIME:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum TTID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum UID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum USER_AGENT:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum UTDID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum WUAT:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum X_APP_VER:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;


# instance fields
.field private headField:Ljava/lang/String;

.field private xstateKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string v1, "ACT"

    const-string v2, "x-act"

    const-string v3, "accessToken"

    invoke-direct {v0, v1, v5, v2, v3}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->ACT:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 9
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string v1, "WUAT"

    const-string v2, "x-wuat"

    const-string v3, "wua"

    invoke-direct {v0, v1, v6, v2, v3}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->WUAT:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 10
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string v1, "SID"

    const-string v2, "x-sid"

    const-string v3, "sid"

    invoke-direct {v0, v1, v7, v2, v3}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->SID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 11
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string v1, "TIME"

    const-string v2, "x-t"

    const-string v3, "t"

    invoke-direct {v0, v1, v8, v2, v3}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->TIME:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 12
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string v1, "APPKEY"

    const-string v2, "x-appkey"

    const-string v3, "appKey"

    invoke-direct {v0, v1, v9, v2, v3}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->APPKEY:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 13
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string v1, "TTID"

    const/4 v2, 0x5

    const-string v3, "x-ttid"

    const-string v4, "ttid"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->TTID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 14
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string v1, "UTDID"

    const/4 v2, 0x6

    const-string v3, "x-utdid"

    const-string v4, "utdid"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->UTDID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 15
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string v1, "SIGN"

    const/4 v2, 0x7

    const-string v3, "x-sign"

    const-string v4, "sign"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->SIGN:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 16
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string v1, "PV"

    const/16 v2, 0x8

    const-string v3, "x-pv"

    const-string v4, "pv"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->PV:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 17
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string v1, "UID"

    const/16 v2, 0x9

    const-string v3, "x-uid"

    const-string v4, "uid"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->UID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 18
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string v1, "MTOP_FEATURE"

    const/16 v2, 0xa

    const-string v3, "x-features"

    const-string v4, "x-features"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->MTOP_FEATURE:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 21
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string v1, "X_APP_VER"

    const/16 v2, 0xb

    const-string v3, "x-app-ver"

    const-string v4, "x-app-ver"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->X_APP_VER:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 22
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string v1, "USER_AGENT"

    const/16 v2, 0xc

    const-string v3, "user-agent"

    const-string v4, "user-agent"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->USER_AGENT:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 6
    const/16 v0, 0xd

    new-array v0, v0, [Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    sget-object v1, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->ACT:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v1, v0, v5

    sget-object v1, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->WUAT:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v1, v0, v6

    sget-object v1, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->SID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v1, v0, v7

    sget-object v1, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->TIME:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v1, v0, v8

    sget-object v1, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->APPKEY:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->TTID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->UTDID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->SIGN:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->PV:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->UID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->MTOP_FEATURE:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->X_APP_VER:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->USER_AGENT:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->$VALUES:[Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->headField:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->xstateKey:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    return-object v0
.end method

.method public static values()[Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->$VALUES:[Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    invoke-virtual {v0}, [Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    return-object v0
.end method


# virtual methods
.method public final getHeadField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->headField:Ljava/lang/String;

    return-object v0
.end method

.method public final getXstateKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->xstateKey:Ljava/lang/String;

    return-object v0
.end method

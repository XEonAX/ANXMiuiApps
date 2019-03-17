.class public final enum Lcom/miui/filtersdk/beauty/BeautyParameterType;
.super Ljava/lang/Enum;
.source "BeautyParameterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field public static final enum BRIGHT_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field public static final enum CONTRAST_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field public static final enum DEBLEMISH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field public static final enum DEPOUCH_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field public static final enum ENLARGE_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field public static final enum IRIS_SHINE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field public static final enum LIP_BEAUTY_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field public static final enum RELIGHTING_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field public static final enum RUDDY_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field public static final enum SHRINK_FACE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field public static final enum SHRINK_JAW_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field public static final enum SHRINK_NOSE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field public static final enum SMOOTH_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field public static final enum WHITEN_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const-string v1, "CONTRAST_STRENGTH"

    invoke-direct {v0, v1, v3}, Lcom/miui/filtersdk/beauty/BeautyParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->CONTRAST_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 8
    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const-string v1, "SMOOTH_STRENGTH"

    invoke-direct {v0, v1, v4}, Lcom/miui/filtersdk/beauty/BeautyParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SMOOTH_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 9
    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const-string v1, "WHITEN_STRENGTH"

    invoke-direct {v0, v1, v5}, Lcom/miui/filtersdk/beauty/BeautyParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->WHITEN_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 10
    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const-string v1, "ENLARGE_EYE_RATIO"

    invoke-direct {v0, v1, v6}, Lcom/miui/filtersdk/beauty/BeautyParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ENLARGE_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 11
    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const-string v1, "SHRINK_FACE_RATIO"

    invoke-direct {v0, v1, v7}, Lcom/miui/filtersdk/beauty/BeautyParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_FACE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 12
    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const-string v1, "SHRINK_JAW_RATIO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/filtersdk/beauty/BeautyParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_JAW_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 13
    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const-string v1, "RUDDY_STRENGTH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/filtersdk/beauty/BeautyParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->RUDDY_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 14
    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const-string v1, "BRIGHT_EYE_RATIO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/miui/filtersdk/beauty/BeautyParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->BRIGHT_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 15
    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const-string v1, "IRIS_SHINE_RATIO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/miui/filtersdk/beauty/BeautyParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->IRIS_SHINE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 16
    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const-string v1, "DEBLEMISH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/miui/filtersdk/beauty/BeautyParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->DEBLEMISH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 17
    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const-string v1, "DEPOUCH_RATIO"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/miui/filtersdk/beauty/BeautyParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->DEPOUCH_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 18
    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const-string v1, "RELIGHTING_RATIO"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/miui/filtersdk/beauty/BeautyParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->RELIGHTING_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 19
    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const-string v1, "LIP_BEAUTY_RATIO"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/miui/filtersdk/beauty/BeautyParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->LIP_BEAUTY_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 20
    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const-string v1, "SHRINK_NOSE_RATIO"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/miui/filtersdk/beauty/BeautyParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_NOSE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 6
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/miui/filtersdk/beauty/BeautyParameterType;

    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->CONTRAST_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SMOOTH_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->WHITEN_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ENLARGE_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_FACE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_JAW_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->RUDDY_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->BRIGHT_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->IRIS_SHINE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->DEBLEMISH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->DEPOUCH_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->RELIGHTING_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->LIP_BEAUTY_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_NOSE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->$VALUES:[Lcom/miui/filtersdk/beauty/BeautyParameterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/filtersdk/beauty/BeautyParameterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    return-object v0
.end method

.method public static values()[Lcom/miui/filtersdk/beauty/BeautyParameterType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->$VALUES:[Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v0}, [Lcom/miui/filtersdk/beauty/BeautyParameterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/filtersdk/beauty/BeautyParameterType;

    return-object v0
.end method

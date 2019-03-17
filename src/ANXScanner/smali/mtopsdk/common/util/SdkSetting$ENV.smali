.class public final enum Lmtopsdk/common/util/SdkSetting$ENV;
.super Ljava/lang/Enum;
.source "SdkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/common/util/SdkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENV"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmtopsdk/common/util/SdkSetting$ENV;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/common/util/SdkSetting$ENV;

.field public static final enum debug:Lmtopsdk/common/util/SdkSetting$ENV;

.field public static final enum develop:Lmtopsdk/common/util/SdkSetting$ENV;

.field public static final enum release:Lmtopsdk/common/util/SdkSetting$ENV;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lmtopsdk/common/util/SdkSetting$ENV;

    const-string v1, "debug"

    invoke-direct {v0, v1, v2}, Lmtopsdk/common/util/SdkSetting$ENV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->debug:Lmtopsdk/common/util/SdkSetting$ENV;

    new-instance v0, Lmtopsdk/common/util/SdkSetting$ENV;

    const-string v1, "develop"

    invoke-direct {v0, v1, v3}, Lmtopsdk/common/util/SdkSetting$ENV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->develop:Lmtopsdk/common/util/SdkSetting$ENV;

    new-instance v0, Lmtopsdk/common/util/SdkSetting$ENV;

    const-string v1, "release"

    invoke-direct {v0, v1, v4}, Lmtopsdk/common/util/SdkSetting$ENV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->release:Lmtopsdk/common/util/SdkSetting$ENV;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lmtopsdk/common/util/SdkSetting$ENV;

    sget-object v1, Lmtopsdk/common/util/SdkSetting$ENV;->debug:Lmtopsdk/common/util/SdkSetting$ENV;

    aput-object v1, v0, v2

    sget-object v1, Lmtopsdk/common/util/SdkSetting$ENV;->develop:Lmtopsdk/common/util/SdkSetting$ENV;

    aput-object v1, v0, v3

    sget-object v1, Lmtopsdk/common/util/SdkSetting$ENV;->release:Lmtopsdk/common/util/SdkSetting$ENV;

    aput-object v1, v0, v4

    sput-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->$VALUES:[Lmtopsdk/common/util/SdkSetting$ENV;

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

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/common/util/SdkSetting$ENV;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lmtopsdk/common/util/SdkSetting$ENV;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmtopsdk/common/util/SdkSetting$ENV;

    return-object v0
.end method

.method public static values()[Lmtopsdk/common/util/SdkSetting$ENV;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->$VALUES:[Lmtopsdk/common/util/SdkSetting$ENV;

    invoke-virtual {v0}, [Lmtopsdk/common/util/SdkSetting$ENV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/common/util/SdkSetting$ENV;

    return-object v0
.end method

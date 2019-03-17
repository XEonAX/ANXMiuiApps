.class public final enum Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;
.super Ljava/lang/Enum;
.source "nexAssetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssetInstallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

.field public static final enum APP_ASSETS:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

.field public static final enum EXTRA:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

.field public static final enum SHARE:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

.field public static final enum STORE:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    const-string v1, "STORE"

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;->STORE:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    const-string v1, "SHARE"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;->SHARE:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    const-string v1, "APP_ASSETS"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;->APP_ASSETS:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    const-string v1, "EXTRA"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;->EXTRA:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    .line 189
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;->STORE:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;->SHARE:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;->APP_ASSETS:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;->EXTRA:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

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
    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;
    .locals 1

    .prologue
    .line 189
    const-class v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    invoke-virtual {v0}, [Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    return-object v0
.end method

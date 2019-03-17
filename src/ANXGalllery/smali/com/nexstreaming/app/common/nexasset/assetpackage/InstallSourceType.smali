.class public final enum Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;
.super Ljava/lang/Enum;
.source "InstallSourceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

.field public static final enum APP_ASSETS:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

.field public static final enum FOLDER:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

.field public static final enum STORE:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    const-string v1, "STORE"

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->STORE:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    const-string v1, "FOLDER"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->FOLDER:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    const-string v1, "APP_ASSETS"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->APP_ASSETS:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->STORE:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->FOLDER:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->APP_ASSETS:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->$VALUES:[Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->$VALUES:[Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    invoke-virtual {v0}, [Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    return-object v0
.end method

.class public final enum Lmiui/drm/DrmManager$DrmResult;
.super Ljava/lang/Enum;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrmResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/drm/DrmManager$DrmResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/drm/DrmManager$DrmResult;

.field public static final enum DRM_ERROR_ASSET_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

.field public static final enum DRM_ERROR_IMEI_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

.field public static final enum DRM_ERROR_RIGHT_FILE_NOT_EXISTS:Lmiui/drm/DrmManager$DrmResult;

.field public static final enum DRM_ERROR_RIGHT_OBJECT_IS_NULL:Lmiui/drm/DrmManager$DrmResult;

.field public static final enum DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

.field public static final enum DRM_ERROR_UNKNOWN:Lmiui/drm/DrmManager$DrmResult;

.field public static final enum DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 111
    new-instance v0, Lmiui/drm/DrmManager$DrmResult;

    const-string v1, "DRM_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/drm/DrmManager$DrmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    .line 112
    new-instance v0, Lmiui/drm/DrmManager$DrmResult;

    const-string v1, "DRM_ERROR_IMEI_NOT_MATCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/drm/DrmManager$DrmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_IMEI_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    .line 113
    new-instance v0, Lmiui/drm/DrmManager$DrmResult;

    const-string v1, "DRM_ERROR_ASSET_NOT_MATCH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/drm/DrmManager$DrmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_ASSET_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    .line 114
    new-instance v0, Lmiui/drm/DrmManager$DrmResult;

    const-string v1, "DRM_ERROR_TIME_NOT_MATCH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/drm/DrmManager$DrmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    .line 115
    new-instance v0, Lmiui/drm/DrmManager$DrmResult;

    const-string v1, "DRM_ERROR_RIGHT_OBJECT_IS_NULL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmiui/drm/DrmManager$DrmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_RIGHT_OBJECT_IS_NULL:Lmiui/drm/DrmManager$DrmResult;

    .line 116
    new-instance v0, Lmiui/drm/DrmManager$DrmResult;

    const-string v1, "DRM_ERROR_RIGHT_FILE_NOT_EXISTS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmiui/drm/DrmManager$DrmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_RIGHT_FILE_NOT_EXISTS:Lmiui/drm/DrmManager$DrmResult;

    .line 117
    new-instance v0, Lmiui/drm/DrmManager$DrmResult;

    const-string v1, "DRM_ERROR_UNKNOWN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lmiui/drm/DrmManager$DrmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_UNKNOWN:Lmiui/drm/DrmManager$DrmResult;

    .line 110
    const/4 v0, 0x7

    new-array v0, v0, [Lmiui/drm/DrmManager$DrmResult;

    sget-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_IMEI_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_ASSET_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_RIGHT_OBJECT_IS_NULL:Lmiui/drm/DrmManager$DrmResult;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_RIGHT_FILE_NOT_EXISTS:Lmiui/drm/DrmManager$DrmResult;

    aput-object v1, v0, v7

    sget-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_UNKNOWN:Lmiui/drm/DrmManager$DrmResult;

    aput-object v1, v0, v8

    sput-object v0, Lmiui/drm/DrmManager$DrmResult;->$VALUES:[Lmiui/drm/DrmManager$DrmResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/drm/DrmManager$DrmResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 110
    const-class v0, Lmiui/drm/DrmManager$DrmResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/drm/DrmManager$DrmResult;

    return-object v0
.end method

.method public static values()[Lmiui/drm/DrmManager$DrmResult;
    .locals 1

    .line 110
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->$VALUES:[Lmiui/drm/DrmManager$DrmResult;

    invoke-virtual {v0}, [Lmiui/drm/DrmManager$DrmResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/drm/DrmManager$DrmResult;

    return-object v0
.end method

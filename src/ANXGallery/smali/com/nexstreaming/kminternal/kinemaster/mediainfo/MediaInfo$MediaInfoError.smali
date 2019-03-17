.class public final enum Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;
.super Ljava/lang/Enum;
.source "MediaInfo.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$TaskError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaInfoError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;",
        ">;",
        "Lcom/nexstreaming/app/common/task/Task$TaskError;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

.field public static final enum LargeEndThumbnailNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

.field public static final enum LargeStartThumbnailNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

.field public static final enum PCMLevelsNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

.field public static final enum SeekPointsNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

.field public static final enum ThumbnailsNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 890
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    const-string v1, "PCMLevelsNotAvailable"

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->PCMLevelsNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    const-string v1, "SeekPointsNotAvailable"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->SeekPointsNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    const-string v1, "ThumbnailsNotAvailable"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->ThumbnailsNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    const-string v1, "LargeStartThumbnailNotAvailable"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->LargeStartThumbnailNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    const-string v1, "LargeEndThumbnailNotAvailable"

    invoke-direct {v0, v1, v6}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->LargeEndThumbnailNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    .line 889
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->PCMLevelsNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->SeekPointsNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->ThumbnailsNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->LargeStartThumbnailNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->LargeEndThumbnailNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->$VALUES:[Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

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
    .line 889
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;
    .locals 1

    .prologue
    .line 889
    const-class v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;
    .locals 1

    .prologue
    .line 889
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->$VALUES:[Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    invoke-virtual {v0}, [Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    return-object v0
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 894
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalizedMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

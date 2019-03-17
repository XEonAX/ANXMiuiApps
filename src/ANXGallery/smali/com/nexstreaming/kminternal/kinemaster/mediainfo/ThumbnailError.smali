.class final enum Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;
.super Ljava/lang/Enum;
.source "ThumbnailError.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$TaskError;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;",
        ">;",
        "Lcom/nexstreaming/app/common/task/Task$TaskError;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

.field public static final enum NoThumbailsFound:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

.field public static final enum ParameterError:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

.field public static final enum RawFileNotFound:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

.field public static final enum RawFileTooSmall:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

.field public static final enum UnknownFormat:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    const-string v1, "RawFileNotFound"

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->RawFileNotFound:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    const-string v1, "RawFileTooSmall"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->RawFileTooSmall:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    const-string v1, "NoThumbailsFound"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->NoThumbailsFound:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    const-string v1, "UnknownFormat"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->UnknownFormat:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    const-string v1, "ParameterError"

    invoke-direct {v0, v1, v6}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->ParameterError:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->RawFileNotFound:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->RawFileTooSmall:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->NoThumbailsFound:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->UnknownFormat:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->ParameterError:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->$VALUES:[Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->$VALUES:[Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    invoke-virtual {v0}, [Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    return-object v0
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalizedMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final enum Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
.super Ljava/lang/Enum;
.source "CheckResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/CheckResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GallerySyncResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum AlbumNotEmpty:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum AlbumNotExist:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum Cancel:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum NeedReRequest:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum NotContinueError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum NotRetryCurrent:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum ResetFaceSyncTag:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum ResetSyncTag:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum TimeOut:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "Ok"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 22
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "Cancel"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Cancel:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 23
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "TimeOut"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->TimeOut:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 24
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "RetryError"

    invoke-direct {v0, v1, v6}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 25
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "NotRetryError"

    invoke-direct {v0, v1, v7}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 26
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "NeedReRequest"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NeedReRequest:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 27
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "AlbumNotExist"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->AlbumNotExist:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 28
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "AlbumNotEmpty"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->AlbumNotEmpty:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 29
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "NotContinueError"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotContinueError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 30
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "NotRetryCurrent"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryCurrent:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 31
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "ResetSyncTag"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->ResetSyncTag:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 32
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "ResetFaceSyncTag"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->ResetFaceSyncTag:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 20
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Cancel:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->TimeOut:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NeedReRequest:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->AlbumNotExist:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->AlbumNotEmpty:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotContinueError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryCurrent:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->ResetSyncTag:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->ResetFaceSyncTag:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->$VALUES:[Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->$VALUES:[Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    invoke-virtual {v0}, [Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    return-object v0
.end method

.class public final enum Lcom/miui/gallery/model/Album$AlbumType;
.super Ljava/lang/Enum;
.source "Album.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/model/Album;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlbumType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/model/Album$AlbumType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/model/Album$AlbumType;

.field public static final enum BABY:Lcom/miui/gallery/model/Album$AlbumType;

.field public static final enum NORMAL:Lcom/miui/gallery/model/Album$AlbumType;

.field public static final enum OTHERS_SHARE:Lcom/miui/gallery/model/Album$AlbumType;

.field public static final enum OTHER_ALBUMS:Lcom/miui/gallery/model/Album$AlbumType;

.field public static final enum PINNED:Lcom/miui/gallery/model/Album$AlbumType;

.field public static final enum SYSTEM:Lcom/miui/gallery/model/Album$AlbumType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 422
    new-instance v0, Lcom/miui/gallery/model/Album$AlbumType;

    const-string v1, "PINNED"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/model/Album$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/model/Album$AlbumType;->PINNED:Lcom/miui/gallery/model/Album$AlbumType;

    .line 426
    new-instance v0, Lcom/miui/gallery/model/Album$AlbumType;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/model/Album$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/model/Album$AlbumType;->SYSTEM:Lcom/miui/gallery/model/Album$AlbumType;

    .line 430
    new-instance v0, Lcom/miui/gallery/model/Album$AlbumType;

    const-string v1, "BABY"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/model/Album$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/model/Album$AlbumType;->BABY:Lcom/miui/gallery/model/Album$AlbumType;

    .line 434
    new-instance v0, Lcom/miui/gallery/model/Album$AlbumType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v6}, Lcom/miui/gallery/model/Album$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/model/Album$AlbumType;->NORMAL:Lcom/miui/gallery/model/Album$AlbumType;

    .line 438
    new-instance v0, Lcom/miui/gallery/model/Album$AlbumType;

    const-string v1, "OTHERS_SHARE"

    invoke-direct {v0, v1, v7}, Lcom/miui/gallery/model/Album$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/model/Album$AlbumType;->OTHERS_SHARE:Lcom/miui/gallery/model/Album$AlbumType;

    .line 446
    new-instance v0, Lcom/miui/gallery/model/Album$AlbumType;

    const-string v1, "OTHER_ALBUMS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/model/Album$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/model/Album$AlbumType;->OTHER_ALBUMS:Lcom/miui/gallery/model/Album$AlbumType;

    .line 418
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/gallery/model/Album$AlbumType;

    sget-object v1, Lcom/miui/gallery/model/Album$AlbumType;->PINNED:Lcom/miui/gallery/model/Album$AlbumType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/model/Album$AlbumType;->SYSTEM:Lcom/miui/gallery/model/Album$AlbumType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/model/Album$AlbumType;->BABY:Lcom/miui/gallery/model/Album$AlbumType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/model/Album$AlbumType;->NORMAL:Lcom/miui/gallery/model/Album$AlbumType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/gallery/model/Album$AlbumType;->OTHERS_SHARE:Lcom/miui/gallery/model/Album$AlbumType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/gallery/model/Album$AlbumType;->OTHER_ALBUMS:Lcom/miui/gallery/model/Album$AlbumType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/model/Album$AlbumType;->$VALUES:[Lcom/miui/gallery/model/Album$AlbumType;

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
    .line 418
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/model/Album$AlbumType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 418
    const-class v0, Lcom/miui/gallery/model/Album$AlbumType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/Album$AlbumType;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/model/Album$AlbumType;
    .locals 1

    .prologue
    .line 418
    sget-object v0, Lcom/miui/gallery/model/Album$AlbumType;->$VALUES:[Lcom/miui/gallery/model/Album$AlbumType;

    invoke-virtual {v0}, [Lcom/miui/gallery/model/Album$AlbumType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/model/Album$AlbumType;

    return-object v0
.end method

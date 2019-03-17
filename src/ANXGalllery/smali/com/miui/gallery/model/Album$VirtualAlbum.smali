.class public final enum Lcom/miui/gallery/model/Album$VirtualAlbum;
.super Ljava/lang/Enum;
.source "Album.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/model/Album;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VirtualAlbum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/model/Album$VirtualAlbum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/model/Album$VirtualAlbum;

.field public static final enum FAVORITES:Lcom/miui/gallery/model/Album$VirtualAlbum;

.field public static final enum PANORAMA:Lcom/miui/gallery/model/Album$VirtualAlbum;

.field public static final enum RECENT:Lcom/miui/gallery/model/Album$VirtualAlbum;

.field public static final enum VIDEO:Lcom/miui/gallery/model/Album$VirtualAlbum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 409
    new-instance v0, Lcom/miui/gallery/model/Album$VirtualAlbum;

    const-string v1, "RECENT"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/model/Album$VirtualAlbum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/model/Album$VirtualAlbum;->RECENT:Lcom/miui/gallery/model/Album$VirtualAlbum;

    .line 410
    new-instance v0, Lcom/miui/gallery/model/Album$VirtualAlbum;

    const-string v1, "FAVORITES"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/model/Album$VirtualAlbum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/model/Album$VirtualAlbum;->FAVORITES:Lcom/miui/gallery/model/Album$VirtualAlbum;

    .line 411
    new-instance v0, Lcom/miui/gallery/model/Album$VirtualAlbum;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/model/Album$VirtualAlbum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/model/Album$VirtualAlbum;->VIDEO:Lcom/miui/gallery/model/Album$VirtualAlbum;

    .line 412
    new-instance v0, Lcom/miui/gallery/model/Album$VirtualAlbum;

    const-string v1, "PANORAMA"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/model/Album$VirtualAlbum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/model/Album$VirtualAlbum;->PANORAMA:Lcom/miui/gallery/model/Album$VirtualAlbum;

    .line 408
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/gallery/model/Album$VirtualAlbum;

    sget-object v1, Lcom/miui/gallery/model/Album$VirtualAlbum;->RECENT:Lcom/miui/gallery/model/Album$VirtualAlbum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/model/Album$VirtualAlbum;->FAVORITES:Lcom/miui/gallery/model/Album$VirtualAlbum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/model/Album$VirtualAlbum;->VIDEO:Lcom/miui/gallery/model/Album$VirtualAlbum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/model/Album$VirtualAlbum;->PANORAMA:Lcom/miui/gallery/model/Album$VirtualAlbum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/gallery/model/Album$VirtualAlbum;->$VALUES:[Lcom/miui/gallery/model/Album$VirtualAlbum;

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
    .line 408
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/model/Album$VirtualAlbum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 408
    const-class v0, Lcom/miui/gallery/model/Album$VirtualAlbum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/Album$VirtualAlbum;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/model/Album$VirtualAlbum;
    .locals 1

    .prologue
    .line 408
    sget-object v0, Lcom/miui/gallery/model/Album$VirtualAlbum;->$VALUES:[Lcom/miui/gallery/model/Album$VirtualAlbum;

    invoke-virtual {v0}, [Lcom/miui/gallery/model/Album$VirtualAlbum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/model/Album$VirtualAlbum;

    return-object v0
.end method

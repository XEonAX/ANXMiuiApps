.class Lcom/miui/gallery/data/OldThumbnailTransferer$SingletonHolder;
.super Ljava/lang/Object;
.source "OldThumbnailTransferer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/OldThumbnailTransferer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/gallery/data/OldThumbnailTransferer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/miui/gallery/data/OldThumbnailTransferer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/data/OldThumbnailTransferer;-><init>(Lcom/miui/gallery/data/OldThumbnailTransferer$1;)V

    sput-object v0, Lcom/miui/gallery/data/OldThumbnailTransferer$SingletonHolder;->sInstance:Lcom/miui/gallery/data/OldThumbnailTransferer;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/gallery/data/OldThumbnailTransferer;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/miui/gallery/data/OldThumbnailTransferer$SingletonHolder;->sInstance:Lcom/miui/gallery/data/OldThumbnailTransferer;

    return-object v0
.end method

.class Lcom/miui/gallery/util/GalleryDataCache$SingletonHolder;
.super Ljava/lang/Object;
.source "GalleryDataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/GalleryDataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/miui/gallery/util/GalleryDataCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/miui/gallery/util/GalleryDataCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/GalleryDataCache;-><init>(Lcom/miui/gallery/util/GalleryDataCache$1;)V

    sput-object v0, Lcom/miui/gallery/util/GalleryDataCache$SingletonHolder;->INSTANCE:Lcom/miui/gallery/util/GalleryDataCache;

    return-void
.end method

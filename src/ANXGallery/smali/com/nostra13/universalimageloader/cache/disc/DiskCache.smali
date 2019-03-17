.class public interface abstract Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# static fields
.field public static final DUMMY:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/nostra13/universalimageloader/cache/disc/DiskCache$1;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache$1;-><init>()V

    sput-object v0, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->DUMMY:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

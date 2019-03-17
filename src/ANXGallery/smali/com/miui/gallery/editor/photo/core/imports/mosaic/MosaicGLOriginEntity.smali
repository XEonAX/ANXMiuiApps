.class Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLOriginEntity;
.super Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
.source "MosaicGLOriginEntity.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLOriginEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLOriginEntity$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLOriginEntity$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLOriginEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;-><init>(Landroid/os/Parcel;)V

    .line 12
    return-void
.end method

.method constructor <init>(SLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconPath"    # Ljava/lang/String;

    .prologue
    .line 7
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;->ORIGIN:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;-><init>(SLjava/lang/String;Ljava/lang/String;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;)V

    .line 8
    return-void
.end method

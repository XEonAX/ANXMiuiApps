.class Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;
.super Ljava/lang/Object;
.source "MosaicOperationItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mosaicGLEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

.field final paintingItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-class v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->mosaicGLEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    .line 85
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->paintingItems:Ljava/util/LinkedList;

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->paintingItems:Ljava/util/LinkedList;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 87
    return-void
.end method

.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)V
    .locals 1
    .param p1, "mosaicGLEntity"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->mosaicGLEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->paintingItems:Ljava/util/LinkedList;

    .line 15
    return-void
.end method


# virtual methods
.method add(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;)V
    .locals 1
    .param p1, "paintingItem"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->paintingItems:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->paintingItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method removeLast()Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->paintingItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->mosaicGLEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->paintingItems:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 81
    return-void
.end method

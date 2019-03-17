.class public Lcom/miui/gallery/util/face/FaceRegionRectF;
.super Landroid/graphics/RectF;
.source "FaceRegionRectF.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/util/face/FaceRegionRectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/miui/gallery/util/face/FaceRegionRectF$1;

    invoke-direct {v0}, Lcom/miui/gallery/util/face/FaceRegionRectF$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/face/FaceRegionRectF;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(FFFFI)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "orientation"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 19
    iput p5, p0, Lcom/miui/gallery/util/face/FaceRegionRectF;->orientation:I

    .line 20
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/face/FaceRegionRectF;->left:F

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/face/FaceRegionRectF;->top:F

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/face/FaceRegionRectF;->right:F

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/face/FaceRegionRectF;->bottom:F

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/face/FaceRegionRectF;->orientation:I

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 33
    iget v0, p0, Lcom/miui/gallery/util/face/FaceRegionRectF;->left:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 34
    iget v0, p0, Lcom/miui/gallery/util/face/FaceRegionRectF;->top:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 35
    iget v0, p0, Lcom/miui/gallery/util/face/FaceRegionRectF;->right:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 36
    iget v0, p0, Lcom/miui/gallery/util/face/FaceRegionRectF;->bottom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 37
    iget v0, p0, Lcom/miui/gallery/util/face/FaceRegionRectF;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    return-void
.end method

.class public Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;
.super Landroid/graphics/Matrix;
.source "ParcelableMatrix.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 24
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 25
    .local v0, "f":[F
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->setValues([F)V

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 15
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 16
    .local v0, "f":[F
    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->getValues([F)V

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 18
    return-void
.end method

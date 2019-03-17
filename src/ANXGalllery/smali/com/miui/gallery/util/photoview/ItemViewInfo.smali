.class public Lcom/miui/gallery/util/photoview/ItemViewInfo;
.super Ljava/lang/Object;
.source "ItemViewInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/util/photoview/ItemViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapterPos:I

.field private mHeight:I

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/miui/gallery/util/photoview/ItemViewInfo$1;

    invoke-direct {v0}, Lcom/miui/gallery/util/photoview/ItemViewInfo$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mAdapterPos:I

    .line 19
    iput p2, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mX:I

    .line 20
    iput p3, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mY:I

    .line 21
    iput p4, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mWidth:I

    .line 22
    iput p5, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mHeight:I

    .line 23
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mAdapterPos:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mX:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mY:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mWidth:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mHeight:I

    .line 31
    return-void
.end method

.method public static getImageInfo(IILandroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .locals 6
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "adapterPos"    # I

    .prologue
    .line 93
    if-nez p2, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/gallery/util/photoview/ItemViewInfo;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    move v1, p3

    move v2, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/photoview/ItemViewInfo;-><init>(IIIII)V

    goto :goto_0
.end method

.method public static getImageInfo(Landroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "adapterPos"    # I

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 87
    :cond_0
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 88
    .local v6, "location":[I
    invoke-virtual {p0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 89
    new-instance v0, Lcom/miui/gallery/util/photoview/ItemViewInfo;

    const/4 v1, 0x0

    aget v2, v6, v1

    const/4 v1, 0x1

    aget v3, v6, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/photoview/ItemViewInfo;-><init>(IIIII)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mHeight:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mAdapterPos:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mY:I

    return v0
.end method

.method public isLocationValid()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 34
    iget v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mX:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mY:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mAdapterPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 64
    iget v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mAdapterPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/miui/gallery/util/photoview/ItemViewInfo;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return-void
.end method

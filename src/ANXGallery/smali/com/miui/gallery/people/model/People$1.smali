.class final Lcom/miui/gallery/people/model/People$1;
.super Ljava/lang/Object;
.source "People.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/people/model/People;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/miui/gallery/people/model/People;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/people/model/People;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 149
    new-instance v0, Lcom/miui/gallery/people/model/People;

    invoke-direct {v0}, Lcom/miui/gallery/people/model/People;-><init>()V

    .line 150
    .local v0, "people":Lcom/miui/gallery/people/model/People;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/people/model/People;->readFromParcel(Landroid/os/Parcel;)V

    .line 151
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/miui/gallery/people/model/People$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/people/model/People;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/gallery/people/model/People;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 156
    new-array v0, p1, [Lcom/miui/gallery/people/model/People;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/miui/gallery/people/model/People$1;->newArray(I)[Lcom/miui/gallery/people/model/People;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/miui/extraphoto/sdk/ExtraFunc$1;
.super Ljava/lang/Object;
.source "ExtraFunc.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/sdk/ExtraFunc;
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
        "Lcom/miui/extraphoto/sdk/ExtraFunc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/extraphoto/sdk/ExtraFunc;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-static {}, Lcom/miui/extraphoto/sdk/ExtraFunc;->values()[Lcom/miui/extraphoto/sdk/ExtraFunc;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/extraphoto/sdk/ExtraFunc$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/extraphoto/sdk/ExtraFunc;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/extraphoto/sdk/ExtraFunc;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 30
    new-array v0, p1, [Lcom/miui/extraphoto/sdk/ExtraFunc;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/extraphoto/sdk/ExtraFunc$1;->newArray(I)[Lcom/miui/extraphoto/sdk/ExtraFunc;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lcom/miui/gallery/editor/photo/core/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/gallery/editor/photo/core/Metadata;",
        ">;"
    }
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final priority:I


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/Metadata;->name:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/Metadata;->priority:I

    .line 34
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .locals 0
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/Metadata;->name:Ljava/lang/String;

    .line 12
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/Metadata;->priority:I

    .line 13
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/gallery/editor/photo/core/Metadata;)I
    .locals 2
    .param p1, "o"    # Lcom/miui/gallery/editor/photo/core/Metadata;

    .prologue
    .line 17
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/Metadata;->priority:I

    iget v1, p1, Lcom/miui/gallery/editor/photo/core/Metadata;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/miui/gallery/editor/photo/core/Metadata;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/Metadata;->compareTo(Lcom/miui/gallery/editor/photo/core/Metadata;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/Metadata;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/Metadata;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    return-void
.end method

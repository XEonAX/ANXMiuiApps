.class final Lcom/miui/gallery/cloud/baby/BabyInfo$1;
.super Ljava/lang/Object;
.source "BabyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/baby/BabyInfo;
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
        "Lcom/miui/gallery/cloud/baby/BabyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/cloud/baby/BabyInfo;
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x1

    .line 190
    new-instance v0, Lcom/miui/gallery/cloud/baby/BabyInfo;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v7, :cond_0

    .line 198
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/miui/gallery/cloud/baby/BabyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 199
    .local v0, "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    return-object v0

    .line 197
    .end local v0    # "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/baby/BabyInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/gallery/cloud/baby/BabyInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 204
    new-array v0, p1, [Lcom/miui/gallery/cloud/baby/BabyInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/baby/BabyInfo$1;->newArray(I)[Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v0

    return-object v0
.end method

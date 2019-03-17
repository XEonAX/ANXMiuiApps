.class public abstract Lcom/miui/gallery/editor/photo/core/RenderData;
.super Ljava/lang/Object;
.source "RenderData.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public mType:Lcom/miui/gallery/editor/photo/core/Effect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/Effect;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/RenderData;->mType:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method final getType()Lcom/miui/gallery/editor/photo/core/Effect;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/RenderData;->mType:Lcom/miui/gallery/editor/photo/core/Effect;

    return-object v0
.end method

.method final merge(Lcom/miui/gallery/editor/photo/core/RenderData;)Lcom/miui/gallery/editor/photo/core/RenderData;
    .locals 2
    .param p1, "other"    # Lcom/miui/gallery/editor/photo/core/RenderData;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/RenderData;->onMerge(Lcom/miui/gallery/editor/photo/core/RenderData;)Lcom/miui/gallery/editor/photo/core/RenderData;

    move-result-object v0

    .line 20
    .local v0, "merged":Lcom/miui/gallery/editor/photo/core/RenderData;
    if-eqz v0, :cond_0

    .line 21
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/RenderData;->mType:Lcom/miui/gallery/editor/photo/core/Effect;

    iput-object v1, v0, Lcom/miui/gallery/editor/photo/core/RenderData;->mType:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 23
    :cond_0
    return-object v0
.end method

.method protected onMerge(Lcom/miui/gallery/editor/photo/core/RenderData;)Lcom/miui/gallery/editor/photo/core/RenderData;
    .locals 1
    .param p1, "other"    # Lcom/miui/gallery/editor/photo/core/RenderData;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onRelease()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/RenderData;->onRelease()V

    .line 32
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/RenderData;->mType:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 45
    return-void
.end method

.class public Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleCircularNode;
.super Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;
.source "DoodleCircularNode.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleCircularNode;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOODLE_ITEM:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->CIRCULAR:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleCircularNode;->DOODLE_ITEM:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    .line 54
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleCircularNode$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleCircularNode$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleCircularNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;-><init>(Landroid/content/res/Resources;)V

    .line 17
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;-><init>(Landroid/os/Parcel;)V

    .line 51
    const-class v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleCircularNode;->mRectF:Landroid/graphics/RectF;

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleCircularNode;->configCanvas(Landroid/graphics/Canvas;Z)V

    .line 29
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleCircularNode;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleCircularNode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 31
    return-void
.end method

.method public getDoodleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleCircularNode;->DOODLE_ITEM:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleCircularNode;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 22
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleCircularNode;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 23
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleCircularNode;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    return-void
.end method

.class public Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;
.super Lcom/miui/gallery/editor/photo/core/common/model/CropData;
.source "CropData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/common/model/CropData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AspectRatio"
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(SLjava/lang/String;IIII)V
    .locals 0
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "talkbackName"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/editor/photo/core/common/model/CropData;-><init>(SLjava/lang/String;II)V

    .line 30
    iput p5, p0, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;->width:I

    .line 31
    iput p6, p0, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;->height:I

    .line 32
    return-void
.end method

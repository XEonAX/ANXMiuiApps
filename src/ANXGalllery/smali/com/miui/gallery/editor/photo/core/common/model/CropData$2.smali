.class final Lcom/miui/gallery/editor/photo/core/common/model/CropData$2;
.super Lcom/miui/gallery/editor/photo/core/common/model/CropData;
.source "CropData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/common/model/CropData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(SLjava/lang/String;II)V
    .locals 0
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "talkbackName"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/editor/photo/core/common/model/CropData;-><init>(SLjava/lang/String;II)V

    return-void
.end method

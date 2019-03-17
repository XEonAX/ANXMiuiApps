.class public abstract Lcom/miui/gallery/editor/photo/core/common/model/CropData;
.super Lcom/miui/gallery/editor/photo/core/Metadata;
.source "CropData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;
    }
.end annotation


# static fields
.field public static MIRROR:Lcom/miui/gallery/editor/photo/core/common/model/CropData;

.field public static ROTATE:Lcom/miui/gallery/editor/photo/core/common/model/CropData;


# instance fields
.field public final icon:I

.field public final talkbackName:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 16
    new-instance v0, Lcom/miui/gallery/editor/photo/core/common/model/CropData$1;

    const/4 v1, -0x1

    const-string v2, "rotate"

    const v3, 0x7f0200d1

    const v4, 0x7f0c037f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/common/model/CropData$1;-><init>(SLjava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/common/model/CropData;->ROTATE:Lcom/miui/gallery/editor/photo/core/common/model/CropData;

    .line 20
    new-instance v0, Lcom/miui/gallery/editor/photo/core/common/model/CropData$2;

    const/4 v1, -0x2

    const-string v2, "mirror"

    const v3, 0x7f0200cf

    const v4, 0x7f0c037d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/common/model/CropData$2;-><init>(SLjava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/common/model/CropData;->MIRROR:Lcom/miui/gallery/editor/photo/core/common/model/CropData;

    return-void
.end method

.method constructor <init>(SLjava/lang/String;II)V
    .locals 0
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "talkbackName"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/Metadata;-><init>(SLjava/lang/String;)V

    .line 12
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/common/model/CropData;->icon:I

    .line 13
    iput p4, p0, Lcom/miui/gallery/editor/photo/core/common/model/CropData;->talkbackName:I

    .line 14
    return-void
.end method

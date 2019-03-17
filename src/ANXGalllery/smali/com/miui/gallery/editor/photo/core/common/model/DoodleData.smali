.class public abstract Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;
.super Lcom/miui/gallery/editor/photo/core/Metadata;
.source "DoodleData.java"


# instance fields
.field public final normal:I

.field public final selected:I

.field public final talkback:I


# direct methods
.method public constructor <init>(SLjava/lang/String;III)V
    .locals 0
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "normal"    # I
    .param p4, "selected"    # I
    .param p5, "talkback"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/Metadata;-><init>(SLjava/lang/String;)V

    .line 13
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;->normal:I

    .line 14
    iput p4, p0, Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;->selected:I

    .line 15
    iput p5, p0, Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;->talkback:I

    .line 16
    return-void
.end method

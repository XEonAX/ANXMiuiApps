.class public abstract Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;
.super Lcom/miui/gallery/editor/photo/core/Metadata;
.source "StickerCategory.java"


# instance fields
.field public final id:J


# direct methods
.method public constructor <init>(JSLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "priority"    # S
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p3, p4}, Lcom/miui/gallery/editor/photo/core/Metadata;-><init>(SLjava/lang/String;)V

    .line 10
    iput-wide p1, p0, Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;->id:J

    .line 11
    return-void
.end method

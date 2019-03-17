.class public abstract Lcom/miui/gallery/editor/photo/core/common/model/StickerData;
.super Lcom/miui/gallery/editor/photo/core/Metadata;
.source "StickerData.java"


# instance fields
.field public final icon:Ljava/lang/String;


# direct methods
.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconPath"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/Metadata;-><init>(SLjava/lang/String;)V

    .line 10
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/common/model/StickerData;->icon:Ljava/lang/String;

    .line 11
    return-void
.end method

.class public abstract Lcom/miui/gallery/editor/photo/core/common/model/TextData;
.super Lcom/miui/gallery/editor/photo/core/Metadata;
.source "TextData.java"


# instance fields
.field public backgroundColor:I

.field public final iconPath:Ljava/lang/String;

.field public showBackgroundColor:Z


# direct methods
.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconPath"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/Metadata;-><init>(SLjava/lang/String;)V

    .line 20
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/common/model/TextData;->iconPath:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconPath"    # Ljava/lang/String;
    .param p4, "backgroundColor"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/Metadata;-><init>(SLjava/lang/String;)V

    .line 13
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/common/model/TextData;->iconPath:Ljava/lang/String;

    .line 14
    iput p4, p0, Lcom/miui/gallery/editor/photo/core/common/model/TextData;->backgroundColor:I

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/common/model/TextData;->showBackgroundColor:Z

    .line 16
    return-void
.end method

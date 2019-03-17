.class public Lcom/miui/gallery/editor/photo/core/imports/filter/render/PathLUTFilter;
.super Lcom/miui/filtersdk/filter/base/ColorLookupFilter;
.source "PathLUTFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/core/imports/filter/render/PathLUTFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/render/PathLUTFilter;

    .prologue
    .line 5
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PathLUTFilter;->mTable:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onInitialized()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PathLUTFilter$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PathLUTFilter$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/filter/render/PathLUTFilter;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PathLUTFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.class Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;
.super Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;
.source "FilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterContext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$1;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;-><init>(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)V

    return-void
.end method


# virtual methods
.method protected onPause()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method surfaceCreated()V
    .locals 0

    .prologue
    .line 272
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->performCreated()V

    .line 273
    return-void
.end method

.method surfaceDestroyed()V
    .locals 0

    .prologue
    .line 276
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->performDestroyed()V

    .line 277
    return-void
.end method

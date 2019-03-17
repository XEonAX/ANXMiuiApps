.class Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;
.super Landroid/os/AsyncTask;
.source "FilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BeautyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$1;

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 291
    const/4 v1, 0x0

    aget-object v1, p1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->smartBeauty(Landroid/graphics/Bitmap;)V

    .line 293
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 288
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    invoke-static {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->access$502(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 299
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->access$600(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)V

    .line 300
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 288
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

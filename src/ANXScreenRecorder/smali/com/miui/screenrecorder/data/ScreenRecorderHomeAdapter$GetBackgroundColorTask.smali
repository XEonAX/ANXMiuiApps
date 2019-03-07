.class Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$GetBackgroundColorTask;
.super Landroid/os/AsyncTask;
.source "ScreenRecorderHomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetBackgroundColorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$GetBackgroundColorTask;->this$0:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 241
    iput-object p2, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$GetBackgroundColorTask;->mView:Landroid/view/View;

    .line 242
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;Landroid/view/View;Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$1;

    .prologue
    .line 237
    invoke-direct {p0, p1, p2}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$GetBackgroundColorTask;-><init>(Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Integer;
    .locals 8
    .param p1, "bitmap"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 248
    :try_start_0
    iget-object v3, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$GetBackgroundColorTask;->this$0:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-static {v3, v4}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->access$300(Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 250
    .local v1, "colorArt":Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v1}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->getBackgroundColor()I

    move-result v3

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v3, v4}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->colorBurn(IF)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 251
    .end local v1    # "colorArt":Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;
    :catch_0
    move-exception v2

    .line 252
    .local v2, "error":Ljava/lang/OutOfMemoryError;
    const-string v3, "ScreenRecorderAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetBackgroundColorTask get background color failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v1, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;

    aget-object v3, p1, v6

    invoke-direct {v1, v3, v7}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;-><init>(Landroid/graphics/Bitmap;Z)V

    .restart local v1    # "colorArt":Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$GetBackgroundColorTask;->doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 261
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 263
    const-string v2, "ScreenRecorderAdapter"

    const-string v3, "GetBackgroundColorTask no background color"

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_0
    return-void

    .line 265
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 266
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 267
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 268
    .local v1, "radii":F
    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v4, v2, v5

    const/4 v3, 0x1

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v3, 0x5

    aput v1, v2, v3

    const/4 v3, 0x6

    aput v1, v2, v3

    const/4 v3, 0x7

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 270
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 271
    iget-object v2, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$GetBackgroundColorTask;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 237
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$GetBackgroundColorTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.class public abstract Lcom/miui/gallery/collage/core/RenderEngine;
.super Ljava/lang/Object;
.source "RenderEngine.java"


# instance fields
.field protected final mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

.field protected final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/miui/gallery/collage/BitmapManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapManager"    # Lcom/miui/gallery/collage/BitmapManager;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/core/RenderEngine;->mContext:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/miui/gallery/collage/core/RenderEngine;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    .line 15
    return-void
.end method


# virtual methods
.method public abstract render(Lcom/miui/gallery/collage/core/RenderData;)Landroid/graphics/Bitmap;
.end method

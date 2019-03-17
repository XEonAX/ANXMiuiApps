.class public Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;
.super Ljava/lang/Object;
.source "SlideShowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/SlideShowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowItem"
.end annotation


# instance fields
.field private mBit:Landroid/graphics/Bitmap;

.field private mIndex:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "index"    # I

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;->mBit:Landroid/graphics/Bitmap;

    .line 218
    iput p2, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;->mIndex:I

    .line 219
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;->mBit:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;->mIndex:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;->mBit:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;->mBit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

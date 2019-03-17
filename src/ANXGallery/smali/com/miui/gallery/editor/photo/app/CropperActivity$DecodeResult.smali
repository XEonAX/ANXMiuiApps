.class Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;
.super Ljava/lang/Object;
.source "CropperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/CropperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeResult"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mException:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 157
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;->mException:Ljava/lang/Exception;

    .line 158
    return-void
.end method

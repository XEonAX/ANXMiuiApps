.class Lcom/miui/internal/vip/utils/ImageDownloader$2;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/vip/utils/ImageDownloader;->onLoad(Landroid/widget/ImageView;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$refBmp:Landroid/graphics/Bitmap;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/miui/internal/vip/utils/ImageDownloader$2;->val$view:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/internal/vip/utils/ImageDownloader$2;->val$refBmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloader$2;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/vip/utils/ImageDownloader$2;->val$refBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    return-void
.end method

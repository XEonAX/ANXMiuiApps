.class Lcom/miui/internal/vip/utils/ImageDownloader$1;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/vip/utils/ImageDownloader;->onLoad(Landroid/widget/ImageView;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isPhoto:Z

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/miui/internal/vip/utils/ImageDownloader$1;->val$view:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/internal/vip/utils/ImageDownloader$1;->val$path:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/internal/vip/utils/ImageDownloader$1;->val$isPhoto:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloader$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloader$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloader$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 97
    iget-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloader$1;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/vip/utils/ImageDownloader$1;->val$path:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/internal/vip/utils/ImageDownloader$1;->val$isPhoto:Z

    invoke-static {v0, v1, v2}, Lcom/miui/internal/vip/utils/ImageDownloader;->access$000(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 99
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

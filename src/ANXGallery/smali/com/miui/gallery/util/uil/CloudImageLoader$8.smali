.class Lcom/miui/gallery/util/uil/CloudImageLoader$8;
.super Ljava/lang/Object;
.source "CloudImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/uil/CloudImageLoader;->directShowImage(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/uil/CloudImageLoader;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$8;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    iput-object p2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$8;->val$imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iput-object p3, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$8;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$8;->val$imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$8;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 517
    return-void
.end method

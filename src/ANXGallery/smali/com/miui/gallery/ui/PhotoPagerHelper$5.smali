.class Lcom/miui/gallery/ui/PhotoPagerHelper$5;
.super Ljava/lang/Object;
.source "PhotoPagerHelper.java"

# interfaces
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPagerHelper;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$5;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleChange(FFFFF)V
    .locals 1
    .param p1, "scaleFactorX"    # F
    .param p2, "scaleFactorY"    # F
    .param p3, "focusX"    # F
    .param p4, "focusY"    # F
    .param p5, "scale"    # F

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$5;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->access$200(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$5;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->access$200(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p5}, Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;->onScaleChanged(FFF)V

    .line 116
    :cond_0
    return-void
.end method

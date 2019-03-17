.class Lcom/miui/gallery/ui/PhotoPagerHelper$9;
.super Ljava/lang/Object;
.source "PhotoPagerHelper.java"

# interfaces
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;


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
    .line 147
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$9;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlphaChanged(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$9;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->access$500(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$9;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->access$500(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;->onAlphaChanged(F)V

    .line 153
    :cond_0
    return-void
.end method

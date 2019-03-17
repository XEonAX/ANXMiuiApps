.class Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment$1;
.super Ljava/lang/Object;
.source "ScreenshotNaviFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    const v1, 0x7f12001a

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 42
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 43
    const-string v1, "ScreenshotNaviFragment"

    const-string v2, "no attached id found for %s"

    invoke-static {v1, v2, p1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;->access$000(Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->effect:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-static {v2, v1}, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;->access$100(Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;Lcom/miui/gallery/editor/photo/core/Effect;)V

    goto :goto_0
.end method

.class Lcom/miui/gallery/ui/PhotoPageGifItem$5;
.super Ljava/lang/Object;
.source "PhotoPageGifItem.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageGifItem;->animEnter(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

.field final synthetic val$listener:Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageGifItem;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageGifItem;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$5;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$5;->val$listener:Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitEnd()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$5;->val$listener:Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;->onTransitEnd()V

    .line 404
    return-void
.end method

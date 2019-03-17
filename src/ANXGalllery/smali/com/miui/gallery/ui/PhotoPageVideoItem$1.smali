.class Lcom/miui/gallery/ui/PhotoPageVideoItem$1;
.super Ljava/lang/Object;
.source "PhotoPageVideoItem.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageVideoItem;->animEnter(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

.field final synthetic val$listener:Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageVideoItem;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageVideoItem;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$1;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$1;->val$listener:Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitEnd()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$1;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->access$200(Lcom/miui/gallery/ui/PhotoPageVideoItem;Z)V

    .line 211
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$1;->val$listener:Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;->onTransitEnd()V

    .line 212
    return-void
.end method

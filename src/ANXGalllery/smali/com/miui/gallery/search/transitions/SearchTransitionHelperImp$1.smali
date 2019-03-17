.class Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp$1;
.super Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;
.source "SearchTransitionHelperImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp$1;->this$0:Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;

    invoke-direct {p0}, Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp$1;->this$0:Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;

    iget-object v0, v0, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->mEnterTransitionListener:Lcom/miui/gallery/search/transitions/SearchTransitionHelper$SearchTransitionListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp$1;->this$0:Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;

    iget-object v0, v0, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->mEnterTransitionListener:Lcom/miui/gallery/search/transitions/SearchTransitionHelper$SearchTransitionListener;

    invoke-interface {v0}, Lcom/miui/gallery/search/transitions/SearchTransitionHelper$SearchTransitionListener;->onTransitionStart()V

    .line 40
    :cond_0
    return-void
.end method

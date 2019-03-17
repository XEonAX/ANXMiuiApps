.class Lcom/miui/gallery/widget/ScrollableViewDrawer$2$1;
.super Ljava/lang/Object;
.source "ScrollableViewDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/widget/ScrollableViewDrawer$2;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/widget/ScrollableViewDrawer$2;

.field final synthetic val$animEndListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;

.field final synthetic val$withAnimation:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/ScrollableViewDrawer$2;ZLcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/widget/ScrollableViewDrawer$2;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$2$1;->this$1:Lcom/miui/gallery/widget/ScrollableViewDrawer$2;

    iput-boolean p2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$2$1;->val$withAnimation:Z

    iput-object p3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$2$1;->val$animEndListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$2$1;->this$1:Lcom/miui/gallery/widget/ScrollableViewDrawer$2;

    iget-object v0, v0, Lcom/miui/gallery/widget/ScrollableViewDrawer$2;->this$0:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    iget-boolean v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$2$1;->val$withAnimation:Z

    iget-object v2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$2$1;->val$animEndListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->openDrawer(ZLcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;)V

    .line 506
    return-void
.end method

.class Lcom/miui/gallery/widget/PagerGridLayout$1;
.super Landroid/database/DataSetObserver;
.source "PagerGridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/PagerGridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/PagerGridLayout;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/PagerGridLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/PagerGridLayout;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/miui/gallery/widget/PagerGridLayout$1;->this$0:Lcom/miui/gallery/widget/PagerGridLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/widget/PagerGridLayout$1;->this$0:Lcom/miui/gallery/widget/PagerGridLayout;

    iget-object v1, p0, Lcom/miui/gallery/widget/PagerGridLayout$1;->this$0:Lcom/miui/gallery/widget/PagerGridLayout;

    invoke-static {v1}, Lcom/miui/gallery/widget/PagerGridLayout;->access$000(Lcom/miui/gallery/widget/PagerGridLayout;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/PagerGridLayout;->access$100(Lcom/miui/gallery/widget/PagerGridLayout;I)V

    .line 76
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.class Lmiui/widget/DynamicListView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView;->removeItems(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sr:Lmiui/widget/DynamicListView;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .locals 0

    .line 858
    iput-object p1, p0, Lmiui/widget/DynamicListView$9;->Sr:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 861
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 862
    iget-object p1, p0, Lmiui/widget/DynamicListView$9;->Sr:Lmiui/widget/DynamicListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 863
    iget-object p1, p0, Lmiui/widget/DynamicListView$9;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {p1}, Lmiui/widget/DynamicListView;->m(Lmiui/widget/DynamicListView;)Landroid/graphics/Paint;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 864
    return-void
.end method

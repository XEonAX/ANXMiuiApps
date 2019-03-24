.class Lmiui/widget/DynamicListView$11;
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

.field final synthetic Ss:Ljava/util/List;

.field final synthetic St:Ljava/util/List;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 916
    iput-object p1, p0, Lmiui/widget/DynamicListView$11;->Sr:Lmiui/widget/DynamicListView;

    iput-object p2, p0, Lmiui/widget/DynamicListView$11;->Ss:Ljava/util/List;

    iput-object p3, p0, Lmiui/widget/DynamicListView$11;->St:Ljava/util/List;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 919
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 920
    iget-object p1, p0, Lmiui/widget/DynamicListView$11;->Sr:Lmiui/widget/DynamicListView;

    iget-object v0, p0, Lmiui/widget/DynamicListView$11;->Ss:Ljava/util/List;

    iget-object v1, p0, Lmiui/widget/DynamicListView$11;->St:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V

    .line 921
    return-void
.end method

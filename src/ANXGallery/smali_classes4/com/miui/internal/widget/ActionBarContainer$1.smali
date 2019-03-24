.class Lcom/miui/internal/widget/ActionBarContainer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qn:Lcom/miui/internal/widget/ActionBarContainer;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarContainer;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer$1;->qn:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer$1;->qn:Lcom/miui/internal/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer$1;->qn:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->a(Lcom/miui/internal/widget/ActionBarContainer;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 88
    return-void
.end method

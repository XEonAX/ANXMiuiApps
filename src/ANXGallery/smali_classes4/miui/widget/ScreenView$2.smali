.class Lmiui/widget/ScreenView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/ScreenView;->fB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Zv:Lmiui/widget/ScreenView;


# direct methods
.method constructor <init>(Lmiui/widget/ScreenView;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lmiui/widget/ScreenView$2;->Zv:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 598
    iget-object p1, p0, Lmiui/widget/ScreenView$2;->Zv:Lmiui/widget/ScreenView;

    invoke-static {p1}, Lmiui/widget/ScreenView;->b(Lmiui/widget/ScreenView;)Lmiui/widget/ScreenView$SlideBar;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmiui/widget/ScreenView$SlideBar;->setVisibility(I)V

    .line 599
    return-void
.end method

.class Lcom/miui/internal/widget/ActionBarView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sE:Lcom/miui/internal/widget/ActionBarView;

.field final synthetic sF:Lcom/miui/internal/app/ActionBarDelegateImpl;

.field final synthetic sG:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarView;Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/View;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView$5;->sE:Lcom/miui/internal/widget/ActionBarView;

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarView$5;->sF:Lcom/miui/internal/app/ActionBarDelegateImpl;

    iput-object p3, p0, Lcom/miui/internal/widget/ActionBarView$5;->sG:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 292
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$5;->sF:Lcom/miui/internal/app/ActionBarDelegateImpl;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$5;->sG:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$5;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1, v0, v1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 293
    return-void
.end method

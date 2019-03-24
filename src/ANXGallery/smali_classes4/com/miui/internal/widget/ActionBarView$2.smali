.class Lcom/miui/internal/widget/ActionBarView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sE:Lcom/miui/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView$2;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$2;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->b(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sH:Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 158
    :cond_0
    return-void
.end method

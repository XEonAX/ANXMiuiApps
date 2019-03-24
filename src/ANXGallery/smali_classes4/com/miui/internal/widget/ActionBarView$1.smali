.class Lcom/miui/internal/widget/ActionBarView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 138
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView$1;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 141
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$1;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->a(Lcom/miui/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$1;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->a(Lcom/miui/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;

    move-result-object p1

    invoke-interface {p1, p3, p4, p5}, Landroid/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    .line 144
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 148
    return-void
.end method

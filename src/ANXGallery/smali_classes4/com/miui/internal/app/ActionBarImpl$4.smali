.class Lcom/miui/internal/app/ActionBarImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/ActionBarImpl;->createSearchActionModeView()Lcom/miui/internal/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bD:Lcom/miui/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarImpl;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$4;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 880
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$4;->bD:Lcom/miui/internal/app/ActionBarImpl;

    iget-object p1, p1, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_0

    .line 881
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$4;->bD:Lcom/miui/internal/app/ActionBarImpl;

    iget-object p1, p1, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 883
    :cond_0
    return-void
.end method

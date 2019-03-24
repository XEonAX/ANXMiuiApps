.class Lcom/miui/internal/widget/EditableListViewDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/EditableListViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tX:Lcom/miui/internal/widget/EditableListViewDelegate;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$2;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$2;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object p1

    .line 87
    if-eqz p1, :cond_0

    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setTranslationX(F)V

    .line 91
    :cond_0
    return-void
.end method

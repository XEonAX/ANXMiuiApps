.class Lcom/miui/internal/widget/EditableListViewDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;


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

    .line 72
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$1;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateCheckStatus(Landroid/view/ActionMode;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$1;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->updateCheckStatus(Landroid/view/ActionMode;)V

    .line 80
    return-void
.end method

.method public updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$1;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/widget/EditableListViewDelegate;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    .line 76
    return-void
.end method

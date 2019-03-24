.class Lmiui/widget/EditableListViewWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/EditableListViewWrapper;-><init>(Landroid/widget/AbsListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ta:Lmiui/widget/EditableListViewWrapper;


# direct methods
.method constructor <init>(Lmiui/widget/EditableListViewWrapper;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lmiui/widget/EditableListViewWrapper$1;->Ta:Lmiui/widget/EditableListViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateCheckStatus(Landroid/view/ActionMode;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lmiui/widget/EditableListViewWrapper$1;->Ta:Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {v0, p1}, Lmiui/widget/EditableListViewWrapper;->updateCheckStatus(Landroid/view/ActionMode;)V

    .line 68
    return-void
.end method

.method public updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .locals 1

    .line 62
    iget-object v0, p0, Lmiui/widget/EditableListViewWrapper$1;->Ta:Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/widget/EditableListViewWrapper;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    .line 63
    return-void
.end method

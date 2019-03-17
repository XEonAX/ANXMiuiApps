.class Lcom/miui/gallery/cleaner/ScanResultAdapter$HeaderHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ScanResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/ScanResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cleaner/ScanResultAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cleaner/ScanResultAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cleaner/ScanResultAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$HeaderHolder;->this$0:Lcom/miui/gallery/cleaner/ScanResultAdapter;

    .line 136
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 137
    return-void
.end method

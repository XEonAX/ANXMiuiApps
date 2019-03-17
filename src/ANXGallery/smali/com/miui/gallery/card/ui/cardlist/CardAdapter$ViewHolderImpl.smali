.class Lcom/miui/gallery/card/ui/cardlist/CardAdapter$ViewHolderImpl;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/cardlist/CardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/cardlist/CardAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/ui/cardlist/CardAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$ViewHolderImpl;->this$0:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    .line 168
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 169
    return-void
.end method

.class Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder$1;
.super Lcom/miui/gallery/widget/AntiDoubleClickListener;
.source "CardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder$1;->this$1:Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;

    invoke-direct {p0}, Lcom/miui/gallery/widget/AntiDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAntiDoubleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 186
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder$1;->this$1:Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->access$000(Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x7f1200f7
        :pswitch_0
    .end packed-switch
.end method

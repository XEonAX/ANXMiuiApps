.class Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;
.super Ljava/lang/Object;
.source "ShareUserAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/ShareUserAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public final mIcon:Landroid/widget/ImageView;

.field public final mIconEffect:Landroid/widget/ImageView;

.field public final mMark:Landroid/widget/ImageView;

.field public final mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/gallery/share/ShareUserAdapterBase;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/share/ShareUserAdapterBase;Lcom/miui/gallery/share/CloudUserCacheEntry;Landroid/view/View;)V
    .locals 3
    .param p1, "this$0"    # Lcom/miui/gallery/share/ShareUserAdapterBase;
    .param p2, "entry"    # Lcom/miui/gallery/share/CloudUserCacheEntry;
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;->this$0:Lcom/miui/gallery/share/ShareUserAdapterBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const v1, 0x7f1200d8

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 87
    iget-object v1, p0, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 88
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, p2, v0}, Lcom/miui/gallery/share/ShareUserAdapterBase;->setIconSize(Lcom/miui/gallery/share/CloudUserCacheEntry;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    const v1, 0x7f1200d9

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;->mMark:Landroid/widget/ImageView;

    .line 91
    const v1, 0x7f12002b

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;->mText:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f1200da

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;->mIconEffect:Landroid/widget/ImageView;

    .line 93
    return-void
.end method

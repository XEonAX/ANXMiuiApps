.class Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;
.super Ljava/lang/Object;
.source "ImmersionMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextHolder"
.end annotation


# instance fields
.field iconView:Landroid/widget/ImageView;

.field informationText:Landroid/widget/TextView;

.field redDotView:Landroid/view/View;

.field summaryText:Landroid/widget/TextView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->this$0:Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

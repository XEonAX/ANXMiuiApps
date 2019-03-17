.class Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$1;
.super Ljava/lang/Object;
.source "TextMenuFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v2, 0x1

    .line 57
    const v0, 0x7f1202be

    if-ne p2, v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->access$000(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const v0, 0x7f1202bf

    if-ne p2, v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->access$000(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

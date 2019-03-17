.class Lcom/miui/gallery/adapter/PeoplePageAdapter$1;
.super Ljava/lang/Object;
.source "PeoplePageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/adapter/PeoplePageAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/adapter/PeoplePageAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/adapter/PeoplePageAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/adapter/PeoplePageAdapter;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/miui/gallery/adapter/PeoplePageAdapter$1;->this$0:Lcom/miui/gallery/adapter/PeoplePageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/miui/gallery/adapter/PeoplePageAdapter$1;->this$0:Lcom/miui/gallery/adapter/PeoplePageAdapter;

    iget-object v0, v0, Lcom/miui/gallery/adapter/PeoplePageAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gallery/adapter/PeoplePageAdapter$1;->this$0:Lcom/miui/gallery/adapter/PeoplePageAdapter;

    iget-object v1, v1, Lcom/miui/gallery/adapter/PeoplePageAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c024c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeTextLong(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method
